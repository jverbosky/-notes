Passing values through views and routes
____________________________

# get_name.erb

What is your name?

<form action = "post_name" method = "post">
  <input type = "text" name = "user_name">
  <input type = "submit">
</form>

/ tweak for text editor (using Ruby formatting)
____________________________

# get_location.erb

<%= name %>, what is your location?

<form action = "post_location" method = "post">
  <input type = "text" name = "user_location">
  <!-- trick to getting the name using hidden field on input -->
  <input type = "text" name = "user_name_again" value = <%= name %> hidden>
  <input type = "submit">
</form>

/ tweak for text editor (using Ruby formatting)
____________________________

# app_locals.rb

#########################################################################################
# Demo of passing collected post data from one route (ex: /post_name) to another (ex: /post_location)
#########################################################################################
#                                       Overview                                        #
#########################################################################################
# Path for value:
#  get route > view (collect value) > post route (pass value) > view (pass value) > post route
#########################################################################################
# 1) A "get" route uses a view (webpage #1) with a post form to collect a value from a user
# 2) The value is collected in a "post" route and assigned to a local variable
# 3) The local variable is passed to another view (webpage #2) via a view variable
# 4) In the target view (webpage #2), another post form is used to pass the value along
# 5) A different "post" route is then able to access the value collected in step 1
#########################################################################################
#                                        Details                                        #
#########################################################################################
# 1) First, collect a value from a get route (ex: get '/'' do) with
#    a view form (ex: get_name.erb) that uses the post method:
#
#      <form action = "post_name" method = "post">
#        <input type = "text" name = "some_variable">
#        <input type = "submit">
#      </form>
#########################################################################################
# 2) Take the collected value (ex: user_name) and assign it to a
#    local variable in a post route (ex: post '/post_name' do):
#
#      local_variable = params[:some_variable]
#########################################################################################
# 3) In the same post route (ex: post '/post_name' do), pass the
#    local variable (ex: backend_name) to a view variable (ex: name)
#    that will be called in the target view (ex: get_location):
#
#      erb :target_view, :locals => {:view_variable => local_variable}
#
#    Note that this assignment (view_variable = local_variable) is done using hash syntax:
#
#      some_hash = {key => value}
#
#    In the event that there are multiple variables to pass, comma separate each pair:
#
#      some_hash = {key1 => value1, key2 => value2, key3 => value3}
#########################################################################################
# 4) In the target view (ex: get_location), use another view form (ex: get_location.erb)
#    that uses the post method and include an input type with a value of "<%= view_variable %>"
#    and make it hidden (last parameter - might need to make this the type if doesn't work)
#    to pass the view_variable value to the next post route (ex: post '/post_location' do):
#
#      <form action = "post_location" method = "post">
#        <input type = "text" name = "some_other_variable">
#        <input type = "text" name = "some_variable_again" value = <%= view_variable %> hidden>
#        <input type = "submit">
#      </form>
#
#    Note that in this example, form collects *another* value (some_other_variable) in addition
#    to passing the first value collected in the earlier view (ex: get_name.erb)
#
#    Also note that view_variable is accessible in this view - can access it's value directly
#    by calling it (ex: line 1 of get_location.erb):
#
#      The value of local_variable is: <%= view_variable %>
#########################################################################################
# 5) In the next post route (ex: post '/post_location' do), can now access the value using the same
#    statement used in the earlier post route (ex: post '/post_name' do):
#
#      local_variable = params[:some_variable]
#
#    At this point, we could continue passing it to another view or we can simply output
#    the value (ex: post '/post_name' do) using string interpolation:
#
#      "The first value (some_value/local_variable) collected is #{local_variable}."
#
#    Note that the local variable name is not required to use the same name as in the earlier
#    route - using something else will work fine, as there is no relationship with the
#    local variable in the earlier route:
#
#      original_value = params[:some_variable]
#      "The first value collected is #{original_value}."
#########################################################################################

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get '/' do
  erb :get_name
end

