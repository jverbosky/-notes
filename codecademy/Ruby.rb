Codecademy Ruby
____________________________
____________________________
____________________________

Introduction to Ruby
____________________________
____________________________
____________________________

# The three data types in Ruby
#  numbers, booleans, strings

my_num = 25    # Add your code here!
my_boolean = true    # And here!
my_string = "Ruby"    # Also here.
____________________________

# Assigning a value to a variable
#  Variables should be all lowercase with words separated by an underscore
#  Don't start variables with a capital letter, $ or @ (special uses)

my_num = 100
____________________________

# Operators in Ruby
#  + - * / ** %

8 % 3

# Console output:
2
____________________________

# Use "print" to print to screen
# Use "puts" to print to screen and add a new line

puts "What's up?"
print "Oxnard Montalvo"

# Console output:
What's up?
Oxnard Montalvo

' # fix formatting in Notepad ++
____________________________

# Ruby terminology
#  Everything in Ruby is an "object"
#  Everything in Ruby has built-in abilities called "methods"
#  The "interpreter" is the program that takes code and runs it
#  The "editor" is where you type the code
#  The "console" is where the result of the code is displayed
____________________________

# String methods - the .length method
#  Returns the length of a string

"I love espresso".length

# Console output:
15
____________________________

# Example of the .length method

"John C Verbosky".length

# Console output:
15
____________________________

# The .reverse method
#  Returns the reverse of a string

"Eric".reverse

#Console output:
"cirE"
____________________________

# Example of the .reverse method

"John C Verbosky".reverse

#Console output:
"yksobreV C nhoJ"
____________________________

# The .upcase and .downcase methods
#  Convert a string to all uppercase or lowercase

puts "eric".upcase
print "eric".downcase

#Console output:
ERIC
eric
____________________________

# Comments

# Single-line comment

=begin
Multi-line comment
Don't use any spaces between the equals signs
And make sure each delimiter is on its own line
=end
____________________________

# Variables assigned to math problems

sum = 13 + 379
product = 923 * 15
quotient = 13209 /17
____________________________

# Can chain string methods
#  string.method1.method2.method3

name = "John C Verbosky"
name.downcase.reverse.upcase

# Console output:
"YKSOBREV C NHOJ"
____________________________
____________________________
____________________________

Putting the Form in Formatter
____________________________
____________________________
____________________________

# Program to read a user's input and correct capitalization of name

print "What's your first name?"
first_name = gets.chomp
first_name.capitalize!

print "What's your last name?"
last_name = gets.chomp
last_name.capitalize!

print "What city are you from?"
city = gets.chomp
city.capitalize!

print "What state or province are you from?"
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"

# Console output:
What's your first name? john
What's your last name? verbosky
What city are you from? pittsburgh
What state or province are you from? pa
Your name is John Verbosky and you're from Pittsburgh, PA!
' # fix formatting in Notepad ++
____________________________

# Getting input
#  variable_name = gets.chomp
#  Ruby automatically adds a trailing new line after each "gets"
#  The "chomp" method removes the new line

print "What's your first name?"
first_name = gets.chomp

print "What's your last name?"
last_name = gets.chomp

print "What's your city?"
city = gets.chomp

print "What's the two-letter abbreviation for your state?"
state = gets.chomp

# Console output:
What's your first name? john
What's your last name? verbosky
What's your city? pittsburgh
What's the two-letter abbreviation for your state? pa
____________________________

# Example of string interpolation using #{string_variable}

monkey = "Curious George"
print "I took #{monkey} to the zoo."

# Console output:
I took Curious George to the zoo.
____________________________

# Using string interpolation for name/location program.

print "What's your first name?"
first_name = gets.chomp
print "What's your last name?"
last_name = gets.chomp
print "What's your city?"
city = gets.chomp
print "What's the two-letter abbreviation for your state?"
state = gets.chomp

puts "\nYour name is #{first_name} #{last_name}, and you live in #{city}, #{state}."

# Console output:
What's your first name? john
What's your last name? verbosky
What's your city? pittsburgh
What's the two-letter abbreviation for your state? pa

Your name is john verbosky, and you live in pittsburgh, pa.
____________________________

# Using the .capitalize method - required approach to pass lesson
#  Note that using "!" will modify the value contained in the variable
#  If "!" isn't used, Ruby will create a copy of the variable instead of modifying it

print "What's your first name?"
first_name = gets.chomp
first_name2 = first_name.capitalize
first_name.capitalize!
print "What's your last name?"
last_name = gets.chomp
last_name2 = last_name.capitalize
last_name.capitalize!
print "What's your city?"
city = gets.chomp
city2 = city.capitalize
city.capitalize!
print "What's the two-letter abbreviation for your state?"
state = gets.chomp
state2 = state.upcase
state.upcase!

puts "\nYour name is #{first_name} #{last_name}, and you live in #{city}, #{state}."

# Console output:
What's your first name? john
What's your last name? verbosky
What's your city? pittsburgh
What's the two-letter abbreviation for your state? pa

Your name is John Verbosky, and you live in Pittsburgh, PA.
____________________________

# Alternate to previous - chaining .capitalize

print "What's your first name?"
first_name = gets.chomp.capitalize
print "What's your last name?"
last_name = gets.chomp.capitalize
print "What's your city?"
city = gets.chomp.capitalize
print "What's the two-letter abbreviation for your state?"
state = gets.chomp.upcase

puts "\nYour name is #{first_name} #{last_name}, and you live in #{city}, #{state}."

# Console output:
What's your first name? john
What's your last name? verbosky
What's your city? pittsburgh
What's the two-letter abbreviation for your state? pa

Your name is John Verbosky, and you live in Pittsburgh, PA.
____________________________

# Another viable alternative to previous - modifying variable during re-assignment

print "What's your first name?"
first_name = gets.chomp
first_name = first_name.capitalize
print "What's your last name?"
last_name = gets.chomp
last_name = last_name.capitalize
print "What's your city?"
city = gets.chomp
city = city.capitalize
print "What's the two-letter abbreviation for your state?"
state = gets.chomp
state = state.upcase

puts "\nYour name is #{first_name} #{last_name}, and you live in #{city}, #{state}."

# Console output:
What's your first name? john
What's your last name? verbosky
What's your city? pittsburgh
What's the two-letter abbreviation for your state? pa

Your name is John Verbosky, and you live in Pittsburgh, PA.
____________________________
____________________________
____________________________

Control Flow in Ruby
____________________________
____________________________
____________________________

# Conditionals - if, elsif, else and end
#  Note that there's no colon (:) at the end of conditionals in Ruby

print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end

# Console output:
Integer please:  7
You picked a positive integer!
____________________________

# Example using if and end

if cat != dog
    print "That's true - cats are not dogs!"
end

# Console output:
That's true - cats are not dogs!

' # fix formatting in Notepad ++
____________________________

# Example using if, else and end

if cat > dog
    print "Cats are greater than dogs!"
else
    print "That's true - cats are not as great as dogs!"
end

# Console output:
That's true - cats are not as great as dogs!

' # fix formatting in Notepad ++
____________________________

# Example using if, elsif, else and end

if 1 > 1
    print "One is greater than one!"
elsif 1 < 1
    print "One is less than one!"
else
    print "One is equal to one!"
end

# Console output:
One is equal to one!
____________________________

# Using unless statement (instead of flipping if/else statements)

hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end

# Console output:
I'm writing Ruby programs!

' # fix formatting in Notepad ++
____________________________

# The equals and not equal operators

is_true = 2 != 3
is_false = 2 == 3
____________________________

# The less than, greater than and aggregate equals to operators

test_1 = 17 > 16
test_2 = 21 <= 30
test_3 = 9 >= 9
test_4 = -11 < 4
____________________________

# Using true and false conditionals

# test_1 = 77 != 77
test_1 = false

# test_2 = -4 <= -4
test_2 = true

# test_3 = -44 < -33
test_3 = true

# test_4 = 100 == 1000
test_4 = false
____________________________

# The logical (boolean) operators
#  && || and !

# boolean_1 = 77 < 78 && 77 < 77
boolean_1 = false

# boolean_2 = true && 100 >= 100
boolean_2 = true

# boolean_3 = 2**3 == 8 && 3**2 == 9
boolean_3 = true
____________________________

# Ruby's inclusive or operator

# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false
____________________________

The not operator

# boolean_1 = !true
boolean_1 = false

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false
____________________________

# Combining boolean operators

# boolean_1 = (3 < 4 || false) && (false || true)
boolean_1 = true

# boolean_2 = !true && (!true || 100 != 5**2)
boolean_2 = false

# boolean_3 = true || !(true || false)
boolean_3 = true
____________________________

# Example conditional statements

cat = 1
dog = 2

if cat > dog
    print "Cats are greater than dogs!"
elsif cat == dog
    print "Cats are the same as dogs!"
else
    print "Cats are not as great as dogs!"
end

# Console output:
Cats are not as great as dogs!
____________________________

# Example of unless statement after action

problem = false
print "Good to go!" unless problem

# Console output:
Good to go!
____________________________

# Example unless statement

print "Cats aren't dogs!" unless cat == dog

# Console output:
Cats aren't dogs!

' # fix formatting in Notepad ++
____________________________
____________________________
____________________________

Thith Meanth War!
____________________________
____________________________
____________________________

# User-provided substring replacement example

print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end

puts "Your string is: #{user_input}"

# Console output:
Thtring, pleathe!:  You're despicable!
Your string is: you're dethpicable!
____________________________

# Getting user input
# The gets method collects input from the user
# The chomp method removes the trailing line break from the user input

print "Enter string to translate: "
user_input = gets
print user_input

print "Enter string to translate: "
user_input = gets.chomp
print user_input

# Console output:
Enter string to translate: test
test  # line break here
Enter string to translate: test
test  # no line break here
____________________________

