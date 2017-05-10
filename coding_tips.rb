# MVP == Minimum Viable Product
#
# Always focus on the absolute bare-bones for a method first
# Save additional functionality for later
___________________________________________________________

# A reminder to Keep It Simple Stupid
#
# We were instructed to write an addition program that would accept any number of arguments.
#
# For example:
  add_numbers(1, 3, 5, 7, 9)
#
# Same idea for subtraction, multiplication and division...
#
# So I run with this (and the splat operator) and get things working with lots of
# extra code to account for 0 or 1 arguments being given and some other technicalities
# of only having 1 argument.
#
# For example:
#
  def add(*number)
    ....................
  end
#
# The next class, I look at my friend's code and see his division function starts:
#
  def division(num1, num2, *nums)
    ...
  end
#
# When I ask him why, he says "No one is going to divide with less than two numbers..."
#
# Needless to say, his code was much more straightforward as there was less to account for.
#
# A good reminder to occassionally (or frequently) take a step back and think about why you
# are trying to solve an issue - is it something that truly needs solved or is it simply a
# workaround for a more fundamental issue with the basic logic or approach that is being used?
___________________________________________________________

# A basic (and common) pattern for working with an array
#
# 1) Define function & arguments (parameters)
# 2) Define placeholder (bucket) variables
# 3) Use a loop to iterate through the array
# 4) Inside the loop, create conditions to test (if/elsif/else)
# 5) While testing conditions, change the value of (or add things to) the placeholder(s)
# 6) After looping (iterating) through the array, test the placeholder value(s) - return true/false

def function(number_argument, array_argument)

  # Define variables outside of the loop so that they're available in the loop
  # If defined in the loop, you can't access them outside of the loop (scoping issue)
  if_placeholder = 0
  else_placeholder = 0
  if_placeholder_array = []
  else_placeholder_array = []
  counter = 1

  # Loop through the array (.each/do, for, while, etc.)
  array_argument.each do |item|
    if # conditions match what you put here
       if_placeholder += 1  # increment the placeholder for a later test
       if_placeholder_array.push("item")  # add something to the array to use later
    else # the conditions don't match what you put in the if statement
       else_placeholder += 1  # increment the other placeholder for a later test
       else_placeholder_array.push("item")  # add something to the array to use later
    end
    # Most common mistake is to put the increment inside the else statement
    # Note that sometimes you will (such as the loop iteration example below), but typically not
    counter +=1
  end

  # Use a conditional statement (if/elsif/else) to check/test/list/use placeholder(s)
  # For example, check the if_placeholder to see if it's been incremented during the loop iterations
  if if_placeholder > 0
    return true # And be sure to return something if true
  else
    return false # Returning something if false may be optional and is not required by Ruby
  end

end
___________________________________________________________

# Use puts/print statements and string interpolation to clarify the values of variables
# This is especially useful in loops!
#
# For example:

def winning_number(number, lottery)

  winner = 0 # variable to keep track of matches between the number and the pool of lottery numbers
  loser = 0  # variable to keep track of non-winning numbers
  count = 1  # variable to keep track of loop iterations for output readability

  lottery.each do |ticket|
    if ticket == number
      winner += 1
      puts "Iteration #{count}"
      puts "number: #{number}"
      puts "ticket: #{ticket}"
      puts "winner: #{winner}"
      puts "\n"
      count += 1
    else
      loser += 1
      puts "Iteration #{count}"
      puts "number: #{number}"
      puts "ticket: #{ticket}"
      puts "loser: #{loser}"
      puts "\n"
      count += 1
    end
  end
end

print winning_number(31, [19, 27, 31, 43, 52])

# Console output
# Lists the value of variables for each iteration (pass) through the loop

Iteration 1
number: 31
ticket: 19
loser: 1

Iteration 2
number: 31
ticket: 27
loser: 2

Iteration 3
number: 31
ticket: 31
winner: 1

Iteration 4
number: 31
ticket: 43
loser: 3

Iteration 5
number: 31
ticket: 52
loser: 4
___________________________________________________________

# Commands for installing gems
# - minitest for testing
# - sinatra for using the Sinatra framework
# - must have Ruby installed, then run from Powershell/terminal