post '/post_name' do
  # assign the collected post data from get_name view to local variable (backend_name)
  backend_name = params[:user_name]
  # local variable (backend_name) is passed to get_location view
  # the ":name" variable is what is called in the get_location view (as "name")
  # - in the view, "name" can be called to show it's value (line 1 in get_location view)
  # - to pass the value of "name" from get_location view to /post_location route, use hidden post (line 6 in get_location view)
  erb :get_location, :locals => {:name => backend_name}
end

post '/post_location' do
  # need to call passed local variable to access value in this route
  # variable doesn't have to be the same as what is used in the "passing" route
  backend_name_2 = params[:user_name_again]
  backend_location = params[:user_location]
  # just make sure to use the same variable names consistently in the route
  "Your name is #{backend_name_2} and your location is #{backend_location}."  # now able to access passed value
end

# For ease of implementation:
#
# 1) In get_name.erb, change "post_name" (line 3) and "user_name" (line 4) to "name"
# 2) In get_location.erb, change "post_location" (line 3) and "user_location" (line 4) to "location"
# 3) In get_location.erb, change "user_name_again" to "name" (line 6)
# 4) Replace the previous post routes with these:
#
# post '/name' do
#   name = params[:name]
#   erb :get_location, :locals => {:name => name}
# end

# post '/location' do
#   name = params[:name]
#   location = params[:location]
#   "Your name is #{name} and your location is #{location}."
# end
____________________________

# app_sessions.rb

#########################################################################################
# Demo of passing collected post data from one route (ex: /post_name) to another (ex: /post_location)
# - using sessions
#########################################################################################
#                                       Overview                                        #
#########################################################################################
# Path for value:
#  get route > view (collect value) > post route (pass value) > view (pass value) > post route
#########################################################################################
# 1) A "get" route uses a view (webpage #1) with a post form to collect a value from a user
# 2) The value is collected in a "post" route and assigned to a session variable (in a session)
# 3) The session is passed to another view (webpage #2) via a view variable
# 4) In the target view (webpage #2), another post form is used to pass the value along
# 5) A different "post" route is able to directly access the value collected in step 1 via the session
#########################################################################################
#                                        Details                                        #
#########################################################################################
# 0) To use sessions, add the following statement after require statements and before routes:
#
#      enable :sessions
#########################################################################################
# 1) First, collect a value from a get route (ex: get '/' do) with
#    a view form (ex: get_name.erb) that uses the post method:
#
#      <form action = "post_name" method = "post">
#        <input type = "text" name = "some_variable">
#        <input type = "submit">
#      </form>
#########################################################################################
# 2) Take the collected value (ex: user_name) and assign it to a session's
#    session variable in a post route (ex: post '/post_name' do):
#
#      session[:session_variable] = params[:some_variable]
#########################################################################################
# 3) In the same post route (ex: post '/post_name' do), pass the
#    session (ex: session[:backend_name]) to a view variable (ex: name)
#    that will be called in the target view (ex: get_location):
#
#      erb :target_view, :locals => {:view_variable => session[:session_variable]}
#
#    Note that this assignment (view_variable = session) is done using hash syntax:
#
#      some_hash = {key => value}
#
#    In the event that there are multiple variables to pass, comma separate each pair:
#
#      some_hash = {key1 => value1, key2 => value2, key3 => value3}
#########################################################################################
# 4) In the target view (ex: get_location), use another view form (ex: get_location.erb)
#    that uses the post method and include an input type with a value of "<%= view_variable %>"
#    and make it hidden (last parameter - might need to make this the type if doesn't work)
#    to pass the view_variable value to the next post route (ex: post '/post_location' do):
#
#      <form action = "post_location" method = "post">
#        <input type = "text" name = "some_other_variable">
#        <input type = "text" name = "some_variable" value = <%= view_variable %> hidden>
#        <input type = "submit">
#      </form>
#
#    Note that in this example, form collects *another* value (some_other_variable) in addition
#    to passing the first value collected in the earlier view (ex: get_name.erb)
#
#    Also note that view_variable is accessible in this view - can access it's value directly
#    by calling it (ex: line 1 of get_location.erb):
#
#      The value of session[:session_variable] is: <%= view_variable %>
#########################################################################################
# 5) In the next post route (ex: post '/post_location' do), can now access the value directly
#    via "session[:session_variable]" - without another "variable = params[:n]" statement
#
#    At this point, we could continue passing it to another view or we can simply output
#    the value (ex: post '/post_name' do) using string interpolation:
#
#      "The first value (some_value/session_variable) collected is #{session[:session_variable]}."
#########################################################################################

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