# Variation Collect string from user and format all lowercase
#  Use "!" to modify the variable (otherwise Ruby creates a copy)
#  When using .downcase! string must have an uppercase character or returns NIL

print "Enter string to translate:"
user_input = gets.chomp
user_input.downcase!

# Console output:
Enter string to translate: TEST
"test"
____________________________

# Variation with .downcase! chained
# Note that when using .downcase! the string *must* have an uppercase character
# or it returns NIL (nothing, null)
# This will result in an error later, so best not to use this variation

print "Enter string to translate:"
user_input = gets.chomp.downcase!

# Console output:
Enter string to translate: TEST
"test"

Enter string to translate:test
<nil>
____________________________

# Add .include? method to look for an "s" in the user-input string
#  Evaluates to true if it finds what it's looking for (false, if it doesn't)
#  Ruby methods that end with "?" evaluate to the boolean values (true or false)

print "Enter string to translate:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    print "Yep, there's an s!"
end

# Console output:
Enter string to translate: TEST
Yep, there's an s!

' # fix formatting in Notepad ++
____________________________

# Use .gsub! (global substitution) method to replace all instances of substring
#  string_to_change.gsub!(/target_substring/, "new_substring")

print "Enter string to translate:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
    user_input.gsub!(/s/, "th")
end

# Console output:
Enter string to translate: TEST
"tetht"
____________________________

# Add an else statement to advise user if input string doesn't contain target substring
#  Method for including/escaping double-quotes in string Per StackOverflow:
#  http://stackoverflow.com/questions/6705982/escaping-single-and-double-qoutes-from-a-string-in-ruby

print "Enter string to translate:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  puts user_input.gsub!(/s/, "th")
else
  puts %Q(No "s" so nothing to translate!)
end

# Console output:
Enter string to translate:TEST
tetht
-----
Enter string to translate:test
tetht
-----
Enter string to translate:the
No "s" so nothing to translate!
-----
Enter string to translate:THE
No "s" so nothing to translate!
____________________________

# Add string interpolation to display the modified string

print "Enter string to translate:"
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  translation = user_input.gsub(/s/, "th")
  puts "Daffy Duck says: #{translation}!"
else
  puts %Q(No "s" so nothing to translate!)
end

# Console output:
Enter string to translate: TEST
Daffy Duck says: tetht!
____________________________

# Add a statement to reprompt if there's no user input

user_input = ''

while user_input == ''
  print "Enter string to translate:"
  user_input = gets.chomp
  user_input.downcase!
end

if user_input.include? "s"
  translation = user_input.gsub(/s/, "th")
  puts "Daffy Duck says: #{translation}!"
else
  puts %Q(No "s" so nothing to translate!)
end

# Console out:
Enter string to translate:
Enter string to translate:
Enter string to translate: that
No "s" so nothing to translate!
____________________________

# Added statements to handle both capital "S" and lowercase "s"

user_input = ''
translation = ''

while user_input == ''
  print "Enter string to translate:"
  user_input = gets.chomp
end

if user_input.include?("S") || user_input.include?("s")
  translation = user_input.gsub(/S/, "Th")
  translation = translation.gsub(/s/, "th")
  puts "Daffy Duck says: #{translation}!"
else
  puts %Q(No "s" so nothing to translate!)
end

# Console output:
Enter string to translate:test
Daffy Duck says: tetht!
-----
Enter string to translate:Star
Daffy Duck says: Thtar!
-----
Enter string to translate:Sunshine
Daffy Duck says: Thunthhine!
-----
Enter string to translate:that
No "s" so nothing to translate!
____________________________
____________________________
____________________________

Loops & Iterators
____________________________
____________________________
____________________________

# Example while loop

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

# Console output:
1
2
3
4
5
6
7
8
9
10
____________________________

# Another while loop

i = 0
while i < 5
  puts i
  # Add your code here!
  i = i+1
end

# Console output:
0
1
2
3
4
____________________________

# Example until loop
# Run loop until the condition is met and then break out of loop

i = 0
until i == 6
  i += 1
end
puts i

# Console output:
6
____________________________

# Another example until loop

counter = 1
until counter > 10
  puts counter
  # Add code to update 'counter' here!
  counter += 1
end

# Console output:
1
2
3
4
5
6
7
8
9
10
____________________________

# Example for loop
# Three dots (...) indicates to not include last value in range

for num in 1...10
  puts num
end

# Console output:
1
2
3
4
5
6
7
8
9
____________________________

# Another example for loop
# Two dots (..) indicates to include last value in range

for num in 1...10
  puts num
end

# Console output:
1
2
3
4
5
6
7
8
9
10
____________________________

# Practice for loop to print 1 - 20 (inclusive)

for n in 1..20
  puts n
end

# Console output:
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
____________________________

# Iterating using the loop method
# Curly braces ({}) work the same as a "do end" statement

loop {print "Hello world"} # Note - for explanation only, creates infinite loop

# This is functionally equivalent

loop do
  print "Hello World" # Note - for explanation only, creates infinite loop
end

# Console output (until CTRL+C to break the loop):
Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHel
lo WorldHello WorldHello WorldHello WorldHello World
# CTRL+C
____________________________

# Variation of "do end" loop with break statement

i = 0
loop do
  i += 1
  print i
  break if i > 5
end

# Console output:
123456
____________________________

# Variation of "do end" loop with string interpolation

i = 0
loop do
  i += 1
  print "#{i}"
  break if i > 5
end

# Console output:
123456
____________________________

# Another example "do end" loop

i = 20
loop do
  i -= 1
  print "#{i},"
  break if i <= 0
end

# Console output:
19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0,
____________________________

# Using next to skip certain items in loop
# If the iteration specified in the "next" statement is true, skip it
# The "next" statement says "skip this value and go to the next iteration value"

for i in 1..5
  next if i % 2 == 0
  print i
end

# Console output:
135
____________________________

# Another next example that skips odd numbers while looping down from 20

i = 20
loop do
  i -= 1
  next if i % 2 == 1
  print "#{i}"
  break if i <= 0
end

# Console output:
181614121086420
____________________________

# Example array

my_array = [1, 2, 3, 4, 5]
____________________________

# Using the .each method to iterate through an array

object.each { |item| # Do something }

# Can also use "do end" with the .each method instead of curly braces
object.each do |item|
  # Do something
end
____________________________

# Examples of using the .each method with both formats

numbers = [1, 2, 3, 4, 5]

# one way to loop
numbers.each { |item| puts item }

# another way to loop
numbers.each do |item|
  puts item
end

# Console output:
1
2
3
4
5
____________________________

# Example array iteration using the .each method
# The "x" in |x| is just a placeholder for each item in the array

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}"
end

# Console output:
1112131415
____________________________

# Example array iteration using .each to multiple each array item by 2

odds = [1,3,5,7,9]

# Add your code below!
odds.each do |n|
    n *= 2
    print n
end

# Console output:
26101418
____________________________

# Using the .times method to repeat an action a specific number of times
# The .times method is essentially a super compact for loop

10.times { print "Chunky bacon!" }

# Console output:
Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!Chunky bacon!
____________________________

# Another .times example to repeat a string

3.times {print "why"}

# Console output:
whywhywhy
____________________________

# Example why loop to print 1 - 50 (inclusive)

i = 1
while i <= 50
  print i
  i += 1
end

# Console output:
1234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950
____________________________

# Example loops using why and until (same output for both)

i = 3
while i > 0 do
  print i
  i -= 1
end

j = 3
until j == 0 do
  print j
  j -= 1
end

# Console output:
321
____________________________
____________________________
____________________________

Printing 1 - 50 inclusive using different types of loops
____________________________
____________________________
____________________________

# Example until loop to print 1 - 50 (inclusive)

i = 1
until i > 50
  print i
  i += 1
end

# Console output:
1234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950
____________________________

# Example for loop to print 1 - 50 (inclusive)

for i in 1..50
  print i
end

# Console output:
1234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950
____________________________

# Example "do end" loop to print 1 - 50 (inclusive)

i = 0
loop do
  print i
  i += 1
  break if i > 50
end

# Console output:
1234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950
____________________________

# Example .times loop to print 1 - 50 (inclusive)

i = 0
50.times do
  print i
  i += 1
end

# Console output:
1234567891011121314151617181920212223242526272829303132333435363738394041424344454647484950
____________________________

# Example "do end" loop to print "Ruby!" 10 times

i = 0
loop do
  print "Ruby!"
  i += 1
  break if i == 10
end

# Console output:
Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!
____________________________

# Example .times loop to print "Ruby!" 10 times

10.times {print "Ruby!"}

# Console output:
Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!Ruby!
____________________________
____________________________
____________________________

Redacted!
____________________________
____________________________
____________________________

# Program to search for a string of text and replace it

puts "Text to search through: "
text = gets.chomp
puts "Word to redact: "
redact = gets.chomp

words = text.split(" ")

words.each do |word|
  if word != redact
    print word + " "
  else
    print "REDACTED "
  end
end

# Console output:
Text to search through:
 This is a sentence to search through.
Word to redact:
 sentence
This is a REDACTED to search through.
____________________________

# Ste 1 - collect user's input twice

puts "Enter text to search:"
text = gets.chomp
puts text

puts "Enter target word:"
redact = gets.chomp
puts redact

# Console output:
Enter text to search:
 This is a test.
This is a test.
Enter target word:
 test
test
____________________________

# Use .split method to split the string into an array
# string.split("delimiter")

puts "Enter text to search:"
text = gets.chomp
words = text.split(" ")
print words
print "\n"

puts "Enter target word:"
redact = gets.chomp
puts redact

# Console output:
Enter text to search:
 This is a test
["This", "is", "a", "test"]
Enter target word:
 test
test
____________________________