gem install minitest  # minitest-5.10.1.gem
gem install sinatra  # rack-1.6.5.gem, tilt-2.0.6.gem, rack-protection-1.5.3.gem & sinatra-1.4.8.gem

# Other useful gem commands

gem list --local  # should list minitest (5.10.1), may also list 4.3.2
gem cleanup  # should remove minitest 4.3.2
             # doesn't do anything on Mac, but minitest still works
gem list --local  # should now only list minitest (5.10.1), unless Mac
___________________________________________________________

# Sinatra::Reloader
# Use to avoid restarting the sinatra server after every app.rb change

gem install sinatra-contrib  # backports-3.6.8.gem, rack-test-0.6.3.gem, multi_json-1.12.1.gem, sinatra-contrib-1.4.7.gem

# Then in app.rb

require 'sinatra'
require 'sinatra/reloader' if development?
___________________________________________________________

# Working with JSON files

gem install json  # allows JSON files to be read/parsed, typically already installed with Ruby (check gem list --local)
gem install jsonlint  # checks JSON files for correct syntax and no silly mistakes
___________________________________________________________

# Setting up ri for accessing Ruby documentation from terminal

gem install rdoc-data
rdoc-data --install

# For Windows, two items need configured:
# 1) Make sure that the Ruby binary directory (C:\Ruby23\bin) is in the PATH environment variable
# 2) Since PowerShell has a built-in "ri" command, need to rename ri.cmd (ex: rb-ri.cmd)
#
# From there, can lookup Ruby commands like this:
# - Windows:  rb-ri Array.map
# - Mac/Linux:   ri Array.map
#
# For long output (such as "ri String"):
# - Windows: use the scrollbar to move through documentation
# - Mac/Linux: use the Page Up/Down and arrow keys to move through documentation, "q" to exit ri
___________________________________________________________

# Basic template for code tests
#
# Write code to test and make sure your code does what you say it does

# Include minitest gem
# http://ruby-doc.org/stdlib-2.0.0/libdoc/minitest/rdoc/MiniTest.html
require "minitest/autorun"

# Specify file name for code to test
# Be sure to keep the test file and production file together in the same directory
require_relative "function_to_test.rb"

# Class to create a new instance for the test
# Be sure to use "camel case" for the class name
class TestYourFunctionNameHere < Minitest::Test
  # Next define your first test
  # Note that the method name *must* begin with "test"
  def test_1_some_condition_or_output_to_verify
    results = function_to_test(argument)
    assert_equal(value, results)
  end
  # Be sure each method name is unique
  def test_2_some_other_condition_or_output_to_verify
    results = function_to_test(argument)
    assert_equal(value, results)
  end
  # Continue to test the function(s)
  # Create a test against anything that you might think will break it
end
___________________________________________________________

# Every test *needs* to have an assert statement, or it is of no value
___________________________________________________________

# Writing multiple assertions in a single test is generally to be avoided
___________________________________________________________

# First line of *every* test that Amanda writes begins with:
# results = "something"
# For example:

def test_1_function_returns_array
  results = create_array() # results to test against
  assert_equal(value,results)
end
___________________________________________________________

# When testing:
# - The first thing that we pass in is what we are expecting (value)
# - The second thing is what we are running (results)
___________________________________________________________

# Beware of false positives - always write the code for the test, not the test for the code
#
# For example:
# This test passes but was actually false positive...
# The output of the multi-dimensional array only contains 2 pairs (4 names)
# Last name got dropped due to .each do / if loop not having an else condition

  def test_random_pair_has_2_with_5_names
    pairs = random_pair(["josh","john","susan","bob","steve"])
    assert_equal(2, pairs.count)
  end
___________________________________________________________

# Always run the test before you write the code
# It should fail at that point
# If you *don't* get a failure at this point, that should tell you something isn't right
___________________________________________________________

# When developing a test, consider that you may not be able to see the output of a function
# With that in mind...
# When writing a test, consider what would you need to see (test) to make sure
# that the function is working as you expect
___________________________________________________________

# To force minitest to use a specific seed value (such as when one fails),
# use the --seed option when running via terminal:

ruby test_phonebook_ops.rb --seed 6666
___________________________________________________________

# It's always good to begin a function name with a verb, since it's doing something
# And try to avoid using the same name for each variable and function
# Helps you know what you are referring to, since it avoids ambiguity
# For example, don't do this:

def something()  # function name is "something"
  something = [] # so is the variable name for the array = very ambiguous
end
___________________________________________________________

# At the end of the function use:  return "something"
# For example:

def create_array()
  something = []
  100.times do
    something.push("words")
  end
  return something # don't forget to return the result
end

# Using the word "return" before "something" isn't required,
# but does help clarify what is being returned
___________________________________________________________

# A very common mistake is to increment within the else statement
# For example:

def create_array()
  something = []
  number = 1
  100.times do
    if number % 3 == 0
      something << "Mined"
    else
      something << number
      #number += 1 # wrong place
    end
    number += 1 # right place
  end
  return something
end
___________________________________________________________

# Use ? after function name to indicate that it returns a boolean value (true/false)
# It's strictly a method naming condition - there is no enforcement of returning a boolean value

def winning_number_include?(my_ticket, winning_tickets)
  # At the same time, be aware that some methods require the ? as part of their names
  # and will throw an error if it is not included (like .include?)
  winning_tickets.include?(my_ticket)
end
___________________________________________________________

# Method tips

.length  # use with strings
.count  # use with arrays, iterates through all items in the array to produce result
.size  # use with arrays, doesn't iterate - most efficient

# Create arrays (flat & multi-dimensional)
names = ["Larry", "Curly", "Moe", "Bob", "Carol"]
multi = [[1,2,3],[4,5,6],[7,8,9]]

# Return array elements
names[0]
multi[0][0]

names.first
multi.first
multi.first.first

# Array methods
# Adding an item to the end of an array
names.push("Snoopy")

# List the number of array items
names.count

# List all of the available methods for the object
names.methods

# List the object type
names.class

# Insert an element into the array at the specified index
names.insert(3, "Josh")

# Remove an element from the array at the specified index
names.delete_at(0)

# Replace an array element with the specified value
names[2] = "Amanda"
___________________________________________________________

# Remember some methods (*.shift* & *.first*, *pop* & *.last*) return the same result,
# however one destroys the original array whereas the other does not.

array_destroyed = [1, 2, 3, 4, 5, 6]

# The .shift and .pop methods destroy the original array
puts array_destroyed.shift  # 1
puts array_destroyed.pop  # 6
print array_destroyed  # [2, 3, 4, 5]

array_preserved = ["a", "b", "c", "d", "e", "f"]

# The .first and .last methods do not destroy the original array
puts array_preserved.first  # a
puts array_preserved.last  # f
print array_preserved  # ["a", "b", "c", "d", "e", "f"]
___________________________________________________________

# The variable used to collect counts/values = accumulator

def method()
  bucket = 0  # accumulator
  bucket_array = []  # accumulator
  array = [1, 2, 3, 4]
  array.each do |number|
    bucket += number
  end
  array.each do |number|
    bucket_array.push(number)
  end
  puts "Bucket value: #{bucket}"
  print "Bucket array value: #{bucket_array}"
end

method()

# Console output:
Bucket value: 10
Bucket array value: [1, 2, 3, 4]
___________________________________________________________

# Heroku

1) Sign up for Heroku
https://www.heroku.com/

2) Install Heroku Toolbelt
https://devcenter.heroku.com/articles/heroku-cli
- Note: default install includes Git, which can probably be de-selected at this point

3) Verify Heroku Toolbelt is installed via:
      heroku --version

4) From terminal, navigate to the root directory of the app and type:
      heroku create name-of-app

5) From terminal, run this command to install bundler:
      gem install bundler  # bundler-1.14.3.gem

6) Create a file named "Gemfile" in the root directory of the app and put this in it:
      source :rubygems
      gem "sinatra"
      ruby '2.3.3'

7) From terminal, run this command to create the .bundle and Gemfile.lock files:
      bundle install --without production

8) Create a file named ".gitignore" in the root directory of the app and put this in it:
      .bundle/

   Note:  For Windows you may need to create the file as gitignore.txt first.
   Then from PowerShell, navigate to the directory and run this command to rename the file:
      mv gitignore.txt .gitignore

9) Create a file named "config.ru" in the root directory of the app and put this in it:
      require './app'
      run Sinatra::Application