enable :sessions  # required for session variables to pass, has a limit

get "/" do
  erb :get_name
end

post '/post_name' do
  # assign the collected post data from get_name view to a session variable (backend_name)
  session[:backend_name] = params[:user_name]
  # session variable (backend_name) is passed to get_location view
  # the ":name" variable is what is called in the get_location view (as "name")
  # - in the view, "name" can be called to show it's value (line 1 in get_location view)
  # - to pass the value of "name" from get_location view to /post_location route, use hidden post (line 6 in get_location view)
  erb :get_location, :locals => {:name => session[:backend_name]}  # name is passed to /get_location
end

post '/post_location' do
  # no longer need to use a "backend_name = params[:user_name_again]" statement thanks to session
  backend_location = params[:user_location]
  # now able to access passed value via session
  "Your name is #{session[:backend_name]} and your location is #{backend_location}."
end

# For ease of implementation:
#
# 1) In get_name.erb, change "post_name" (line 3) and "user_name" (line 4) to "name"
# 2) In get_location.erb, change "post_location" (line 3) and "user_location" (line 4) to "location"
# 3) In get_location.erb, change "user_name_again" to "name" (line 6)
# 4) Replace the previous post routes with these:
#
# post '/name' do
#   session[:name] = params[:name]
#   erb :get_location, :locals => {:name => session[:name]}
# end

# post '/location' do
#   location = params[:location]
#   "Your name is #{session[:name]} and your location is #{location}."
# end
____________________________

# app_redirects.rb