# Use .each method to print out each word in array

puts "Enter text to search:"
text = gets.chomp
words = text.split(" ")

puts "Enter target word:"
redact = gets.chomp

words.each do |word|
    print word
end

# Console output:
Enter text to search:
 This is a test
Enter target word:
 test
Thisisatest["This", "is", "a", "test"]
____________________________

# Use an if/else loop to compared each array item to target word

puts "Enter text to search:"
text = gets.chomp
words = text.split(" ")

puts "Enter target word:"
redact = gets.chomp

words.each do |word|
    if word == redact
        print "REDACTED "
    else
        print word + " "
    end
end

# Console output:
Enter text to search:
 This is a test
Enter target word:
 test
This is a REDACTED
____________________________

# Modified to work regardless of the case of the search string or target word.

puts "Enter text to search:"
text = gets.chomp
words = text.split(" ")

puts "Enter target word:"
redact = gets.chomp

words.each do |word|
    if word.downcase == redact.downcase
        print "REDACTED "
    else
        print word + " "
    end
end

# Console output:
Enter text to search:
 This IS a test.
Enter target word:
 is
This REDACTED a test.
____________________________
____________________________
____________________________

Arrays
____________________________
____________________________
____________________________

# Example array

my_array = [1, 2, 3, 4, 5, 6, 8]
____________________________

# Print the third element in the array

demo_array = [100, 200, 300, 400, 500]

print  demo_array[2]

# Console output:
300
____________________________

# An array of strings

string_array = ["the", "quick", "brown", "fox", "jumps", "over", "the", "lazy", "dog"]
____________________________

# Multi-dimensional arrays (arrays of arrays)

multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0],[0,0,0,0]]

multi_d_array.each { |x| puts "#{x}\n" }

# Console output:
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 0, 0]
____________________________

# Multi-dimensional array with strings

my_2d_array = [["the", "quick"], ["brown", "fox"], ["jumps", "over"], ["lazy", "dog"]]
____________________________

# Ruby hashes (key => value)
# Similar to Python dictionaries (and JavaScript objects)

hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}
____________________________

# Accessing hash values

my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]

# Console output:
Eric
26
true
____________________________

# Accessing hash keys using the .key method

my_hash = { "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash.key "Eric"
puts my_hash.key 26
puts my_hash.key true

# Console output:
name
age
hungry?
____________________________

# Create a new hash, print the hash,
# then use the .each_pair method to print each key-value pair in the hash
# Needs to be capital "H" in "Hash.new" or will get an error

my_hash = Hash.new
my_hash["a"] = "the"
my_hash["b"] = "quick"
my_hash["c"] = "brown"
my_hash["d"] = "fox"
my_hash["e"] = "jumps"
my_hash["f"] = "over"
my_hash["g"] = "the"
my_hash["h"] = "lazy"
my_hash["i"] = "dog"

puts "Print the hash:"
puts my_hash
puts "\n"
puts "Print each key => value pair:"
my_hash.each_pair {|key,value| puts "#{key} = #{value}"}

# Console output:
Print the hash:
{"a"=>"the", "b"=>"quick", "c"=>"brown", "d"=>"fox", "e"=>"jumps", "f"=>"over", "g"=>"the", "h"=>"lazy", "i"=>"dog"}

Print each key => value pair:
a = the
b = quick
c = brown
d = fox
e = jumps
f = over
g = the
h = lazy
i = dog
____________________________

# Creating a new hash using Hash.new
# Same as:  my_hash = {}

pets = Hash.new
puts pets

# Console output:
{}
____________________________

# Add key-value pairs to the hash

pets = Hash.new

pets["Tan-chan"] = "dog"
pets["Luma"] = "pig"
pets["Nema"] = "fish"

puts pets

# Console output:
{"Tan-chan"=>"dog", "Luma"=>"pig", "Nema"=>"fish"}
____________________________

# Creating & populating a hash, and accessing one of the keys

pets = {
  "Tan-chan" => "dog",
  "Luma" => "pig",
  "Nema" => "fish"
}

puts pets["Tan-chan"]
puts pets["Luma"]
puts pets["Nema"]

# Console output:
dog
pig
fish
____________________________

# Iterating over arrays and hases using the .each method

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# Console output:
Milhouse
Ralph
Nelson
Otto
Homer: dad
Marge: mom
Lisa: sister
Maggie: sister
Abe: grandpa
Santa's Little Helper: dog

' # fix formatting in editor
____________________________

# Iterating over a list

numbers = [1, 2, 3, 4, 5]
numbers.each { |element| puts element }

# Console output:
1
2
3
4
5
____________________________

# Another example of iterating over a list

languages = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
languages.each { |language| puts language }

# Console output:
HTML
CSS
JavaScript
Python
Ruby
____________________________

# Accessing a single item in a multi-dimensional array

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
puts s[0][1]

# Console output:
swiss
____________________________

# Iterating over a multi-dimensional array
# array.each { |element| action }

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each { |sub_array| puts sub_array }

# Console output:
ham
swiss
turkey
cheddar
roast beef
gruyere
____________________________

# Iterating over a hash
# Need two placeholder variables for each key/value pair

restaurant_menu = {
  "noodles" => 4,
  "soup" => 3,
  "salad" => 2
}

restaurant_menu.each do |item, price|
  puts "#{item}: #{price}"
end

# Console output:
noodles: 4
soup: 3
salad: 2
____________________________

# Example of iterating over a hash

secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |hero, identity|
    puts  "#{hero}: #{identity}"
end

# Console output:
The Batman: Bruce Wayne
Superman: Clark Kent
Wonder Woman: Diana Prince
Freakazoid: Dexter Douglas
____________________________

# Defining a multi-dimensional array

my_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

print my_array

# Console output:
[[1, 2, 3], [4, 5, 6], [7, 8, 9]]
____________________________

# Defining a hash

my_hash = {
    "soft" => "palythoa",
    "large_polyp_stony" => "duncan",
    "small_polyp_stony" => "birdsnest"
}

puts my_hash

# Console output:
{"soft"=>"palythoa", "large_polyp_stony"=>"duncan", "small_polyp_stony"=>"birdsnest"}
____________________________

# Defining the same hash using Hash.new

my_hash = Hash.new
my_hash["soft"] = "palythoa"
my_hash["large_polyp_stony"] = "duncan"
my_hash["small_polyp_stony"] = "birdsnest"

puts my_hash

# Console output:
{"soft"=>"palythoa", "large_polyp_stony"=>"duncan", "small_polyp_stony"=>"birdsnest"}
____________________________

# Iterating over a hash and outputting the values (not the keys)

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each do |customer, order|
    puts "#{order}"
end

# Console output:
wonton soup
hamburger
sandwich
salad
taco
____________________________
____________________________
____________________________

Create a Histogram
____________________________
____________________________
____________________________

# Example histogram

puts "Text please: "
text = gets.chomp

words = text.split(" ")
frequencies = Hash.new(0)
words.each { |word| frequencies[word] += 1 }
frequencies = frequencies.sort_by {|a, b| b }
frequencies.reverse!
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

# Console output:
Text please: 
 This is a test to see how a histogram will work when using lots of words that occassionally repeat so that they can be counted.

a 2
that 2
using 1
they 1
so 1
repeat 1
occassionally 1
be 1
words 1
of 1
lots 1
can 1
when 1
work 1
will 1
histogram 1
how 1
see 1
to 1
test 1
counted. 1
is 1
This 1

# Hash:
[["a", 2], ["that", 2], ["using", 1], ["they", 1], ["so", 1], ["repeat", 1], ["occassionally", 1], ["be", 1], ["words", 1], ["of", 1], ["lots", 1], ["can", 1], ["when", 1], ["work", 1], ["will", 1], ["histogram", 1], ["how", 1], ["see", 1], ["to", 1], ["test", 1], ["counted.", 1], ["is", 1], ["This", 1]]
____________________________

# Example with more outputs to see progression

puts "Text please: "
text = gets.chomp
puts "\n"

words = text.split(" ")
puts "String split into an array..."
print words
2.times{puts "\n"}

frequencies = Hash.new(0)
puts "New hash initialized..."
print frequencies
2.times{puts "\n"}

words.each { |word| frequencies[word] += 1 }
puts "Word frequencies counted..."
print frequencies
2.times{puts "\n"}

frequencies = frequencies.sort_by {|a, b| b }
puts "Word frequencies sorted..."
print frequencies
2.times{puts "\n"}

frequencies.reverse!
puts "Word frequencies reversed..."
print frequencies
2.times{puts "\n"}

puts "Final output..."
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }

# Console output:
Text please:
The cat and the bat ate the rat and the hat.

String split into an array...
["The", "cat", "and", "the", "bat", "ate", "the", "rat", "and", "the", "hat."]

New hash initialized...
{}

Word frequencies counted...
{"The"=>1, "cat"=>1, "and"=>2, "the"=>3, "bat"=>1, "ate"=>1, "rat"=>1, "hat."=>1}

Word frequencies sorted...
[["The", 1], ["cat", 1], ["hat.", 1], ["rat", 1], ["ate", 1], ["bat", 1], ["and", 2], ["the", 3]]

Word frequencies reversed...
[["the", 3], ["and", 2], ["bat", 1], ["ate", 1], ["rat", 1], ["hat.", 1], ["cat", 1], ["The", 1]]

Final output...
the 3
and 2
bat 1
ate 1
rat 1
hat. 1
cat 1
The 1
____________________________

# Step 1 - prompt for and collect user input

puts "Type a sentence so we can count the words:"
text = gets.chomp
____________________________

# Step 2 - use the .split method to split the string into an array
# string.split("delimiter")
# Note that if a delimiter is not specified, splits on whitespace by default

puts "Type a sentence so we can count the words:"
text = gets.chomp