10) Push to your Git repository (git add . / git status / git commit -m "..." / git push origin master)

11) From terminal, run this command to push to Heroku:
      git push heroku master

    Note:  For Windows you may see warnings about Gemfile.lock being removed and no Profile detected.
    This should be fine and should not prevent your app from running via Heroku.

12) At the end of the messages, you should see the address for your app that you can use to run it.
___________________________________________________________

# View current files/directories for app on Heroku

1) Open terminal and navigate to repository directory

2) Run the Heroku bash shell:
      heroku run bash

3) Use cd and ls commands to navigate/browse directories and files
___________________________________________________________

# Heroku error - no default language

Note - on pushing my hangman game, I ran into a "no default language could be detected for this app" error.

I did the following, but am not 100% sure about what got it working:

1) Ran "git init" to re-initialize the .git subdirectory.

2) Re-associated my remote with these commands:
      heroku git:remote -a herokuAppName
      git push heroku master
    - may need to force:
      git push heroku master --force

3) Ran the following command to specify a buildpack:
      heroku buildpacks:set heroku/ruby

When I continued getting the error when running "git push heroku master",
I logged into the Heroku site and reviewed the listing for my hangman app.
It already had ruby specified as the buildpack, so I did the following:

1) Logged into heroku from terminal:
      heroku login

2) Re-pushed to GitHub:
      git add .
      git status
      git commit -m "pushing heroku files"
      git push origin master

3)  Re-pushed to Heroku:
      git push heroku master

And it worked after doing that.  The issue may have been due to not having the heroku-specific
files pushed to GitHub or possibly not being logged into Heroku in terminal, but just guessing.
___________________________________________________________

# For reference, here is example output from a successful initial push to GitHub followed by a push to Heroku:

PS F:\Documents\Dropbox\MinedMinds\hangman> heroku login
Enter your Heroku credentials.
Email: jverbosk@gmail.com
Password (typing will be hidden):
Logged in as jverbosk@gmail.com
PS F:\Documents\Dropbox\MinedMinds\hangman> git add .
warning: LF will be replaced by CRLF in Gemfile.lock.
The file will have its original line endings in your working directory.
PS F:\Documents\Dropbox\MinedMinds\hangman> git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        new file:   .gitignore
        new file:   Gemfile
        new file:   Gemfile.lock
        new file:   config.ru

PS F:\Documents\Dropbox\MinedMinds\hangman> git commit -m "added files necessary for Heroku"
[master 45fa016] added files necessary for Heroku
 4 files changed, 29 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 Gemfile
 create mode 100644 Gemfile.lock
 create mode 100644 config.ru
PS F:\Documents\Dropbox\MinedMinds\hangman> git push origin master
Counting objects: 6, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (6/6), 906 bytes | 0 bytes/s, done.
Total 6 (delta 0), reused 0 (delta 0)
To https://github.com/jverbosky/hangman.git
   3ab9e93..45fa016  master -> master
PS F:\Documents\Dropbox\MinedMinds\hangman> git push heroku master
Counting objects: 288, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (278/278), done.
Writing objects: 100% (288/288), 982.23 KiB | 626.00 KiB/s, done.
Total 288 (delta 97), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote:
remote: -----> Ruby app detected
remote: -----> Compiling Ruby/Rack
remote: -----> Using Ruby version: ruby-2.3.3
remote: ###### WARNING:
remote:        Removing `Gemfile.lock` because it was generated on Windows.
remote:        Bundler will do a full resolve so native gems are handled properly.
remote:        This may result in unexpected gem versions being used in your app.
remote:        In rare occasions Bundler may not be able to resolve your dependencies at all.
remote:        https://devcenter.heroku.com/articles/bundler-windows-gemfile
remote:
remote: -----> Installing dependencies using bundler 1.13.7
remote:        Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4
remote:        Fetching gem metadata from http://rubygems.org/..........
remote:        Fetching version metadata from http://rubygems.org/.
remote:        Resolving dependencies...
remote:        Using bundler 1.13.7
remote:        Installing tilt 2.0.6
remote:        Installing rack 1.6.5
remote:        Installing rack-protection 1.5.3
remote:        Installing sinatra 1.4.8
remote:        Bundle complete! 1 Gemfile dependency, 5 gems now installed.
remote:        Gems in the groups development and test were not installed.
remote:        Bundled gems are installed into ./vendor/bundle.
remote:        Bundle completed (2.02s)
remote:        Cleaning up the bundler cache.
remote: -----> Detecting rake tasks
remote:
remote: ###### WARNING:
remote:        Removing `Gemfile.lock` because it was generated on Windows.
remote:        Bundler will do a full resolve so native gems are handled properly.
remote:        This may result in unexpected gem versions being used in your app.
remote:        In rare occasions Bundler may not be able to resolve your dependencies at all.
remote:        https://devcenter.heroku.com/articles/bundler-windows-gemfile
remote:
remote: ###### WARNING:
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
remote:
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> console, rake, web
remote:
remote: -----> Compressing...
remote:        Done: 18.9M
remote: -----> Launching...
remote:        Released v4
remote:        https://hangman-jverbosky.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/hangman-jverbosky.git
 * [new branch]      master -> master
