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




___________________________________________________________




___________________________________________________________