words = text.split
print words

# Console output:
Type a sentence so we can count the words:
 This is a sentence.
["This", "is", "a", "sentence."]
____________________________

# Step 3 - create a new hash to hold each word and count pair
# Initialize the hash with zero as the default value
# If the hash has a default value, trying to access a non-existent key
# will return the default value instead of nothing

# Example without specifying a default value for the hash:
puts "Type a sentence so we can count the words:"
text = gets.chomp
puts "\n"

words = text.split
print words
2.times{puts "\n"}

frequencies = Hash.new
print frequencies["word"] # non-existant key

# Console output:
Type a sentence so we can count the words:
 This is a sentence.

["This", "is", "a", "sentence."]

# Example with a default value (zero) for the hash:
puts "Type a sentence so we can count the words:"
text = gets.chomp
puts "\n"

words = text.split
print words
2.times{puts "\n"}

frequencies = Hash.new(0)
print frequencies["word"] # non-existant key

# Console output:
Type a sentence so we can count the words:
 This is a sentence.

["This", "is", "a", "sentence."]

0
____________________________

# Example of incrementing a hash key's value

colors = {"red" => 2, "blue" => 3}
puts colors["blue"]
colors["blue"] += 1
print colors
puts "\n"
puts colors["blue"]

# Console output
3
{"red"=>2, "blue"=>4}
4
____________________________

# Ground zero example of initializing an array and a hash,
# and adding a key/value pair to the array
# Done to help next example make sense

seed = ["this", "is", "a", "test"]

target = {}

target["word"] = 0

print seed
puts "\n"
print target

["this", "is", "a", "test"]
{"word"=>0}
____________________________

# Example of iterating through an array in order to populate an empty hash
# array.each { |array_item| block_of_code_to_do }
# The array values act as keys
# Zero is used for each key's value

seed = ["this", "is", "a", "test"]

target = {}

# Statement parses seed, sets each item (word) as a key in target and assigns a value of 0
seed.each { |word| target[word] = 0 }

print seed
puts "\n"
print target

# Console output:
["this", "is", "a", "test"]
{"this"=>0, "is"=>0, "a"=>0, "test"=>0}
____________________________

# Same example with .each method written out using do/end variation
# with extra output to clarify how iteration is populating the hash

seed = ["this", "is", "a", "test"]

target = {}

# Statement parses seed, sets each item (word) as a key in target and assigns a value of 0
seed.each do |word| 
  puts word
  puts target[word] = 0
  puts target
end

print seed
puts "\n"
print target

# Console output:
this
0
{"this"=>0}
is
0
{"this"=>0, "is"=>0}
a
0
{"this"=>0, "is"=>0, "a"=>0}
test
0
{"this"=>0, "is"=>0, "a"=>0, "test"=>0}
["this", "is", "a", "test"]
{"this"=>0, "is"=>0, "a"=>0, "test"=>0}
____________________________

# Another eample of iterating through an array in order to populate an empty hash
# The array values act as keys
# A random number is generated for each key's value

seed = ["this", "is", "a", "test"]

target = {}

seed.each { |word| target[word] = rand(10) }

print seed
puts "\n"
print target

# Console output:
["this", "is", "a", "test"]
{"this"=>5, "is"=>6, "a"=>2, "test"=>7}
____________________________

# Step 4 - populate the hash with each word in the words array and it's count
# This is why the frequencies hash was initialized with zero...
# ...so it could be incremented

puts "Type a sentence so we can count the words:"
text = gets.chomp
puts "\n"

words = text.split
print words
2.times{puts "\n"}

frequencies = Hash.new(0)
print frequencies["word"]
2.times{puts "\n"}

words.each {|word| frequencies[word] += 1}
print frequencies
2.times{puts "\n"}

# Console output
Type a sentence so we can count the words:
The cat and the bat ate the rat and the hat.

["The", "cat", "and", "the", "bat", "ate", "the", "rat", "and", "the", "hat."]

0

{"The"=>1, "cat"=>1, "and"=>2, "the"=>3, "bat"=>1, "ate"=>1, "rat"=>1, "hat."=>1}
____________________________

# Example of sorting a hash using the .sort_by method
# Note that using .sort_by on a hash will return a multi-dimensional array
# This is what codecademy is using, but use something else
# if keeping the hash intact is important

colors = {"blue" => 3, "green" => 1, "red" => 2}

colors = colors.sort_by do |color, count|
  count
end

print colors
puts "\n"

# Ruby doesn't have a .reverse method for hashes
# but .sort_by converts the hash to an array, so that is a workaround
colors.reverse!
print colors
puts "\n"

# Console output:
[["green", 1], ["red", 2], ["blue", 3]]
[["blue", 3], ["red", 2], ["green", 1]]
____________________________

# Same .sort_by method example rewritten without using do/end syntax
# Sort by the key (alphabetical):
# hash.sort_by {|key, value| key }
# Sort by the value (number):
# hash.sort_by {|key, value| value }

colors = {"blue" => 3, "green" => 1, "red" => 2}
colors = colors.sort_by {|color, count| count }

print colors
puts "\n"

# Ruby doesn't have a .reverse method for hashes
# but .sort_by converts the hash to an array, so that is a workaround
colors.reverse!
print colors
puts "\n"

# Console output:
[["green", 1], ["red", 2], ["blue", 3]]
[["blue", 3], ["red", 2], ["green", 1]]
____________________________

# Step 5 - sort and reverse the hash
# Use the .sort_by method, which converts the hash to a multi-dimensional array
# Then use the .reverse! method on the resulting array

puts "Type a sentence so we can count the words:"
text = gets.chomp
puts "\n"

words = text.split
print words
2.times{puts "\n"}

frequencies = Hash.new(0)
print frequencies["word"]
2.times{puts "\n"}

words.each {|word| frequencies[word] += 1}
print frequencies
2.times{puts "\n"}

# .sort_by converts the hash to a multi-dimensional array
frequencies = frequencies.sort_by { |word, number| number }
print frequencies
2.times{puts "\n"}

# .reverse! only works on arrays (which frequencies is after .sort_by)
frequencies = frequencies.reverse!
print frequencies

# Console output:
Type a sentence so we can count the words:
 The cat and the bat ate the rat and the hat.

["The", "cat", "and", "the", "bat", "ate", "the", "rat", "and", "the", "hat."]

0

{"The"=>1, "cat"=>1, "and"=>2, "the"=>3, "bat"=>1, "ate"=>1, "rat"=>1, "hat."=>1}

[["The", 1], ["cat", 1], ["hat.", 1], ["rat", 1], ["ate", 1], ["bat", 1], ["and", 2], ["the", 3]]

[["the", 3], ["and", 2], ["bat", 1], ["ate", 1], ["rat", 1], ["hat.", 1], ["cat", 1], ["The", 1]]
____________________________

# Example of iterating over a hash or multi-dimensional array

fruit = {
  "apple" => 2,
  "banana" => 3,
  "cherry" => 5
}

fruit.each do |name, count|
  puts name + " " + count.to_s
end

# Console output:
apple 2
banana 3
cherry 5
____________________________

# Same example with .each statement rewritten to abbreviated format

fruit = {
  "apple" => 2,
  "banana" => 3,
  "cherry" => 5
}

fruit.each { |name, count| puts name + " " + count.to_s }

# Console output:
apple 2
banana 3
cherry 5
____________________________

# Step 6 - using .each to iterate over the frequencies array to print each pair of items
# Note that frequencies is no longer a hash

puts "Type a sentence so we can count the words:"
text = gets.chomp
puts "\n"

words = text.split
print words
2.times{puts "\n"}

frequencies = Hash.new(0)
print frequencies["word"]
2.times{puts "\n"}

words.each {|word| frequencies[word] += 1}
print frequencies
2.times{puts "\n"}

frequencies = frequencies.sort_by { |word, number| number }
print frequencies
2.times{puts "\n"}

frequencies = frequencies.reverse!
print frequencies
2.times{puts "\n"}

frequencies.each { |word, number| puts "#{word}: #{number}" }

# Console output:
Type a sentence so we can count the words:
The cat and the bat ate the rat and the hat.

["The", "cat", "and", "the", "bat", "ate", "the", "rat", "and", "the", "hat."]

0

{"The"=>1, "cat"=>1, "and"=>2, "the"=>3, "bat"=>1, "ate"=>1, "rat"=>1, "hat."=>1}

[["The", 1], ["cat", 1], ["hat.", 1], ["rat", 1], ["ate", 1], ["bat", 1], ["and", 2], ["the", 3]]

[["the", 3], ["and", 2], ["bat", 1], ["ate", 1], ["rat", 1], ["hat.", 1], ["cat", 1], ["The", 1]]

the: 3
and: 2
bat: 1
ate: 1
rat: 1
hat.: 1
cat: 1
The: 1
____________________________

# Step 6 - without all of the extra puts statements (just the final output)

puts "Type a sentence so we can count the words:"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1}
frequencies = frequencies.sort_by { |word, number| number }
frequencies = frequencies.reverse!
frequencies.each { |word, number| puts "#{word} #{number}" }

# Console output:
Type a sentence so we can count the words:
 The cat and the bat ate the rat and the hat.
the: 3
and: 2
bat: 1
ate: 1
rat: 1
hat.: 1
cat: 1
The: 1
____________________________

# Step 6 - rewritten using concatenation and .to_s method for number conversion

puts "Type a sentence so we can count the words:"
text = gets.chomp
words = text.split
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1}
frequencies = frequencies.sort_by { |word, number| number }
frequencies = frequencies.reverse!
frequencies.each { |word, number| puts word + " " + number.to_s }

# Console output:
Type a sentence so we can count the words:
 The cat and the bat ate the rat and the hat.
the 3
and 2
bat 1
ate 1
rat 1
hat. 1
cat 1
The 1
____________________________