PS F:\Documents\Dropbox\MinedMinds\hangman>
___________________________________________________________

# For reference, here is example output from a successful update push to GitHub followed by a push to Heroku:

PS F:\Documents\Dropbox\MinedMinds\isbn> git add .
warning: LF will be replaced by CRLF in app.rb.
The file will have its original line endings in your working directory.
PS F:\Documents\Dropbox\MinedMinds\isbn> git status
On branch master
Your branch is up-to-date with 'origin/master'.
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

        modified:   app.rb
        modified:   views/layout.erb

PS F:\Documents\Dropbox\MinedMinds\isbn> git commit -m "tweaked comments and page text"
[master 6047d60] tweaked comments and page text
 2 files changed, 8 insertions(+), 7 deletions(-)
PS F:\Documents\Dropbox\MinedMinds\isbn> git push origin master
Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 615 bytes | 0 bytes/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Resolving deltas: 100% (4/4), completed with 4 local objects.
To https://github.com/jverbosky/isbn.git
   8b3bb82..6047d60  master -> master
PS F:\Documents\Dropbox\MinedMinds\isbn> git push heroku master
Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 615 bytes | 0 bytes/s, done.
Total 5 (delta 4), reused 0 (delta 0)
remote: Compressing source files... done.
remote: Building source:
remote:
remote: -----> Ruby app detected
remote: -----> Compiling Ruby/Rack
remote: -----> Using Ruby version: ruby-2.3.3
remote: ###### WARNING:
remote:        Removing `Gemfile.lock` because it was generated on Windows.
remote:        Bundler will do a full resolve so native gems are handled properly.
remote:        This may result in unexpected gem versions being used in your app.
remote:        In rare occasions Bundler may not be able to resolve your dependencies at all.
remote:        https://devcenter.heroku.com/articles/bundler-windows-gemfile
remote:
remote: -----> Installing dependencies using bundler 1.13.7
remote:        Running: bundle install --without development:test --path vendor/bundle --binstubs vendor/bundle/bin -j4
remote:        Fetching gem metadata from http://rubygems.org/..........
remote:        Fetching version metadata from http://rubygems.org/.
remote:        Resolving dependencies...
remote:        Using rack 1.6.5
remote:        Using tilt 2.0.6
remote:        Using bundler 1.13.7
remote:        Using rack-protection 1.5.3
remote:        Using sinatra 1.4.8
remote:        Bundle complete! 1 Gemfile dependency, 5 gems now installed.
remote:        Gems in the groups development and test were not installed.
remote:        Bundled gems are installed into ./vendor/bundle.
remote:        Bundle completed (1.61s)
remote:        Cleaning up the bundler cache.
remote: -----> Detecting rake tasks
remote:
remote: ###### WARNING:
remote:        Removing `Gemfile.lock` because it was generated on Windows.
remote:        Bundler will do a full resolve so native gems are handled properly.
remote:        This may result in unexpected gem versions being used in your app.
remote:        In rare occasions Bundler may not be able to resolve your dependencies at all.
remote:        https://devcenter.heroku.com/articles/bundler-windows-gemfile
remote:
remote: ###### WARNING:
remote:        No Procfile detected, using the default web server.
remote:        We recommend explicitly declaring how to boot your server process via a Procfile.
remote:        https://devcenter.heroku.com/articles/ruby-default-web-server
remote:
remote: -----> Discovering process types
remote:        Procfile declares types     -> (none)
remote:        Default types for buildpack -> console, rake, web
remote:
remote: -----> Compressing...
remote:        Done: 18.5M
remote: -----> Launching...
remote:        Released v8
remote:        https://isbn-validator-jverbosky.herokuapp.com/ deployed to Heroku
remote:
remote: Verifying deploy... done.
To https://git.heroku.com/isbn-validator-jverbosky.git
   8b3bb82..6047d60  master -> master