#########################################################################################
# Demo of passing collected post data from one route (ex: /post_name) to another (ex: /post_location)
# - using sessions
#########################################################################################
#                                       Overview                                        #
#########################################################################################
# Path for value:
#  get route > view (collect value) > post route (redirect value) > get route (pass value) > view (pass value) > post route
#########################################################################################
# 1) A "get" route uses a view (webpage #1) with a post form to collect a value from a user
# 2) The value is collected in a "post" route and assigned to a local variable
# 3) The local variable is passed via a redirect statment
# 4) A different "get" route retrieves the value from the redirect URL and assigns it to a local variable
# 5) The local variable is passed to another view (webpage #2) via a view variable
# 6) In the target view (webpage #2), another post form is used to pass the value along
# 7) A different "post" route is then able to access the value collected in step 1
#########################################################################################
#                                        Details                                        #
#########################################################################################
# 1) First, collect a value from a get route (ex: get "/" do) with
#    a view form (ex: get_name.erb) that uses the post method:
#
#      <form action = "post_name" method = "post">
#        <input type = "text" name = "some_variable">
#        <input type = "submit">
#      </form>
#########################################################################################
# 2) Take the collected value (ex: user_name) and assign it to a
#    local variable in a post route (ex: post '/post_name' do):
#
#      local_variable = params[:some_variable]
#########################################################################################
# 3) In the same post route (ex: post '/post_name' do), pass the
#    local variable (ex: backend_name) to a redirect statement consisting
#    of a pathname (ex: /location), a question mark (?) and the view variable (ex: name):
#
#      redirect "/path?view_variable=" + local_variable
#
#    Note that, to keep names to a minimum, the pathname can use the same name as the subsequent
#    post route (ex: get 'post location' do ~ post '/post_location' do) in step 7, but
#    this is not required - for clarification, this example uses different names.
#########################################################################################
# 4) Use another get route (ex: get '/location' do) to load the specified view (ex: get_location)
#    and note that the resulting URL includes the redirect path and value specified in the
#    previous post route (ex: post '/post_name' do):
#
#      http://localhost:4567/path?view_variable=value
#
#    This value is then retrieved via params[:view_variable] and assigned to another local variable:
#
#      local_variable_2 = params[:view_variable]
#
#    Note that the local variable name is not required to use the same name as in the earlier
#    post route - using something else will work fine, as there is no relationship with the
#    local variable in the earlier route.
#########################################################################################
# 5) In the same get route (ex: get '/location' do), pass the
#    local variable (ex: backend_name_2) to the view variable (ex: name)
#    that will be called in the target view (ex: get_location):
#
#      erb :target_view, :locals => {:view_variable => local_variable_2}
#
#    Note that this assignment (view_variable = local_variable) is done using hash syntax:
#
#      some_hash = {key => value}
#
#    In the event that there are multiple variables to pass, comma separate each pair:
#
#      some_hash = {key1 => value1, key2 => value2, key3 => value3}
#########################################################################################
# 6) In the target view (ex: get_location), use another view form (ex: get_location.erb)
#    that uses the post method and include an input type with a value of "<%= view_variable %>"
#    and make it hidden (last parameter - might need to make this the type if doesn't work)
#    to pass the view_variable value to the next post route (ex: post /post_location do):
#
#      <form action = "post_location" method = "post">
#        <input type = "text" name = "some_other_variable">
#        <input type = "text" name = "some_variable_again" value = <%= view_variable %> hidden>
#        <input type = "submit">
#      </form>
#
#    Note that in this example, form collects *another* value (some_other_variable) in addition
#    to passing the first value collected in the earlier view (ex: get_name.erb)
#
#    Also note that view_variable is accessible in this view - can access it's value directly
#    by calling it (ex: line 1 of get_location.erb):
#
#      The value of local_variable_2 is: <%= view_variable %>
#########################################################################################
# 7) In the next post route (ex: post '/post_location' do), can now access the value using the same
#    statement used in the previous get route (ex: get '/location' do):
#
#      local_variable_3 = params[:some_variable]
#
#    As before, note that the local variable name can be unique or the same as in previous routes.
#
#    At this point, we could continue passing it to another view or we can simply output
#    the value (ex: post '/post_name' do) using string interpolation:
#
#      "The first value (some_value/local_variable) collected is #{local_variable_3}."
#########################################################################################

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get '/' do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]
  # have to redirect to a get, won't work for post
  # ex URL:  http://localhost:4567/location?name=John
  redirect "/location?name=" + backend_name
end

get '/location' do  # name must match the name used in the redirect (before the "?")
  # need to call passed local variable to access value in this route
  # variable doesn't have to be the same as what is used in the "passing" route
  backend_name_2 = params[:name]
  # just make sure to use the same variable names consistently in the route
  erb :get_location, :locals => {:name => backend_name_2}
end

post '/post_location' do
  # need to call passed local variable to access value in this route
  # variable doesn't have to be the same as what is used in the "passing" route
  backend_name_3 = params[:user_name_again]
  backend_location = params[:user_location]
  # just make sure to use the same variable names consistently in the route
  "Your name is #{backend_name_3} and your location is #{backend_location}."
end

# For ease of implementation:
#
# 1) In get_name.erb, change "post_name" (line 3) and "user_name" (line 4) to "name"
# 2) In get_location.erb, change "post_location" (line 3) and "user_location" (line 4) to "location"
# 3) In get_location.erb, change "user_name_again" to "name" (line 6)
# 4) Replace the previous post routes (and second get route) with these:
#
# post '/name' do
#   name = params[:name]
#   redirect "/location?name=" + name
# end

# get '/location' do
#   name = params[:name]
#   erb :get_location, :locals => {:name => name}
# end

# post '/location' do
#   name = params[:name]
#   location = params[:location]
#   "Your name is #{name} and your location is #{location}."
# end
____________________________
____________________________
____________________________