# Note that only putting one variable in the final .each method
# when using a multi-dimensional array will return the inner array as it iterates

puts "Type a sentence so we can count the words:"
text = gets.chomp
puts "\n"
words = text.split
frequencies = Hash.new(0)
words.each {|word| frequencies[word] += 1}
frequencies = frequencies.sort_by { |word, number| number }
frequencies = frequencies.reverse!
frequencies.each { |inner_array| puts "#{inner_array}" }


# Console output:
Type a sentence so we can count the words:
The cat and the bat ate the rat and the hat.

["the", 3]
["and", 2]
["bat", 1]
["ate", 1]
["rat", 1]
["hat.", 1]
["cat", 1]
["The", 1]
____________________________
____________________________
____________________________

Methods, Blocks and Sorting
____________________________
____________________________
____________________________

# Example method to determine if a number is prime or not

def prime(n)
  puts "That's not an integer." unless n.is_a? Integer
  is_prime = true
  for i in 2..n-1
    if n % i == 0
      is_prime = false
    end
  end
  if is_prime
    puts "#{n} is prime!"
  else
    puts "#{n} is not prime."
  end
end

prime(2)
prime(9)
prime(11)
prime(51)
prime(97)

# Console output:
2 is prime!
9 is not prime.
11 is prime!
51 is not prime.
97 is prime!
____________________________

# Simple example method

def puts_1_to_10
  (1..10).each { |i| puts i }
end

puts_1_to_10 # Ignore this for now. We'll explain it soon!

# Console output:
1
2
3
4
5
6
7
8
9
10
____________________________

# A very simple method

# Define your method below!

def greeting
    puts "Hey there!"
end

# Define your method above this line.

greeting # Ignore this for now. We'll explain
         # it in the next exercise!

# Console output:
Hey there!
____________________________

# Another simple method
# The .to_a method is used to create an array based on the specified range
# (1..10) means "the numbers 1 - 10 (inclusive)"

def array_of_10
  print (1..10).to_a
end

array_of_10

# Console output
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
____________________________

# Defining a method that accepts (expects) an argument

def square(n)
  puts n ** 2
end

square(12)

# Console output:
144
____________________________

# Another method that uses an argument

def cubertino(n)
  puts n ** 3
end

cubertino(8)

# Console output:
512
____________________________

# Using splat arguments (*argument)
# When it's not clear how many arguments there will be

def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up", "Justin", "Ben", "Kevin Sorbo")

# Console output:
What up, Justin!
What up, Ben!
What up, Kevin Sorbo!
____________________________

# Splat argument is optional
# If not specified, won't return anything (no error)

def what_up(greeting, *bros)
  bros.each { |bro| puts "#{greeting}, #{bro}!" }
end
 
what_up("What up")

# Console output:

____________________________

# Using return to have a method return a value

def double(n)
  return n * 2
end

output = double(6)
output += 2
puts output

# Console output:
14
____________________________

# Method to return the sum of two numbers

def add(a, b)
    return a + b
end

sum = add(2, 3)
print sum

# Console output:
5
____________________________

# Method to return boolean (true/false) based on divisibility by 5

def by_five?(n)
    return n % 5 == 0
end

result = by_five?(20)
puts result

# Console output:
true
____________________________

# Example methods

def greeter(name)
    return "Hey there, #{name}!"
end

def by_three?(number)
    return number % 3 == 0
end

hello = greeter("Yuri")
puts hello

eleven = by_three?(11)
puts eleven

# Console output:
Hey there, Yuri!
false
____________________________

# Blocks are methods without a name
# Similar to anonymous functions in JavaScript
# or lambdas in Python
# Can be defined with do/end or {}

1.times do
  puts "I'm a code block!"
end

1.times { puts "As am I!" }

# Console output
I'm a code block!
As am I!

' # fix formatting in editor
____________________________

# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

# Console output:
Ryan
Jane
Ryan
Jane
____________________________

# Use indexing to parse substrings
string = "Austin"

puts "Use [1..-1] for the 2nd to the last character in a string:"
puts string[1..-1] # ustin
puts "\n"

# Visual example:
#     |'A' 'u' 's' 't' 'i' 'n'|'A' 'u' 's' 't' 'i' 'n'|          
#  -7  -6  -5  -4  -3  -2  -1   0   1   2   3   4   5   6 
# nil |                you can use this               | all

puts "Output within the range, starting from first character:"
puts string[0..-2] # Austi
puts string[0..-3] # Aust
puts string[0..-4] # Aus
puts string[0..-5] # Au
puts string[0..-6] # A
puts string[0..0]  # A
puts string[0..1]  # Au
puts string[0..2]  # Aus
puts string[0..3]  # Aust
puts string[0..4]  # Austi
puts string[0..5]  # Austin
puts "\n"

puts "Output outside the range, starting from first character:"
puts string[0..-8] # <nil>
puts string[0..-7] # <nil>
puts string[0..6]  # Austin
puts string[0..7]  # Austin
____________________________

# Iterating through an array using the .each method

# The block, {|i| puts i}, is passed the current
# array item each time it is evaluated. This block
# prints the item. 
[1, 2, 3, 4, 5].each { |i| puts i }

# This block prints the number 5 for each item.
# (It chooses to ignore the passed item, which is allowed.)
[1, 2, 3, 4, 5].each { |i| puts 5 }

# This block prints each item multiplied by 5.
[1, 2, 3, 4, 5].each { |i| puts i * 5 }

# Console output:
1
2
3
4
5
5
5
5
5
5
5
10
15
20
25
____________________________

# Using the .sort! method to sort number in an array (ascending)

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

# Call the sort! method on my_array below.
# my_array should then equal [1, 2, 3, 4, 5, 6, 7, 8, 9].
print my_array.sort!

# Console output:
[1, 2, 3, 4, 5, 6, 7, 8, 9]
____________________________

# Using the .sort! method to sort strings in an array (alphabetically)

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

print books.sort!

# Console output:
["A Brief History of Time", "A Wrinkle in Time", "Charlie and the Chocolate Factory", "Utopia", "War and Peace"]
____________________________

# Comparing two objects (operands) using the combined comparison operator
# Returns 0 if both operands are equal
# Returns 1 if the first operand is greater than the second
# Returns -1 if the first operand is less than the second

book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"

book_1 <=> book_2

# Console output:
1
____________________________

# Sorting an array in ascending and descending order
# The .sort method accepts a block as an optional argument to specify how to compare items

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# To sort books in descending order, in-place
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

puts books

# Console output:
War and Peace
Utopia
Charlie and the Chocolate Factory
A Wrinkle in Time
A Brief History of Time
____________________________

# Calculate the sum of an array of numbers

numbers = [5, 2, 8]
sum = 0

numbers.each do |n|
  sum += n
end

puts sum

# Console output:
15
____________________________

# Using a block with the .each method to print the square of each number in an array

my_array = [1, 2, 3, 4, 5]

my_array.each { |n| puts n * n }

# Console output:
1
4
9
16
25
____________________________

# Sort an array in descending order using a block and the combined comparison operator

fruits = ["orange", "apple", "banana", "pear", "grapes"]

fruits.sort! { |x, y| y <=> x }
puts fruits

# Console output:
pear
orange
grapes
banana
apple
____________________________

# Sorting the array using an if/else construct
# Uses the same logic as the combined comparison operator

fruits = ["orange", "apple", "banana", "pear", "grapes"]

def comparison(x, y)
  if x > y
    return 1
  elsif x < y
    return -1
  else
    return 0
  end
end

fruits.sort! { |x, y| comparison(y, x) }
puts fruits

# Console output:
pear
orange
grapes
banana
apple
____________________________
____________________________
____________________________

Ordering Your Library
____________________________
____________________________
____________________________

def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"

# Console output:
A-Z: ["Absalom, Absalom!", "Code Complete", "Heart of Darkness", "The Lorax", "The Prophet"]
Z-A: ["The Prophet", "The Lorax", "Heart of Darkness", "Code Complete", "Absalom, Absalom!"]
____________________________




____________________________




____________________________




____________________________




____________________________









____________________________
____________________________
____________________________

Ruby in Twenty Minutes

Per:
https://www.ruby-lang.org/en/documentation/quickstart/
____________________________
____________________________
____________________________

# Launch Ruby from the terminal (after install)

irb
____________________________

# Print "Hello World"

puts "Hello World!"
____________________________

# Use the .sqrt() function from the Math module

Math.sqrt(9)
____________________________

# Define variables and call

a = 3**2
=> 9
b = 4**2
=> 16
Math.sqrt(a+b)
=> 5.0
____________________________

# Define a method to print "Hello World!"
#  Can use empty parentheses, but not needed

def hi
puts "Hello World!"
end
=> :hi
hi
=> Hellow World!
____________________________

# Adjust method to include a parameter for a name
#  The bit between the braces is turned into a string if it isn't one already
#  and then substituted into the outer string

def hi(name)
puts "Hello #{name}!"
end
=> :hi
hi("Luma")
=> Hello Luma!
____________________________

# Adjust method to automatically capitalize the name
#  Also include a default parameter (World) if none is specified

def hi(name = "World")
puts "Hello #{name.capitalize}!"
end
=> :hi
hi("luma")
=> Hello Luma!
hi
=> Hello World!
____________________________

# Create a "Greeter" class to remember your name and welcomes you

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #(@name}, come back soon."
  end
end

greeter = Greeter.new("Pat")
greeter.say_hi
greeter.say_bye

# Conesole output:
Hi Pat!
Bye Pat, come back soon.
____________________________

# List the methods present for a class
#  All ancestor-class (public instance) methods except say_hi and say_bye

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #(@name}, come back soon."
  end
end

print Greeter.instance_methods