PS F:\Documents\Dropbox\MinedMinds\isbn>
___________________________________________________________

# To access Sinatra app from other computers on the network, run the app with "-o 0.0.0.0"
# In testing, didn't need to create exceptions in computer's firewall for access to work

ruby app.rb -o 0.0.0.0
___________________________________________________________

# Example <head> section for scaling view on mobile, loading Bootstrap and a custom style sheet, and loading a favicon

  <head>
    <title>Hangman</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">  <!-- added to get scaled view on mobile -->
    <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
    <link rel="stylesheet" href="style.css">
    <link rel="icon" href="/images/favicon.ico?" type="image/x-icon">  <!-- added to get favicon to load -->
  </head>

' tweak for text editor formatting
___________________________________________________________

# Use $nbsp; to force spaces to appear in HTML

Won: <%= @won %>&nbsp;&nbsp;&nbsp;&nbsp;Lost: <%= @lost %><br>
___________________________________________________________

# 1)
# When commenting out HTML w/embedded Ruby, don't comment out Ruby variable with #
# will result in: syntax error, unexpected keyword_ensure, expecting ')'

# 2)
# When using hidden form fields to pass data, set input type to "hidden" or else submitting
# an empty field will result in visible field on page with "hidden" in it

# For example, don't do this (copy to ERB/HTML to see the value):
<!-- <input type = "hidden" name = "user_name" value = <%= #name %>> -->
___________________________________________________________

# Use target="_blank" to open a new tab/page when clicking on a link

<p><a href="https://www.target_page.com" target="_blank">Your Text Here</a></p>
___________________________________________________________

# JSON (per Amanda)

JSON is just a file format, like CSV. Instead of a comma, you have braces and brackets between items and
they can be a tree structure instead of flat. All you need to do is parse out the data like you would in
CSV (just remembering you haven''t used CSV yet in class). Just google parsing JSON files with ruby and
choose a gem to do the tough work.

JSON lint is my best friend. I use it every time i am writing json to ensure it is well formed and not
missing a bracket somewhere.

# JSON != hash

It''s the difference between building a hash inline of separately as a variable. JSON is a bit different
than a hash even though it looks similar. JSON ID typically persisted to a file. It''s the typical way of
passing data between systems. So api calls are typically json because all systems understand it (most all).
So if you have a ruby program, it can send date to a lisp program or C#.
___________________________________________________________

PostgreSQL

Heroku article
https://devcenter.heroku.com/articles/heroku-postgresql

Installers
https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
________________________________

Windows - update PATH environment variable
- Win x86
  C:\Program Files\PostgreSQL\9.6\bin

Ruby - install 'pg' gem
- gem install pg
________________________________

Mac - install postgresql-9.6.2-4-osx.dmg

Update $PATH - where to find pg_config:
sudo ln -s /Library/PostgreSQL/9.6/bin/pg_config /usr/local/bin/pg_config

Ruby - install 'pg' gem with the following options:
sudo ARCHFLAGS="-arch x86_64" gem install pg -- --with-pg-config=/Library/PostgreSQL/9.6/bin/pg_config
___________________________________________________________

Cocoapods
- the Swift version of Ruby gems

sudo gem install cocoapods

Some related gems that are installed:

cocoapods (1.2.1)
cocoapods-core (1.2.1)
cocoapods-deintegrate (1.0.1)
cocoapods-downloader (1.1.3)
cocoapods-plugins (1.0.0)
cocoapods-search (1.0.0)
cocoapods-stats (1.0.0)
cocoapods-trunk (1.2.0)
cocoapods-try (1.1.0)


___________________________________________________________





___________________________________________________________





___________________________________________________________





___________________________________________________________





___________________________________________________________





___________________________________________________________