Passing multiple values using a redirect
____________________________
____________________________
____________________________

# get_name.rb

What is your name?

<form action = "post_name" method = "post">
  <input type = "text" name = "user_name">
  <input type = "submit">
</form>

/ tweak for text editor (using Ruby formatting)
____________________________

# get_age_redirects.rb

<%= name %>, what is your age?

<form action = "post_age" method = "post">
  <!-- trick to getting both the age and name in the redirect = use a hash -->
  <input type = "text" name = "user[user_age]">
  <!-- trick to getting the name using hidden field on input -->
  <input type = "text" name = "user[user_name]" value = <%= name %> hidden>
  <input type = "submit">
</form>

/ tweak for text editor (using Ruby formatting)
____________________________

# get_numbers.rb

OK, <%= name %>, I see you are <%= age %> years old. What are your favorite numbers?

<form action = "post_numbers" method = "post">
  <input type = "text" name = "num_1">
  <input type = "text" name = "num_2">
  <input type = "text" name = "num_3">
  <!-- trick to getting the name using hidden field on input -->
  <input type = "text" name = "user_name" value = <%= name %> hidden>
  <input type = "text" name = "user_age" value = <%= age %> hidden>
  <input type = "submit">
</form>

/ tweak for text editor (using Ruby formatting)
____________________________

# app_redirects.rb

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get "/" do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]
  redirect "/age?name=" + backend_name
end

get '/age' do
  backend_name = params[:name]  # John
  erb :get_age_redirects, :locals => {:name => backend_name}  # name is passed to /get_location
end

post '/post_age' do
  user_hash = params[:user]
  redirect "/numbers?user=" + user_hash.to_s  # convert hash to string for use in URL
  # "#{user_hash}"  # {"user_age"=>"41", "user_name"=>"John"}
  # "#{user_hash["user_name"]}, your age is #{user_hash["user_age"]}."  # John, your age is 41.
end

get '/numbers' do
  user_hash = eval(params[:user])  # use eval to convert string to hash
  backend_name = user_hash["user_name"]  # get user_name from hash
  backend_age = user_hash["user_age"]  # get user_age from hash
  # "#{backend_name}, #{backend_age}"  # John, 41
  erb :get_numbers, :locals => {:name => backend_name, :age => backend_age}
end

post '/post_numbers' do
  backend_name = params[:user_name]
  backend_age = params[:user_age]
  one = params[:num_1]
  two = params[:num_2]
  three = params[:num_3]
  sum = one.to_i + two.to_i + three.to_i
  compare = (sum < backend_age.to_i) ? "less" : "greater"
  "#{backend_name}, your age is #{backend_age}.<br>
   Your favorite numbers are #{one}, #{two} and #{three}.<br>
   The sum of your favorite numbers is #{sum}, which is #{compare} than your age."
end
____________________________
____________________________
____________________________

Alternate hash syntax (symbols)
____________________________
____________________________
____________________________

require 'sinatra'
require 'sinatra/reloader' if development?  # automatically reload app.rb on save via sinatra-contrib gem

get "/" do
  erb :get_name
end

post '/post_name' do
  backend_name = params[:user_name]
  erb :get_age, locals: {name: backend_name}  # alternate syntax
end

post '/post_age' do
  backend_age = params[:user_age]
  backend_name = params[:user_name]
  erb :get_numbers, locals: {name: backend_name, age: backend_age}  # alternate syntax
end

post '/post_numbers' do
  backend_name = params[:user_name]
  backend_age = params[:user_age]
  one = params[:num_1]
  two = params[:num_2]
  three = params[:num_3]
  sum = one.to_i + two.to_i + three.to_i
  compare = (sum < backend_age.to_i) ? "less" : "greater"
  "#{backend_name}, your age is #{backend_age}.<br>
   Your favorite numbers are #{one}, #{two} and #{three}.<br>
   The sum of your favorite numbers is #{sum}, which is #{compare} than your age."
end
____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________