#Console output:
[:say_hi, :say_bye, :instance_of?, :public_send, :instance_variable_get,
:instance_variable_set, :instance_variable_defined?, :remove_instance_variable,
:private_methods, :kind_of?, :instance_variables, :tap, :is_a?, :extend,
:to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze,
:inspect, :display, :object_id, :send, :to_s, :method, :public_method,
:singleton_method, :define_singleton_method, :nil?, :hash, :class,
:singleton_class, :clone, :dup, :itself, :taint, :tainted?, :untaint,
:untrust, :trust, :untrusted?, :methods, :protected_methods, :frozen?,
:public_methods, :singleton_methods, :!, :==, :!=, :__send__,
:equal?, :instance_eval, :instance_exec, :__id__]
____________________________

# List the methods present for a class (using puts for different listing format)
#  All ancestor-class (public instance) methods except say_hi and say_bye

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #(@name}, come back soon."
  end
end

puts Greeter.instance_methods

#Console output:
say_hi
say_bye
instance_of?
public_send
instance_variable_get
instance_variable_set
instance_variable_defined?
remove_instance_variable
private_methods
kind_of?
instance_variables
tap
is_a?
extend
to_enum
enum_for
<=>
===
=~
!~
eql?
respond_to?
freeze
inspect
display
object_id
send
to_s
method
public_method
singleton_method
define_singleton_method
nil?
hash
class
singleton_class
clone
dup
itself
taint
tainted?
untaint
untrust
trust
untrusted?
methods
protected_methods
frozen?
public_methods
singleton_methods
!
==
!=
__send__
equal?
instance_eval
instance_exec
__id__
____________________________

# List the defined methods for a class
#  Use the "false" parameter to exclude ancestor-class (public instance) methods

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #(@name}, come back soon."
  end
end

print Greeter.instance_methods(false)

#Console output:
[:say_hi, :say_bye]
____________________________

# Using attr_accessor to create methods used to access a class variable value

class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end

greeter = Greeter.new("Pat")

class Greeter
  attr_accessor :name
end

# Determine if class now has a name method (true/false)
puts greeter.respond_to?("name")

# Determine if class also has a name= method (true/false)
puts greeter.respond_to?("name=")

# Test name methods
puts " "
puts greeter.name
puts " "
puts Greeter.instance_methods(false)
puts " "

# Test name= method
greeter.name="Dog"
puts greeter.name

# Console output:
true
true

Pat

name
name=
say_hi
say_bye

Dog
____________________________

# Example

class MegaGreeter
  attr_accessor :names

  # Create the object
  def initialize(names = "World")
    @names = names
  end

  # Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")
      # Join the list elements with commas
      puts "Goodbye #{@names.join(", ")}.  Come back soon!"
    else
      puts "Goodbye #{@names}.  Come back soon!"
    end
  end
end

# __FILE__ contains the name of the current file
# $0 is the name of the file used to start the program
# If the file to be used as a library, don't execute that file
# If the file is being used as an executable, then execute that file
if __FILE__ == $0
  mg = MegaGreeter.new
  mg.say_hi
  mg.say_bye

  # Change name to be "Zeke"
  mg.names = "Zeke"
  mg.say_hi
  mg.say_bye

  # Change the name to an array of names
  mg.names = ["Albert", "Brenda", "Charles",
              "Dave", "Engelbert"]
  mg.say_hi
  mg.say_bye

  # Change to nil
  mg.names = nil
  mg.say_hi
  mg.say_bye
end

# Console output:
Hello World!
Goodbye World.  Come back soon!
Hello Zeke!
Goodbye Zeke.  Come back soon!
Hello Albert!
Hello Brenda!
Hello Charles!
Hello Dave!
Hello Engelbert!
Goodbye Albert, Brenda, Charles, Dave, Engelbert.  Come back soon!
...
...
____________________________
____________________________
____________________________

Tests and notes based on examples from Ruby in Twenty Minutes
____________________________
____________________________
____________________________

#Enter an all caps word for a demo of how bang is used

print "Enter string to translate: "

user_input = gets.chomp
puts "1) The user_input variable is " + user_input

user_input.downcase
puts "2) No bang, so the user_input variable is still " + user_input

test = user_input.downcase
puts "3) The test variable is " + test

user_input.downcase!
puts "4) Used a bang, so user_input variable is now " + user_input

if user_input.include? "s"
  print user_input.gsub!(/s/, "th")
else
  print %Q(No "s" so nothing to translate!)
end

#Console output:
Enter string to translate: TEST
1) The user_input variable is TEST
2) No bang, so the user_input variable is still TEST
3) The test variable is test
4) Used a bang, so user_input variable is now test
tetht
____________________________

# Example to demonstrate braces needed for string interpolation

n = "something"

puts "Hey, there's #(n) wrong here!"
puts "Hey, there's #[n] wrong here!"
puts "Hey, there's #{n} wrong here!"

# Console output:
Hey, there's #(n) wrong here!
Hey, there's #[n] wrong here!
Hey, there's something wrong here!

' # fix formatting in editor
____________________________

# Example to illustrate difference between
#  string concatenation and interpolation
#
# In Ruby, interpolation is usually preferred
#
# Note that interpolation only works with double quotes

i = "World"

# Concatenation method
puts "Hello " + i + "!"
# Output:
#  Hello World!

# String interpolation method (double quotes)
puts "Hello #{i}!"
# Output:
#  Hello World!

# String interpolation method (single quotes)
puts 'Hello #{i}!'
# Output:
#  Hello #{i}!

#Console output:
Hello World!
Hello World!
Hello #{i}!
____________________________

# Example of a class with default values specified in the initialize method

class Fruit
  attr_accessor :condition

  def initialize
    @kind = "apple"
    @condition = "ripe"
  end

  def inspect
    print "A #{@condition} #{@kind}."
  end
end

f1 = Fruit.new
f1.inspect

# Console output:
A ripe apple.
____________________________

# Example of a class with an argument and no default values specified in the initialize method
#  Must specify the argument (k) when creating a new instance

class Fruit
  attr_accessor :condition

  def initialize(k)
    @kind = k
    @condition = "ripe"
  end

  def inspect
    print "A #{@condition} #{@kind}."
  end
end

f2 = Fruit.new "mango"
f2.inspect

# Console output:
A ripe mango.
____________________________

# Example of a class with an argument and default values specified in the initialize method
#  Can either specify the argument (k) or use default values when creating a new instance

class Fruit
  attr_accessor :condition

  def initialize(k = "apple")
    @kind = k
    @condition = "ripe"
  end

  def inspect
    puts "A #{@condition} #{@kind}."
  end
end

f3 = Fruit.new "banana"
f3.inspect
f4 = Fruit.new
f4.inspect

# Console output:
A ripe banana.
A ripe apple.
____________________________

# Ancestor class (public instance) methods
#  Definitions here in the Public Instances Methods section:
#  https://ruby-doc.org/core-2.3.3/Object.html
#  * ordered alphabetically here for reference ease

!
!~
!=
__id__
__send__
<=>
=~
==
===
class
clone
define_singleton_method
display
dup
enum_for
eql?
equal?
extend
freeze
frozen?
hash
inspect
instance_eval
instance_exec
instance_of?
instance_variable_defined?
instance_variable_get
instance_variable_set
instance_variables
is_a?
itself
kind_of?
method
methods
nil?
object_id
private_methods
protected_methods
public_method
public_methods
public_send
remove_instance_variable
respond_to?
send
singleton_class
singleton_method
singleton_methods
taint
tainted?
tap
to_enum
to_s
trust
untaint
untrust
untrusted?
____________________________

# Use respond_to? to determine if an object supports a method
#  Duck typing = don't worry about the type of an object,
#   just see what methods the object supports to determine how to work with it
#  "If it walks and quacks like a duck..."

items = ["one", "two", "three", "four"]
item = "five"

# String method
puts item.respond_to?("chomp")

#  Array class methods
#  https://ruby-doc.org/core-2.2.0/Array.html
puts items.respond_to?("each")
puts items.respond_to?("join")
puts items.respond_to?("length")
puts items.respond_to?("count")
puts items.respond_to?("push")
puts items.respond_to?("unshift")
puts items.respond_to?("insert")
puts items.respond_to?("pop")
puts items.respond_to?("shift")
puts items.respond_to?("delete")
puts items.respond_to?("compact")
puts items.respond_to?("uniq")
puts items.respond_to?("uniq!")

# Array method doesn't work for string
puts item.respond_to?("each")

# String method doesn't work for array
puts items.respond_to?("chomp")

# Console output:
true
true
true
true
true
true
true
true
true
true
true
true
true
true
false
false
____________________________

# Iterating through a list using the .each method
# The each method calls "yield <item>" for each item in a list

items = ["one", "two", "three", "four"]

items.each do |n|
  puts "Number #{n}!"
end

# Console output:
Number one!
Number two!
Number three!
Number four!
____________________________

# Concatenate items in a list using the .join method

items = ["one", "two", "three", "four"]

puts "Let's count: #{items.join(", ")}!"

# Console output:
Let's count: one, two, three, four!

' # fix formatting in Notepad ++
____________________________

# Only run the following code when this file is the main file being run
# instead of having been required or loaded by another file

if __FILE__ == $0
  <do something>
end
____________________________
____________________________
____________________________

Mined Minds classwork & homework
____________________________
____________________________
____________________________

# 2016.01.13 Mined Minds webdev homework
#
# Variations to print 1 - 100 to the screen
#
# If number is divisible by 3, replace number with "Mined"
# If number is divisible by 5, replace number with "Minds"
# If number is divisible by 3 & 5 (15), replace number with "Mined Minds"

# Method 1
# "Standard" version using if/elsif/else construct
def if_else()
  for num in 1..100
    if num % 3 == 0 && num % 5 == 0
      puts "Mined Minds"
    elsif num % 3 == 0
      puts "Mined"
    elsif num % 5 == 0
      puts "Minds"
    else
      puts num
    end
  end
end

# Method 2
# Single line version of if_else() using semi-colons to continue
# Demo-only - not the most readable
def one_liner()
  for num in 1..100; if num % 3 == 0 && num % 5 == 0; puts "Mined Minds"; elsif num % 3 == 0; puts "Mined"; elsif num % 5 == 0; puts "Minds"; else puts num; end; end
end

# Method 3
# A variation using one line for conditional statement via chained logical operators
# Has more of a SQL feel to it (where ___ or ___ or ___)
def log_ops()
  for num in 1..100
    num = ("Mined Minds" if num % 3 == 0 && num % 5 == 0) || ("Mined" if num % 3 == 0) || ("Minds" if num % 5 == 0) || num
    puts num
  end
end

# Method 4
# A variation using lambda literals with a case statement
def lambda_case()
  div_3 = ->(x) { x % 3 == 0 }
  div_5 = ->(x) { x % 5 == 0 }
  div_15 = ->(x) { x % 15 == 0 }
  for num in 1..100
    case num
      when div_15 then puts "Mined Minds"
      when div_3 then puts "Mined"
      when div_5 then puts "Minds"
      else puts num
    end
  end
end

# Method 5
# A variation that uses a custom method to determine divisibility
# instead of the modulo operator
def evenly_divisible(dividend, divisor)
  quotient = dividend.to_f / divisor
  remainder = quotient - quotient.to_int
  if remainder > 0
    return false
  else
    return true
  end
end

def custom_modulo()
  for num in 1..100
    if evenly_divisible(num, 3) && evenly_divisible(num, 5)
      puts "Mined Minds"
    elsif evenly_divisible(num, 3)
      puts "Mined"
    elsif evenly_divisible(num, 5)
      puts "Minds"
    else
      puts num
    end
  end
end

# Method 6
# A variation that uses list comprehension and map method to populate an array
def list_comprehension()
  values = []
  (1..100).each { |num| values.push(num) }
  values.map! { |value| (value % 3 != 0 || value % 5 != 0) ? value : "Mined Minds" }
  values.map! { |value| value % 3 != 0 ? value : "Mined" }
  values.map! { |value| value % 5 != 0 ? value : "Minds" }
  puts values
end

# Method 7
# Another variation that uses a custom modulo method which converts each number
# to a different base (base3, base5) and then evaluates the rightmost digit (slice)
# to assess for divisibility
def base_slice(number, base)
  converted = number.to_s(base)
  ones_place = converted[-1]
  if ones_place.to_i == 0
    return true
  else
    return false
  end
end

def base_conversion()
  for num in 1..100
    if base_slice(num, 3) && base_slice(num, 5)
      puts "Mined Minds"
    elsif base_slice(num, 3)
      puts "Mined"
    elsif base_slice(num, 5)
      puts "Minds"
    else
      puts num
    end
  end
end

# Method to prompt user for method to use
def user_input()
  puts "\nMethod 1 - If/Else"
  puts "Method 2 - Single Line If/Else"
  puts "Method 3 - Chained Logical Operators"
  puts "Method 4 - Lambdas + Case Statement"
  puts "Method 5 - Custom Modulo"
  puts "Method 6 - List Comprehension"
  puts "Method 7 - Base Conversion"
  print "\nSelect a method number and press Enter:"
  input = gets.chomp
  test_input(input)
end

# Method to evaluate user input for multiple or invalid method numbers
def test_input(selection)
  valid_methods = ["1", "2", "3", "4", "5", "6", "7"]
  compare = selection.split("")
  intersection = valid_methods & compare
  if intersection.size > 1
    puts "\nYour input contained multiple valid method numbers - please try again."
    user_input()
  elsif intersection.empty? == false
    user_selection(intersection.join)
  else
    puts "\nNo valid method number specified - please try again."
    user_input()
  end
end

# Method to confirm user input and advise on method being run
def user_selection(method)
  methods_text = { 
    "1" => "1 - If/Else...",
    "2" => "2 - Single Line If/Else...",
    "3" => "3 - Chained Logical Operators...",
    "4" => "4 - Lambdas + Case Statement...",
    "5" => "5 - Custom Modulo...",
    "6" => "6 - List Comprehension...",
    "7" => "7 - Base Conversion..."
  }
  puts "\nYour input contained '#{method}' - running Method #{methods_text[method]}"
  puts "\n"
  run_method(method)
end

# Method to run the selected method
def run_method(item)
  case item
    when "1" then if_else()
    when "2" then one_liner()
    when "3" then log_ops()
    when "4" then lambda_case()
    when "5" then custom_modulo()
    when "6" then list_comprehension()
    when "7" then base_conversion()    
  end
end

user_input()
____________________________

# mpokropowicz's one liner
# Max

(1..100).each {|n| puts (n%3==0 && n%5==0 ? 'Mined Minds' : n %3==0 ? 'Mined' : n%5==0 ? 'Minds' : n) } 
____________________________

# Benchmark testing different methods
# - Iterating 1 - 1,000,000 for more comparable values
########################
# Per:
# http://rubylearning.com/blog/2013/06/19/how-do-i-benchmark-ruby-code/
########################
# require 'benchmark'
# 
# Benchmark.bmbm do |bm|
# bm.report { first_approach }
# bm.report { alternative_approach }
# end
########################

require 'benchmark'

# Custom modulo method 1
# Used by "custom modulo" method
def evenly_divisible(dividend, divisor)
  quotient = dividend.to_f / divisor
  remainder = quotient - quotient.to_int
  if remainder > 0
    return false
  else
    return true
  end
end

# Custom module method 2
# Used by "base conversion" method
def base_slice(number, base)
  converted = number.to_s(base)
  ones_place = converted[-1]
  if ones_place.to_i == 0
    return true
  else
    return false
  end
end

# Benchmark#bmbm method
Benchmark.bmbm (18) do |bm|

  bm.report ("if else") do
    for num in 1..1_000_000
      if num % 3 == 0 && num % 5 == 0
        num = "Mined Minds"
      elsif num % 3 == 0
        num = "Mined"
      elsif num % 5 == 0
        num = "Minds"
      else
        num
      end
    end
  end

  bm.report ("one liner") do
      for num in 1..1_000_000; if num % 3 == 0 && num % 5 == 0; num = "Mined Minds"; elsif num % 3 == 0; num = "Mined"; elsif num % 5 == 0; num = "Minds"; else num; end; end
  end

  bm.report ("log ops") do
    for num in 1..1_000_000
      num = ("Mined Minds" if num % 3 == 0 && num % 5 == 0) || ("Mined" if num % 3 == 0) || ("Minds" if num % 5 == 0) || num
    end
  end

  bm.report ("lambda case") do
    div_3 = ->(x) { x % 3 == 0 }
    div_5 = ->(x) { x % 5 == 0 }
    div_15 = ->(x) { x % 15 == 0 }
    for num in 1..1_000_000
      case num
        when div_15 then num = "Mined Minds"
        when div_3 then num = "Mined"
        when div_5 then num = "Minds"
        else num
      end
    end
  end

  bm.report ("custom modulo") do
    for num in 1..1_000_000
      if evenly_divisible(num, 3) && evenly_divisible(num, 5)
        num = "Mined Minds"
      elsif evenly_divisible(num, 3)
        num = "Mined"
      elsif evenly_divisible(num, 5)
        num = "Minds"
      else
        num
      end
    end
  end

  bm.report ("list comprehension") do
    values = []
    (1..1_000_000).each { |num| values.push(num) }
    values.map! { |value| (value % 3 != 0 || value % 5 != 0) ? value : "Mined Minds" }
    values.map! { |value| value % 3 != 0 ? value : "Mined" }
    values.map! { |value| value % 5 != 0 ? value : "Minds" }
  end

  bm.report ("base conversion") do
    for num in 1..1_000_000
      if base_slice(num, 3) && base_slice(num, 5)
        num = "Mined Minds"
      elsif base_slice(num, 3)
        num = "Mined"
      elsif base_slice(num, 5)
        num = "Minds"
      else
        num
      end
    end
  end
end

=begin

Console output for benchmark tests

Rehearsal ------------------------------------------------------
if else              0.140000   0.000000   0.140000 (  0.152638)
one liner            0.156000   0.000000   0.156000 (  0.152954)
log ops              0.172000   0.000000   0.172000 (  0.169493)
lambda case          0.374000   0.000000   0.374000 (  0.377180)
custom modulo        1.186000   0.000000   1.186000 (  1.183338)
list comprehension   0.717000   0.016000   0.733000 (  0.735474)
base conversion      1.685000   0.000000   1.685000 (  1.682503)
--------------------------------------------- total: 4.446000sec

                         user     system      total        real
if else              0.156000   0.000000   0.156000 (  0.167813)
one liner            0.156000   0.000000   0.156000 (  0.148509)
log ops              0.156000   0.000000   0.156000 (  0.161253)
lambda case          0.343000   0.000000   0.343000 (  0.352529)
custom modulo        1.202000   0.000000   1.202000 (  1.203156)
list comprehension   0.733000   0.015000   0.748000 (  0.744508)
base conversion      1.654000   0.016000   1.670000 (  1.691233)
  
=end
____________________________

# Moved user_input(), test_input(), user_selection() and run_method() methods
# into Method_Select.rb file (module) in same directory as main program (main.rb)
# The following are lines in main.rb for loading the Method_Select module

$LOAD_PATH << '.'
require "Method_Select.rb"

# Test to see if the methods defined in the Method_Select module are properly loaded
# Note - this only worked because method names weren't prefixed properly in the module
# ---> See the next note!
print Method_Select.instance_methods

# Console output:
[:user_input, :test_input, :user_selection, :run_method]
____________________________

# Note on moving methods into a module - need to prefix the method name with the module name
# Otherwise will get an error when trying to call method
# Ex: Method_Select.user_input()

module Method_Select

  def Method_Select.user_input()
    puts ...

  def Method_Select.test_input(selection)
    valid_methods ...

  def Method_Select.user_selection(method)
    methods_text ...

  def Method_Select.run_method(item)
    case ...

end
____________________________

# Rewritten to populate an array

def minedminds()
  range = []
  num = 1
  for item in (1..100)
    if item % 3 == 0 && item % 5 == 0
      range.push("Mined Minds")
    elsif item % 3 == 0
      range.push("Mined")
    elsif item % 5 == 0
      range.push("Minds")
    else
      range.push(num)
    end 
        num += 1
  end
  return range
end
____________________________

# In-class demonstration version using array
# Josh

def mined_minds_array()

  my_array = []
  num = 0

  100.times do
    num += 1
    if num % 3 == 0 && num % 5 == 0
      my_array.push("Mined Minds")
    elsif num % 3 == 0
      my_array.push("Mined")
    elsif num % 5 == 0
      my_array.push("Minds")
    else    
      my_array.push(num)
    end
  end

  return my_array

end
____________________________

# 2017-01-18 Random Pairing assignment
#
# Develop a function using Test Driven Devleopment that meets the following criteria:
# - takes an array of names
# - returns an array of arrays (multi-dimensional array)
# - if there is an odd number of names, adds the last name into one of the other sub-arrays
# - per assignment name, pairings should be randomly generated each time function runs

# Array containing 21 names of Pittsburgh TechHire web dev training team
names = [
  "Allen Weber",
  "Brian Lewis",
  "Cummie Washington",
  "Dover Hellfeldt",
  "Edwin Wells",
  "Frank Mugo",
  "Frank Coleman",
  "George Bruner",
  "Jayvon Harris",
  "John Verbosky",  # comment out to test for even number of array items
  "Khalifa Cochran",
  "Lee Brown",
  "Lisa Petrovich",
  "Matt Teitz",
  "Max Pokropowicz",
  "Mike Ciletti",
  "Pat Wehman",
  "Patrick Roberts",
  "Sherri Dyson",
  "Takhir Salimov",
  "Teela Subba"
]

# Function to verify that object being passed in is an array
# Corresponds to test_1_array_parameter
def array_test(a)
  if a.class == Array
    #puts "Run string_test(a)..."  # inline test
    #return true   # for testing, comment out for production
    string_test(a)  # for production, comment out for testing
  end
end

# Function to verify that all array members are strings
# Corresponds to test_2_string_test
def string_test(b)
  test = []
  b.each do |item|
    if item.class == String
      test.push true
    else
      test.push false
    end
  end
  if test.include? false
    return false
  else
    #puts "Run random_sort(b)..."  # inline test
    #return true   # for testing, comment out for production
    random_sort(b)  # for production, comment out for testing
  end
end

# Function to randomly scramble items in the array and verify that array members haven't changed
# Corresponds to test_3_random_sort
def random_sort(c)
  scrambled = c.shuffle
  if c - scrambled == [] && scrambled - c == []
    #puts "Run pair_names(scrambled)..."  # inline test
    #return true   # for testing, comment out for production
    pair_names(scrambled)  # for production, comment out for testing
  end
end

# Function to change array into a multi-dimensional array with an inner array for every two names
# Ex: [[name1,name2],[name3,name4],[name5,name6]]
# Corresponds to test_4_pair_names
def pair_names(d)
  paired = d.each_slice(2).to_a
  #puts "Run evaluate_pairs(paired)..."  # inline test
  #return paired  # for testing, comment out for production
  evaluate_pairs(paired)  # for production, comment out for testing
end

# Function to determine if the final inner array is paired or solitary
# If paired call list_pairs_even(), if solitary, call list_pairs_odd()
# Corresponds to test_5_evaluate_odd
# and test_6_evaluate_even
def evaluate_pairs(e)
  last = e.count - 1
  if e[last].count == 1
    #puts "Run merge_pairs_odd(e)..."  # inline test
    #return true  # for testing, comment out for production
    merge_pairs_odd(e)  # for production, comment out for testing
  else
    #puts "Run list_pairs_even(e)..."  # inline test
    #return false  # for testing, comment out for production
    list_pairs_even(e)  # for production, comment out for testing
  end
end

# Function to list array pairs when final inner array has two names
# Only use in production
def list_pairs_even(pairs)
  counter = 1
  pairs.each do |name1, name2| 
    puts "Random Pair #{counter}: #{name1}, #{name2}"
    counter += 1
  end
end

# Function to combine last two inner arrays when final inner array has one name
# Final inner array will then have 3 members
# Corresponds to test_7_merge_pairs_odd
def merge_pairs_odd(multi)
  last = multi.count - 1
  next_to_last = multi.count - 2
  # Perform a union on the last two arrays
  # Google: set operators with Ruby arrays
  together = multi[next_to_last] | multi[last]
  # Assign the next-to-the-last inner array the union value (3 items)
  multi[next_to_last] = together
  # Delete the last array
  multi.delete_at(last)
  #puts "Run list_pairs_odd(multi)..."  # inline test
  #return multi # for testing, comment out for production
  list_pairs_odd(multi)  # for production, comment out for testing
end

# Function to list array pairs when final inner array has an three names
# Only use in production
def list_pairs_odd(merged)
  pairs = merged[0..-2]
  final = merged.count - 1
  counter = 1
  pairs.each do |name1, name2| 
    puts "Random Pair #{counter}: #{name1}, #{name2}"
    counter += 1
  end
  puts "Random Pair #{counter}: #{merged[final][0]}, #{merged[final][1]}, #{merged[final][2]}"
end

array_test(names)

# Example output for even number of items in names[]

# Random Pair 1: Lisa Petrovich, Patrick Roberts
# Random Pair 2: Max Pokropowicz, Frank Mugo
# Random Pair 3: Dover Hellfeldt, Takhir Salimov
# Random Pair 4: Frank Coleman, Edwin Wells
# Random Pair 5: Jayvon Harris, Pat Wehman
# Random Pair 6: Cummie Washington, Teela Subba
# Random Pair 7: Khalifa Cochran, Matt Teitz
# Random Pair 8: Brian Lewis, Lee Brown
# Random Pair 9: Sherri Dyson, George Bruner
# Random Pair 10: Mike Ciletti, Allen Weber

# Example output for odd number of items in names[]

# Random Pair 1: John Verbosky, Frank Mugo
# Random Pair 2: Pat Wehman, Edwin Wells
# Random Pair 3: Frank Coleman, George Bruner
# Random Pair 4: Brian Lewis, Teela Subba
# Random Pair 5: Cummie Washington, Mike Ciletti
# Random Pair 6: Sherri Dyson, Max Pokropowicz
# Random Pair 7: Allen Weber, Jayvon Harris
# Random Pair 8: Khalifa Cochran, Matt Teitz
# Random Pair 9: Lee Brown, Dover Hellfeldt
# Random Pair 10: Patrick Roberts, Takhir Salimov, Lisa Petrovich
____________________________

# In-class demonstration version of random pairs
# Josh

def random_pair(names)
  my_array = []

  array_of_items_to_be_paired = names.shuffle.each_slice(2)

  array_of_items_to_be_paired.each do |pairs|
    if pairs.length == 2
      my_array.push(pairs)
    else
      my_array.last.push(pairs[0])  # study this line
    end
  end
  my_array
end

test_array = ["Abe","Bob","Carl","Dave","Ed"]
print random_pair(test_array)
____________________________
____________________________
____________________________

Miscellaneous Notes and Findings
____________________________
____________________________
____________________________

# Example case expression

year = 1972
puts case year
  when 1970..1979
    "Seventies"
  when 1980..1989
    "Eighties"
  when 1990..1999
    "Nineties"
end

# Console output:
Seventies
____________________________

# Another case expression using lambda literals

div_3 = ->(x) { x % 3 == 0 }
div_5 = ->(x) { x % 5 == 0 }
div_15 = ->(x) { x % 15 == 0 }

for num in 1..100
  case num
    when div_15 then puts "Mined Minds"
    when div_3 then puts "Mined"
    when div_5 then puts "Minds"
    else puts num
  end
end
____________________________

# More efficient way to return true/false boolean
#Typical and way too long..
def is_odd(x)
  if x % 2 == 0
    return false
  else
    return true
  end
end

# Same result - more efficient
def is_odd(x)
  x % 2 != 0
end

puts is_odd(3)
puts is_odd(2)

# Console output:
true
false
____________________________

# Using array intersection to determine if any common items
# Using .split("") to convert each character in string into array

selection = "23"
source = ["1", "2", "3", "4"]
compare = selection.split("")

puts (source & compare).any?

# Console output
true
____________________________

# Notes on converting numbers to other bases using .to_s(base)
# number.to_s(base)
# base3 > for each place will count 0, 1, 2
# base5 > for each place will count 0, 1, 2, 3, 4

num1 = 1.to_s(3)  # 1
num2 = 2.to_s(3)  # 2
num3 = 3.to_s(3)  # 10
num4 = 4.to_s(3)  # 11
num5 = 5.to_s(3)  # 12
num6 = 6.to_s(3)  # 20

# Use string slicing to grab the rightmost digit (ones place)
# string[-1]

puts num1.to_s[-1]  # 1
puts num2.to_s[-1]  # 2
puts num3.to_s[-1]  # 0
puts num4.to_s[-1]  # 1
puts num5.to_s[-1]  # 2
puts num6.to_s[-1]  # 0
____________________________

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
names.push["Snoopy"]

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
____________________________




____________________________




____________________________




____________________________




____________________________