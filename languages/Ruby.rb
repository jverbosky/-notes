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

# Passing a default value using a parameter
# If a second parameter isn't specified, "rev" will default to "false"

def alphabetize(arr, rev=false)

end

# Example function calls:
alphabetize(some_array)  # rev isn't specified, so defaults to false
alphabetize(some_array, true)  # true is passed in, so rev is true
____________________________

# Adding logic to the method

def alphabetize(arr, rev=false)
    arr.sort!
end

numbers = [7, 1, 4, 9, 8, 2]

print alphabetize(numbers)

# Console output:
[1, 2, 4, 7, 8, 9]
____________________________

# Adding conditions to the method

def alphabetize(arr, rev=false)
    if rev == true
        arr.sort!.reverse!
    else
        arr.sort!
    end
end

numbers = [7, 1, 4, 9, 8, 2]

p alphabetize(numbers)
p alphabetize(numbers, true)

# Console output:
[1, 2, 4, 7, 8, 9]
[9, 8, 7, 4, 2, 1]
____________________________
____________________________
____________________________

Hashes and Symbols
____________________________
____________________________
____________________________

# Hashes are a collection of keys and values

breakfast = {
  "bacon" => "tasty",
  "eggs" => "tasty",
  "oatmeal" => "healthy",
  "OJ" => "juicy"
}

# Keys must be unique, but values (ex: tasty) can repeat
____________________________

# Can create hashes several different ways, but two most common are:
#
# hash literal notation:

new_hash = { "one" => 1 }

# hash constructor notation:

new_hash = Hash.new
____________________________

# Iterating over a hash using .each to return keys and values
# Access keys in a hash by using "hash_name[key_variable]"

my_hash.each do |key, value|
  puts key, my_hash[key]
end
____________________________

# Example of iterating over a hash to return all values
# Note that the "value" variable must be specified in |x, y| or else nothing is returned

matz = { "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}

matz.each do |key, value|
    puts matz[key]
end

# Console output:
Yukihiro
Matsumoto
47
Japanese
Matz
____________________________

# Non-true values in Ruby
# false == not true
# nil == nothing at all (no value)

# Example of accessing a non-existant key

creatures = { "weasels" => 0,
  "puppies" => 6,
  "platypuses" => 3,
  "canaries" => 1,
  "Heffalumps" => 7,
  "Tiggers" => 1
}

puts creatures["puppies"]
puts creatures["puffs"]

# Console output
6
   # nil
____________________________

# Specifying a default value for a hash to avoid returning nil
# when accessing a non-existant key

no_nil_hash = Hash.new("non-nil default")

puts no_nil_hash["puffs"]

# Console output:
non-nil default
____________________________

# Using symbols in a hash instead of strings

menagerie = {
  :foxes => 2,
  :giraffe => 1,
  :weezards => 17,
  :elves => 1,
  :canaries => 4,
  :ham => 1
}

puts menagerie[:foxes]

# Console output:
2
____________________________

# Symbols in Ruby are sort of like names
# However, they are not the same as strings

"string" == :string  #false
____________________________

# Aside from the syntax, the main difference between symbols and strings is:
# - multiple different strings can have the same value
# - there is only one copy of any particular symbol at any given time
#
# Can use the .object_id method to get the ID of an object

puts "string".object_id
puts "string".object_id  # string with same name, but different object

puts :symbol.object_id
puts :symbol.object_id  # symbol withsame name, same object

# Console output:
14749020  # string 1
14748820  # string 2 - different ID
319528
319528  # same ID for symbol
____________________________

# Symbol syntax
# - always start with a colon (:)
# - name must be a valid Ruby variable name
#   == name must start with a letter or underscore (_)
# - after initial character, any combination of letters, numbers and unscores is allowed
#
# Creating a symbol

my_first_symbol = :puff
____________________________

# Symbols are primarily used as:
# - hash keys
# - referencing method names (discussed later)
#
# Symbols are good hash keys for several reasons:
# - They are immutable (can't be changed once created)
# - Only one copy of any symbol exists at any time (saves memory)
# - As a result, symbol-keys are faster than string-keys

symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3
}
____________________________

# Converting between strings and symbols using .to_s and .to_sym

:sasquatch.to_s  # ==> "sasquatch"

"sasquatch".to_sym  # ==> :sasquatch
____________________________

# Example of converting an array of strings to an array of symbols using .to_sym

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each do |s|
    symbols.push(s.to_sym)
end

print symbols

# Console output:
[:HTML, :CSS, :JavaScript, :Python, :Ruby]
____________________________

# Can also use the .intern method (instead of .to_sym) to convert a string into a symbol

"hello".intern  # ==> :hello
____________________________

# Reworked example of converting an array of strings into symbols using .intern

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []

strings.each do |s|
    symbols.push(s.intern)
end

print symbols

# Console output:
[:HTML, :CSS, :JavaScript, :Python, :Ruby]
____________________________

# The hash syntax of "key => value" is called the "hash rocket" style

numbers = {
  :one => 1,
  :two => "two",
  :three => 3,
}
____________________________

# Example hash of movies using symbols for keys (old syntax)

movies = {
    :Transcendence => "Interesting take on A.I.",
    :Interstellar => "Interesting take on black holes"
}
____________________________

# Example hash of movies using symbols for keys (new syntax - post-1.9)
# - Put the colon at the end of the symbol name, instead of in front of it
# - No longer need the "hash rocket" arrow between each key and value

movies = {
    Transcendence: "Interesting take on A.I.",
    Interstellar: "Interesting take on black holes"
}
____________________________

# Comparing (benchmarking) the speed of strings in a hash against symbols in a hash

require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."

# Console output:
String time: 0.053098199 seconds.  # strings
Symbol time: 0.00968606 seconds.  # symbols
____________________________

# Using .select to filter has values that meet specific criteria

grades = {
  alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

p grades.select {|name, grade| grade < 97}
p grades.select { |k, v| k == :alice }

# Console output
{:bob=>92, :chris=>95}
{:alice=>100}
____________________________

# Example using .select to return all movies with a rating above 3

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

p good_movies = movie_ratings.select { |k, v| v > 3 }

# Console output:
{:primer=>3.5, :the_matrix=>5, :truman_show=>4, :skyfall=>4, :lion_king=>3.5}
____________________________

# Using the .each_key and .each_value methods to iterate over just the keys or values in a hash

my_hash = { one: 1, two: 2, three: 3 }

my_hash.each_key { |k| print k, " " }
print "\n"
my_hash.each_value { |v| print v, " " }

# Console output
one two three   # note the extra space after "three"
1 2 3
____________________________

# Example using the .each_key method

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 3,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

movie_ratings.each_key { |title| puts title }

# Console output
memento
primer
the_matrix
truman_show
red_dawn
skyfall
alex_cross
uhf
lion_king
____________________________
____________________________
____________________________

A Night at the Movies
____________________________
____________________________
____________________________

# Example program that does the following:
# - add a new movie to a hash
# - update the rating for an existing movie
# - display the movies and ratings already in the hash
# - delete a movie from the hash

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."

choice = gets.chomp.downcase
case choice
when 'add'
  puts "What movie do you want to add?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been added with a rating of #{rating}."
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end
when 'update'
  puts "What movie do you want to update?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    puts "What's the new rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
    puts "#{title} has been updated with new rating of #{rating}."
  end
when 'display'
  movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
  end
when 'delete'
  puts "What movie do you want to delete?"
  title = gets.chomp
  if movies[title.to_sym].nil?
    puts "Movie not found!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been removed."
  end
else
  puts "Sorry, I didn't understand you."
end

# Example console output:
What would you like to do?
-- Type 'add' to add a movie.
-- Type 'update' to update a movie.
-- Type 'display' to display all movies.
-- Type 'delete' to delete a movie.
 display
Memento: 3
Primer: 4
Ishtar: 1
____________________________

# Step one - create a hash, prompt user for input and store input in a variable

movies = {
    Transcendence: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase
____________________________

# Step two - adding a case statement for the user input (choice)
# CRUD - Create, Read, Update, Delete

movies = {
    Transcendence: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Added!"
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

# Example console output:
Please make your choice:
 add
Added!
____________________________

# Step three - adding a movie title and rating to the array
# Note: use a single-word title or end up with quotes in symbol
# Ex:   title = :"The Movie"

movies = {
    Transcendence: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Please specify the movie title:"
    title = gets.chomp
    puts "Please specify the rating:"
    rating = gets.chomp
    movies[title] = rating
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

print movies

# Example console output:
Please make your choice:
add
Please specify the movie title:
Interstellar
Please specify the rating:
4
{:Transcendence=>4, "Interstellar"=>"4"} # Note that movie and rating were added as strings
____________________________

# Step five - change the type for title to symbol and the type for rating to integer

movies = {
    Transcendence: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    puts "Please specify the rating:"
    rating = gets.chomp.to_i
    movies[title] = rating
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

print movies

# Example console output:
Please make your choice:
add
Please specify the movie title:
Interstellar
Please specify the rating:
4
{:Transcendence=>4, :Interstellar=>4}  # Note that title and rating are now the correct types
                                       # Could also correct types here before adding to hash:
                                       # movies[title.to_sym] = rating.to_i
____________________________

# Step 6 - add condition for when specified movie is already in list

movies = {
    Transcendence: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    # p title.class  # Symbol
    if movies[title].nil?
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating
    else
        puts "#{title} is already in the list!"
    end
when "update"
    puts "Updated!"
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

print movies

# Example console output:
Please make your choice:
add
Please specify the movie title:
Transcendence
Transcendence is already in the list!
{:Transcendence=>4}
____________________________

# Step seven - build out update case to change the rating of a movie already in the hash

movies = {
    Transcendence: 3,
    Interstellar: 4
}


puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating  # Can use to add key/value pair to existing hash
    else
        puts "#{title} is already in the list!"
    end
when "update"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "That title is not in the list!"
    else
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating  # Can also use to update the value for existing key
    end
when "display"
    puts "Movies!"
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

print movies

# Example console output:
Please make your choice:
 update
Please specify the movie title:
 Transcendence
Please specify the rating:
 4
{:Transcendence=>4, :Interstellar=>4}
____________________________

# Step eight - build out the display case to list all of the movies in the hash

movies = {
    Transcendence: 3,
    Interstellar: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating  # Can use to add key/value pair to existing hash
    else
        puts "#{title} is already in the list!"
    end
when "update"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "That title is not in the list!"
    else
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating  # Can also use to update the value for existing key
    end
when "display"
    movies.each { |title, rating| puts "#{title}: #{rating}" }
when "delete"
    puts "Deleted!"
else
    puts "Error!"
end

print movies

# Example console output:
Please make your choice:
 display
Transcendence: 3
Interstellar: 4
{:Transcendence=>3, :Interstellar=>4}
____________________________

# Step nine - update the delete case statement to remove a specified movie and rating from the hash

movies = {
    Transcendence: 3,
    Interstellar: 4
}

puts "Please make your choice:"

choice = gets.chomp.downcase

case choice
when "add"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating  # Can use to add key/value pair to existing hash
    else
        puts "#{title} is already in the list!"
    end
when "update"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "That title is not in the list!"
    else
        puts "Please specify the rating:"
        rating = gets.chomp.to_i
        movies[title] = rating  # Can also use to update the value for existing key
    end
when "display"
    movies.each { |title, rating| puts "#{title}: #{rating}" }
when "delete"
    puts "Please specify the movie title:"
    title = gets.chomp.to_sym
    if movies[title].nil?
        puts "That title is not in the list!"
    else
        movies.delete(title)  # Delete hash key/value pair via: hash.delete(key)
    end
else
    puts "Error!"
end

print movies

# Example console output:
Please make your choice:
 delete
Please specify the movie title:
Transcendence
{:Interstellar=>4}
____________________________
____________________________
____________________________

The Zen of Ruby
____________________________
____________________________
____________________________

# One-line conditionals using if and unless

ruby_is_eloquent = true
ruby_is_ugly = false

puts "Ruby is eloquent!" if ruby_is_eloquent
puts "Ruby's not ugly!" unless ruby_is_ugly

# Console output:
Ruby is eloquent!
Ruby's not ugly!

' Fix for editor
____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________
____________________________
____________________________

Learn Ruby the Hard Way

Per:
https://learnrubythehardway.org/book/
____________________________
____________________________
____________________________

# Learn Ruby the Hard Way
# Exercise 1: A Good First Program

puts "Hello World!"
puts "Hello Again"
puts "I like typing this."
puts "This is fun."
puts "Yay! Printing."
puts "I'd much rather you 'not'."
puts 'I "said" do not touch this.'

# Console output:
Hello World!
Hello Again
I like typing this.
This is fun.
Yay! Printing.
I'd much rather you 'not'.
I "said" do not touch this.

' # fix formatting in editor
____________________________

# Learn Ruby the Hard Way
# Exercise 2: Comments and Pound Characters
# ~Also known as the octothorpe character~

# A comment, this is so you can read your program later.
# Anything after the # is ignored by ruby.

puts "I could have code like this." # and the comment after is ignored

# You can also use a comment to "disable" or comment out a piece of code:
# puts "This won't run."

puts "This will run."

# Console output:
I could have code like this.
This will run.
____________________________

# Learn Ruby the Hard Way
# Exercise 3: Numbers and Math
# Yes... I'm typing this all out by hand
# I love to type...  ^_^;

# This line just outputs the string
puts "I will now count my chickens:"

# This line outputs: Hens 30
puts "Hens #{25 + 30 / 6}"
# This line outputs: Rosters 97
puts "Roosters #{100 - 225 * 3 % 4}"

# This line just outputs the string again
puts "Now I will count the eggs:"

# This line outputs: 7 (originally)
# Added .to_f method so float returned instead of integer
puts 3 + 2 + 1 - 5 + 4 % 2 - 1.to_f / 4 + 6

# This line yet again outputs the string verbatim
puts "Is it true that 3 + 2 < 5 - 7?"

# This line outputs (evaluates to): false
puts 3 + 2 < 5 - 7

# This line prints the string and evaluates to 5
puts "What is 3 + 2? #{3 + 2}"
# This line prints the string and evaluates to -2
puts "What is 5 - 7? #{5 - 7}"

# This line prints the string verbatim again
puts "Oh, that's why it's false."

# This line prints the string verbatim as well
puts "How about some more."

# This line prints the string and evaluates to: true
puts "Is it greater? #{5 > -2}"
# This line prints the string and also evaluates to: true
puts "is it greater or equal? #{5 >= -2}"
# This line prints the string and evaluates to: false
puts "Is it less or equal? #{5 <= -2}"

# Console output:
I will now count my chickens:
Hens 30
Roosters 97
Now I will count the eggs:
6.75
Is it true that 3 + 2 < 5 - 7?
false
What is 3 + 2? 5
What is 5 - 7? -2
Oh, that's why it's false.
How about some more.
Is it greater? true
is it greater or equal? true
Is it less or equal? false
____________________________

# Something I need to calculate per Exercise 3 - Study Drill #3
# Using rand and modulus to put some random even integers on the screen

n = 0

while n < 10
  n = rand(11)
  if n % 2 == 0
    puts n
  end
end

# Console output:
8
0
0
4
4
2
4
0
6
2
2
4
8
0
10
____________________________

# Learn Ruby the Hard Way
# Exercise 4: Variables and Names

# Defines a constant for the number of cars
cars = 100

# Defines a constant for the number of passengers each car can carry
space_in_a_car = 4.0

# Defines a constant for the number of drivers
drivers = 30

# Defines a constant for the number of passengers
passengers = 90

# Calculates the number of cars not driven, by subtracting the # of drivers from the # of cars
cars_not_driven = cars - drivers

# Sets the number of cars driven equal to the number of drivers
cars_driven = drivers

# Calculates the total carpool capacity by multiplying the # of cars driven by the # of passengers each car can carry
carpool_capacity = cars_driven * space_in_a_car

# Calculates the average # of passengers fo each car by dividing the # of passengers by the number of cars driven (drivers)
average_passengers_per_car = passengers / cars_driven

# Use string interpolation to include variables in strings
puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."

# Zed's undefined local variable error (carpool_capacity) was most likely due to a typo in the variable name.
# As a result, when he called it in the puts statement, it wasn't recognized as a known variable.
#
# 1) It's not necessary, since the number isn't being used in division (where the remainder would be dropped if it's not float).
# 2) True dat.
# 3) Done.
# 4) Yes, but I prefer calling it the "assignment operator" so I don't misuse it when evaluating...
# 5) No problem there.
# 6) Done.  irb; i = 2.3; j = 3.7; i * j; (8.51)

# Console output:
There are 100 cars available.
There are only 30 drivers available.
There will be 70 empty cars today.
We can transport 120.0 people today.
We have 90 to carpool today.
We need to put about 3 in each car.
____________________________

# Learn Ruby the Hard Way
# Exercise 5: More Variables and Printing

name = 'Zed A. Shaw'
age = 35 # not a lie in 2009
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

puts "Let's talk about #{name}."
puts "He's #{height} inches tall."
puts "He's #{weight} pounds heavy."
puts "Actually that's not too heavy."
puts "He's got #{eyes} eyes and #{hair} hair."
puts "His teeth are usually #{teeth} depending on the coffee."

# this line is tricky, try to get it exactly right
puts "If I add #{age}, #{height}, and #{weight} I get #{age + height + weight}."

# 1) Glad I'm using Sublime Text... that took 2 seconds.  ^_^
# 2) Done:

def in_to_cm(inches)
  inches_to_centimeters = inches * 2.54
  puts "Your measurement in centimeters is #{inches_to_centimeters} centimeters."
end

def lb_to_kg(pounds)
  pounds_to_kilograms = pounds * 0.453592
  puts "Your measurement in pounds is #{pounds_to_kilograms} kilograms."
end

in_to_cm(height)
lb_to_kg(weight)

# Console output:
Let's talk about Zed A. Shaw.
He's 74 inches tall.
He's 180 pounds heavy.
Actually that's not too heavy.
He's got Blue eyes and Brown hair.
His teeth are usually White depending on the coffee.
If I add 35, 74, and 180 I get 289.
Your measurement in centimeters is 187.96 centimeters.
Your measurement in pounds is 81.64656 kilograms.

' # fix formatting in editor
____________________________

# Learn Ruby the Hard Way
# Exercise 6: Strings and Text

# Assigns 10 (ten in base 10, 3 in binary, 1 & 0 for the joke...) to the variable "types of people"
types_of_people = 10

# Assigns a string that uses string interpolation to the variable "x"
x = "There are #{types_of_people} types of people."

# Assigns the string "binary" to the variable "binary"
binary = "binary"

# Assigns the string "don't" to the variable "do not"
do_not = "don't"

# Assigns a string that uses string interpolation (two times) to the variable "y"
y = "Those who know #{binary} and those who #{do_not}."

# Prints the string assigned to the variable x and converts the interpolated variable to its assigned value
puts x

# Prints the string assigned to the variable y and converts the interpolated variables to their assigned values
puts y

# Prints the specified string and converts the interpolated variable to its assigned value
puts "I said: #{x}."

# Prints the specified string and converts the interpolated variable to its assigned value
# Have to use single quotes within double quotes (and vice versa) or won't output as intended
puts "I also said: '#{y}'."

# Assigns the boolean value "false" to the variable "hilarious"
hilarious = false

# Assigns the specified string and interpolated variable to the "joke_evaluations" variable
joke_evaluations = "Isn't that joke so funny?! #{hilarious}"

# Prints the assigned string and converts the interpolated variable to its assigned value
puts joke_evaluations

# Assigns a string to the variable "w"
w = "This is the left side of..."

# Assigns a string to the variable "e"
e = "a string with a right side."

# Prints the concatenation of the strings assigned to the variables "w" and "e"
puts w + e

# 1) Done
# 2) Lines 8, 17, 26, 30 and 36.
# 3) Nope, there are five place.
# 4) The plus operator performs a concatenation when used with strings.
# 5) It would work for everything except the lines that use string interpolation and line 30, 
#    which has single quotes around the interpolated variable.
#    For this to continue working with outer single quotes, you would need to replace the inner single quotes
#    with double quotes.  Otherwise, Ruby will interpret the first inner single quote as pairing with the 
#    first outer single quote and the output would not be as intended.
#
#    Note - I missed the "single quotes + string interpolation being ignored" part the first time around.
#    Lesson learned...

# Console output:
There are 10 types of people.
Those who know binary and those who don't.
I said: There are 10 types of people..
I also said: 'Those who know binary and those who don't.'.
Isn't that joke so funny?! false
This is the left side of...a string with a right side.

' # fix formatting in editor
____________________________

# Learn Ruby the Hard Way
# Exercise 7: More Printing

# Prints the specified string
puts "Mary had a little lamb."

# Prints the specified string and interpolated string
puts "Its fleece was white as #{'snow'}."

# Prints the specified string
puts "And everywhere that Mary went."

# Prints a period ten times
puts "." * 10 # what'd that do?

# Assigns a string to the variable end1
end1 = "C"

# Assigns a string to the variable end2
end2 = "h"

# Assigns a string to the variable end3
end3 = "e"

# Assigns a string to the variable end4
end4 = "e"

# Assigns a string to the variable end5
end5 = "s"

# Assigns a string to the variable end6
end6 = "e"

# Assigns a string to the variable end7
end7 = "B"

# Assigns a string to the variable end8
end8 = "u"

# Assigns a string to the variable end9
end9 = "r"

# Assigns a string to the variable end10
end10 = "g"

# Assigns a string to the variable end11
end11 = "e"

# Assigns a string to the variable end12
end12 = "r"

# watch that print vs. puts on this line what's it do?

# The print statement concatenates the strings assigned to each specified variable,
# without putting a line return at the end
print end1 + end2 + end3 + end4 + end5 + end6

# The puts statement concatenates the strings assigned to each specified variable,
# while putting a line return at the end
puts end7 + end8 + end9 + end10 + end11 + end12

# 1) Comments done.
# 2) No errors this time around.
# 3) Will do.
# 4) Good plan.
# 5) Oh yeah - hundreds, if not thousands, every day.  ^_^;

# Console output:
Mary had a little lamb.
Its fleece was white as snow.
And everywhere that Mary went.
..........
CheeseBurger
____________________________

# Learn Ruby the Hard Way
# Exercise 8: Printing, Printing

# Assigns a string format to the variable "formatter"
formatter = "%{first} %{second} %{third} %{fourth}"

# Prints the integer values assigned to first, second, third and fourth, using the format defined on line 4
puts formatter % {first: 1, second: 2, third: 3, fourth: 4}

# Prints the string values assigned to first, second, third and fourth, using the format defined on line 4
puts formatter % {first: "one", second: "two", third: "three", fourth: "four"}

# Prints the boolean values assigned to first, second, third and fourth, using the format defined on line 4
puts formatter % {first: true, second: false, third: true, fourth: false}

# Prints the string assigned to the formatter variable for each item, using the format defined on line 4
puts formatter % {first: formatter, second: formatter, third: formatter, fourth: formatter}

# Prints the strings values assigned to first, second, third and fourth, using the format defined on line 4
# Same idea as line 8, just with longer strings
puts formatter % {
  first: "I had this thing.",
  second: "That you could type up right.",
  third: "But it didn't sing.",
  fourth: "So I said goodnight."
}

# 1) Comments done - basically lots of variations upon a theme.

# Console output:
1 2 3 4
one two three four
true false true false
%{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth} %{first} %{second} %{third} %{fourth}
I had this thing. That you could type up right. But it didn't sing. So I said goodnight.

' # fix formatting in editor
____________________________

# Learn Ruby the Hard Way
# Exercise 9: Printing, Printing, Printing

# Here's some new strange stuff, remember to type it exactly.

# Assigns a string with a space in between each abbreviated day name to the variable ""ays
days = "Mon Tue Wed Thu Fri Sat Sun"

# Assigns a string with the new line character in between each abbreviated month name to the variable "months"
months = "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

# Prints out the specified string and interpolated variable value
puts "Here are the days: #{days}"

# Prints out the specified string and interpolated variable value (including line breaks)
puts "Here are the months: #{months}"

# Prints out the specified multi-line string verbatim due to the %q{} modifier (which acts like single quotes)
puts %q{
There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}

# 1) Comments done and no mistakes (typos).  Honest.  ^_^ /

# Console output:
Here are the days: Mon Tue Wed Thu Fri Sat Sun
Here are the months: Jan
Feb
Mar
Apr
May
Jun
Jul
Aug

There's something going on here.
With the three double-quotes.
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
____________________________

# Learn Ruby the Hard Way
# Exercise 10: What Was That?

# "I am 6'2\" tall."  # escape double-quote inside string
# 'I am 6\'2" tall.'  # escape single-quote inside string

# Assigns a string (that includes \t to insert tab before string) to the "tabby_cat" variable
tabby_cat = "\tI'm tabbed in."

# Assigns a string (that include the new line character: \n) to the "persian_cat" variable
persian_cat = "I'm split\non a line."

# Assigns a string (that includes two escaped backslashes, so 1 will appear on each side of "cat") to the "backslash_cat" variable
backslash_cat = "I'm \\ a \\ cat."

# Assigns a multi-line, tabbed string (via triple quotes and \t) with a new-line character in the last line to the "fat_cat" variable
fat_cat = """
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
"""

# Prints the assigned string and renders the preceding tab
puts tabby_cat

# Prints the assigned string and starts a new line after the word "split"
puts persian_cat

# Prints the assigned string and puts a backslash on both sides of the word "cat"
puts backslash_cat

# Prints the multi-line string, with tabs for each bullet point (4 total)
puts fat_cat

# 0) Comments done.
# 1) I use \n and the regular escape.  I've made a screenshot and will refer to as needed.
# 2) Yes - if the string has lots of double-quotes that I don't want to escape.  But I'd probably use %q{} first.
# 3) OK.

# Console output:
        I'm tabbed in.
I'm split
on a line.
I'm \ a \ cat.

I'll do a list:
        * Cat food
        * Fishies
        * Catnip
        * Grass
____________________________

# Learn Ruby the Hard Way
# Exercise 11: Asking Questions

# Note - I use print instead of puts to print the string without a \n printed
# and the prompt stops right where the user should enter the answer.

# Prints the string to prompt the user to input his/her age
print "How old are you? "

# Assigns the user's input (minus the line break via .chomp) to the variable "age"
age = gets.chomp

# Prints the string to prompt the user to input his/her height
print "How tall are you? "

# Assigns the user's input (minus the line break via .chomp) to the variable "height"
height = gets.chomp

# Prints the string to prompt the user to input his/her weight
print "How much do you weigh? "

# Assigns the user's input (minus the line break via .chomp) to the variable "weight"
weight = gets.chomp

# Prints specified string along with the user-specified values for the age, height and weight variables
puts "So, you're #{age} old, #{height} tall and #{weight} heavy."

# 0) Comments done.
# 1) Already researched while working on codecademy's Ruby course.  ^_^
# 2) Yes, have played with it quite a bit.
# 3) OK

puts "\n"

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

# Example console output:
How old are you? 41
How tall are you? 75"
How much do you weigh? 185lbs
So, you're 41 old, 75" tall and 185lbs heavy.

Enter string to translate:something
Daffy Duck says: thomething!
____________________________

# Learn Ruby the Hard Way
# Exercise 12: Prompting People

# Prints the string to prompt the user for a number
print "Give me a number: "

# Assigns the user's input (minus the line break via .chomp),
# converts the string object to an integer using the .to_i method,
# and assigns it to the variable "number"
number = gets.chomp.to_i

# Assigns the user-specified number multiplied by 100 to the "bigger" variable
bigger = number * 100

# Prints the specified string along with the interpolated value for the "bigger" variable
puts "A bigger number is #{bigger}."

# Prints the string to prompt the user for another number
print "Give me another number: "

# Assigns the user's input (minus the line break via .chomp) to the variable "another"
another = gets.chomp

# Converts the user-provided string to an integer by using the .to_i method on the "another" variable,
# and reassigns it to the variable "number"
number = another.to_i

# Assigns the user-specified number divided by 100 to the "smaller" variable
smaller = number / 100

# Prints the specified string along with the interpolated value for the "smaller" variable
puts "A smaller number is #{smaller}."

# 0) Comments added
# 1) Changes the object to a floating-point number
# 2) Done.

print "Hey man, got any change? "
change = gets.chomp.to_f
returned = change / 10
puts "Here's 10\% back: #{returned}"

# Example console output:
Hey man, got any change? 103.4
Here's 10% back: 10.34

' # fix formatting in editor
____________________________

# Learn Ruby the Hard Way
# Exercise 13: Parameters, Unpacking, Variables

# Note - have to provide arguments when executing .rb script when using ARGV
# Ex: ruby lrthw_ex13.rb What is it?

# Specify the variables to be assigned to user-specified values when the .rb script runs
first, second, third = ARGV

# Prints the specified string along with the interpolated value for the "first" variable
puts "Your first variable is: #{first}"

# Prints the specified string along with the interpolated value for the "first" variable
puts "Your second variable is: #{second}"

# Prints the specified string along with the interpolated value for the "first" variable
puts "Your third variable is: #{third}"

# 0) Comments added
# 1) When an argument isn't specified, the variable isn't assigned a value
# 2) Any additional arguments are dropped/ignored
# 3) Done in lrthw_ex13_script.rb
# 4) See 3).

# Console output for: ruby .\lrthw_ex13.rb what is it
Your first variable is: what
Your second variable is: is
Your third variable is: it
____________________________

# Learn Ruby the Hard Way
# Exercise 13: Parameters, Unpacking, Variables
# Example script per Study Drills steps three and four

print "There are two doors in front of you.\nWhich will you open - the door on the left or the right? "
door = $stdin.gets.chomp
#door = ARGV.first
print ".....\n"
print "Now you are standing in a room with stairs going up and down.\nWhich way, pal? "
stairs = $stdin.gets.chomp
print ".....\n"
print "You slip on the stairs, have a terrible spill and end up breaking your leg.\nWhat now? "
action = $stdin.gets.chomp
print ".....\n"
print "As you #{action}, an earthquake starts shaking the walls apart. This just isn't your day!\nAny final words? "
final_words = $stdin.gets.chomp
print ".....\n"
puts """
In your last moments of conciousness, your life flashes before your eyes.
You see yourself opening the door on the #{door} and going #{stairs} the stairs.
You decide to #{action} after falling down the stairs and breaking your leg.
Sadly, your final cry of \"#{final_words}\"  is silenced prematurely as the walls come down upon you.
.....\n
"""

# Example console output:
There are two doors in front of you.
Which will you open - the door on the left or the right? left
.....
Now you are standing in a room with stairs going up and down.
Which way, pal? up
.....
You slip on the stairs, have a terrible spill and end up breaking your leg.
What now? cry
.....
As you cry, an earthquake starts shaking the walls apart. This just isn't your day!
Any final words? goodbye cruel world...
.....

In your last moments of conciousness, your life flashes before your eyes.
You see yourself opening the door on the left and going up the stairs.
You decide to cry after falling down the stairs and breaking your leg.
Sadly, your final cry of "goodbye cruel world..."  is silenced prematurely as the walls come down upon you.
.....

' # fix formatting in editor
____________________________

# Learn Ruby the Hard Way
# Exercise 14: Prompting and Passing

# Reminder - provide the user_name value when running the script:
# Ex: ruby lrthw_ex14.rb John

# Need to specify .ordinal when assigning to a single variable - tweaked 13 script accordingly after bailing on it
#user_name = ARGV.first # gets the first argument

# first argument > name
# second argument > description (i.e. nice, terrible, etc.)
first, second = ARGV

prompt = '*\(*O-O*)/*'

puts "Hi #{first}."
puts "I'd like to ask you a few questions."
puts "Do you like me #{first}? "
puts prompt
likes = $stdin.gets.chomp

puts "Where do you live #{first}? "
puts prompt
lives = $stdin.gets.chomp

# a comma for puts is like using it twice
puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright, so you said #{likes} about liking me.
You live in #{lives}. That's a #{second} place to live.
And you have a #{computer} computer. Nice.
"""

# 0) Comments added for stuff that's new to me (line 7), otherwise nothing new to see here.
# 1) Heh... see my ex13_script if you haven't already.
# 2) There you go.
# 3) Done.
# 4) Yep - went back and tweaked my ex13_script to use it just for practice.

# Example console output for: ruby .\lrthw_ex14.rb John
Hi John.
I'd like to ask you a few questions.
Do you like me John?
*\(*O-O*)/*
Sure!
Where do you live John?
*\(*O-O*)/*
In a house.
What kind of computer do you have?
*\(*O-O*)/*
An old one.

Alright, so you said Sure! about liking me.
You live in In a house.. That's a  place to live.
And you have a An old one. computer. Nice.
____________________________

# Learn Ruby the Hard Way
# Exercise 15: Reading Files

# Reminder - provide the user_name value when running the script:
# Ex: ruby lrthw_ex15.rb lrthw_ex15_sample.txt

# Need to specify .ordinal when assigning to a single variable
# filename = ARGV.first # gets the first argument

# first argument > name of file to specify (lrthw_ex_15_sample.txt)
filename = ARGV.first

# Use the open() function to access the file assigned to the filename variable
# http://ruby-doc.org/core-2.0.0/IO.html#method-c-open
txt = open(filename)

# Clarification with string interpolation to list the specified file
puts "Here's your file #{filename}:"

# Uses the .read method on the I/O stream [the results of open(filename)]
# http://ruby-doc.org/core-2.0.0/IO.html#method-i-read
# Changed to a puts statement for cleaner output when program runs
puts txt.read

# User prompt to enter the name of the file specified earlier via ARGV.first
print "Type the filename again: "

# Use $stdin.gets.chomp to collect the user-specified file name and assign it to the file_again variable
file_again = $stdin.gets.chomp

# Same as line 15 [txt = open(filename)] but using a different set of variables
txt_again = open(file_again)

# Same as line 23, but using the txt_again variable to demonstrate that the filename
# can be collected when initially running the program (ARGV) or during the program ($stdin.gets.chomp)
# Changed to a puts statement for cleaner output when program runs
puts txt_again.read

=begin
# Use the .close method on txt and txt_again to close the file (opened twice)
# http://ruby-doc.org/core-2.0.0/IO.html#method-i-close
txt.close
txt_again.close

# Verify that files are closed
puts txt.read
puts txt_again.read
# Should get:
#    lrthw_ex15.rb:45:in `read': closed stream (IOError)
#        from lrthw_ex15.rb:45:in `<main>'
=end

# Study Drills
# 1) Added comments before getting into the Study Drills section
# 2) Already done while adding comments
# 3) Understood
# 4) Done
# 5) Using $stdin.gets.chomp allows you to process multiple files during the program with
#    (potentially, using a loop) one prompt.  With ARGV, you are limited to the file specified
#    when the program is initially run.
# 6) Yes, but via irb, had to specify the file name in quotes (String) for it to work:
#      filename = "lrthw_ex15_sample.txt"
#      txt = open(filename)
#      puts txt.read
# 7) Done

# Console output for: ruby .\lrthw_ex15.rb lrthw_ex15_sample.txt
Here's your file lrthw_ex15_sample.txt:
This is stuff I typed into a file.
It is really cool stuff.
Lots and lots of fun to have in here.
Type the filename again: lrthw_ex15_sample.txt
This is stuff I typed into a file.
It is really cool stuff.
Lots and lots of fun to have in here.

' # fix formatting in editor
____________________________

# lrthw_ex15_sample.txt

This is stuff I typed into a file.
It is really cool stuff.
Lots and lots of fun to have in here.
____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





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





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________
____________________________
____________________________

codewars
____________________________
____________________________
____________________________

# Reverse an integer

number = 12345
reversed = 0

while number > 0
  reversed *= 10  # This increments the position (0 > 50 > 540 > 5430 > 54320)
  # puts "Reversed multiplied by 10: #{reversed}"
  reversed += (number%10)  # number%10 gives the last digit (5 > 4 > 3 > 2 > 1)
  # puts "Now reversed is #{reversed}"
  number /= 10  # Due to integer division, this drops the last digit (1234 > 123 > 12 > 1 > 0)
  # puts "Now number is #{number}"
end

print reversed

# Console output:
# Reversed multiplied by 10: 0
# Now reversed is 5
# Now number is 1234
# Reversed multiplied by 10: 50
# Now reversed is 54
# Now number is 123
# Reversed multiplied by 10: 540
# Now reversed is 543
# Now number is 12
# Reversed multiplied by 10: 5430
# Now reversed is 5432
# Now number is 1
# Reversed multiplied by 10: 54320
# Now reversed is 54321
# Now number is 0
# 54321
____________________________

# Descending Order
# Create a function that will return all digits in a non-negative integer in descending order

def descending_order(n)
  num_array = n.to_s.split("")
  num_array.sort! { |x, y| y <=> x }
  n = num_array.join("").to_i
end

# Best practice solution:

def descending_order(n)
  n.to_s.chars.sort.reverse.join.to_i
end

# .chars converts a string to an array
____________________________

# Get the Middle Character
# Create a function to return the middle character (or two if the letter count is even)

def middle(word)
  half = word.length/2
  if word.length % 2 == 1
    middle = word[half]
  else
    middle = word[half - 1] + word[half]
  end
end

# Refactored
def middle(word)
  half = word.length/2
  word.length % 2 == 1 ? middle = word[half] : middle = word[half - 1] + word[half]
end

p middle("dragon")
p middle("dragons")

# Best practice solution

def get_middle(s)
  s[(s.size-1)/2..s.size/2]  # uses indexing to return middle index number(s)
end
____________________________

# Beginner Series #3 Sum of Numbers
# Function to return the sum of all numbers between two number

def get_sum(a,b)
  x = 0
  y = 0
  a < b ? range = (a..b).to_a : range = (b..a).to_a
  range.each { |x| y += x }
  return y
end

puts get_sum(1, 2)  # 3
puts get_sum(3, -5)  # -9
puts get_sum(-3, 5)  # 9

# Best practice solution

def get_sum(a,b)
  return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
end

# .reduce(:+) adds all of the elements in an array, can use other operators as well
# https://ruby-doc.org/core-2.1.0/Enumerable.html#method-i-reduce
____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________
____________________________
____________________________

Mined Minds Classwork & Homework
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
  # Perform a union on the last two inner arrays
  # Google: set operators with Ruby arrays
  together = multi[next_to_last] | multi[last]
  # Assign the next-to-the-last inner array the union value (3 items)
  multi[next_to_last] = together
  # Delete the last inner array
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

# Explanatory program to help clarify array contents and values
# during <.each do> loop of Josh's Random Pairs program

=begin
#In-class example of random pairs (Josh)

test_array = ["Abe","Bob","Carl","Dave","Ed"]

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

print random_pair(test_array)
=end

# Note that in Josh's program, the names would be scrambled at this point,
# but leaving them ordered here for clarification's sake
array_of_items_to_be_paired = [["Abe","Bob"],["Carl","Dave"],["Ed"]]
my_array = []
count = 1

# Baseline value of my_array, which we'll use to create the desired program output
print "Value of my_array before if statement iteration: "
print my_array
2.times { print "\n" }

# Note that I used "inner_array" instead of "pairs" for the array item name just
# to clarify exactly what we are targeting, since the final inner array will not
# contain a pair of names if array_of_items_to_be_paired contains an odd number
# of names
array_of_items_to_be_paired.each do |inner_array|
  if inner_array.length == 2
    print "Value of inner_array from if statement interation #{count}: "
    print inner_array
    print "\n"
    my_array.push(inner_array)
    print "Value of my_array after if statement interation #{count}: "
    print my_array
    2.times { print "\n" }
    count += 1
  else
    print "(1) Value of inner_array from else statement: "
    print inner_array
    print "\n"
    print "(2) Value of inner_array contents via array index: "
    print inner_array[0]
    print "\n"
    print "(3) Value of last inner_array in my_array before else statement: "
    print my_array.last
    2.times { print "\n" }
    puts "Value of my_array after pushing inner_array contents (2) to last array in my_array (3):"
    my_array.last.push(inner_array[0])
    print my_array
    print "\n"
  end
end
____________________________

# In class - using splat argument to add an indeterminate number of numbers

def add(*number)
  sum = 0
  number.each do |n|
      sum += n
  end
  return sum
end

# Example console output:

print add(2, 3, 5)  # 10
____________________________

# Variation with splat argument and logic to filter out non-numeric items

def add(*number)
  test_array = []
  sum = 0
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.each do |n|
      sum += n
    end
  end
  return sum
end
____________________________

# Adding an indeterminate number of numbers using .inject method
# # Note that .inject is called .reduce in most languages

def add(*numbers)
  numbers.inject { |sum, value| sum += value }
end

# Example console output:

print add(2, 3, 5)  # 10
____________________________

# Variation of .inject method using do

def add(*numbers)
  sum = 0  # optional
  numbers.inject do |sum, value|
    sum += value
  end
end

# Example console output:

print add(2, 3, 5)  # 10
____________________________

# Function to subtract an indefinite amount of numbers

def subtract(*number)
  test_array = []
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.inject do |minuend, subtrahend|
      (minuend - subtrahend).round(2)
    end
  end
end
____________________________

# Function to multiply an indefinite amount of numbers

def multiply(*number)
  test_array = []
  decimal_places = 0
  product = 1
  if number.length == 0
    test_array.push(false)
  end
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.each do |n|
      if n.class == Float
        # If a number is a float, accumulate the number of decimal places
        decimal_places += n.to_s.split('.').last.size
        product *= n
      else
        product *= n
      end
    end
  end
  return product.round(decimal_places)
end
____________________________

# Function to divide an indefinite amount of numbers

def divide(*number)
  test_array = []
  product = 1
  if number.length == 0
    test_array.push(false)
  end
  number.each do |n|
    if (n.class != Fixnum) && (n.class != Float)
      test_array.push(false)
    end
  end
  if test_array.length > 0
    return false
  else
    number.inject do |dividend, divisor|
      if divisor != 0
        (dividend.to_f / divisor.to_f).round(5)
      else
        return false
      end
    end
  end
end
____________________________

# Winning numbers (basic)
# Determine if the specified number is in the specified array

# Sandbox testing variables
number = 5
#number = 4
test_array = [1, 2, 3, 4, 5, 6, 7]

# Method 1 - using .include?
def winning_numbers(num, set)
  return set.include?(num)
end

# Method 2 - using .empty? and clarification output
# Jon advised that it's not good practice to set a boolean true to false (line 31),
so tweaked in Method 3
def winning_numbers(num, set)
  yes = []
  no = []
  counter = 1
  set.each do |n|
    if n == num
      puts "If iteration #{counter}: n - #{n}, num - #{num}"
      yes.push(n)
      puts "If iteration - yes array: #{yes}, no array: #{no}"
    else
      puts "Else iteration #{counter}: n - #{n}, num - #{num}"
      no.push(n)
      puts "Else iteration - yes array: #{yes}, no array: #{no}"
    end
    counter += 1
  end
  if yes.empty? == false
    return true
  else
    return false
  end
end

# Method 3 - dropped no array (not required) and compare .length of yes array for boolean
def winning_numbers(num, set)
  yes = []
  set.each do |n|
    if n == num
      yes.push(n)
    end
  end
  if yes.length > 0
    return true
  else
    return false
  end
end

# true if number is in the test_array, false if not
print test_array.include?(number)

# Sandbox test to run function
print winning_numbers(number, test_array)
____________________________

# Function that takes two numbers as strings and returns true if they are off by one digit
# Use case 1: If we pass '1234' and '1224' (1 digit off in tens place), the function should return true
# Use case 2: If we pass '1234' and '1325' (more than 1 digit off), the function should return false

def compare_numbers(num_1, num_2)
  if num_1 == num_2
    return false
  else
    set_1 = num_1.split("")
    set_2 = num_2.split("")
    off_by_one = 0
    greater_than_one = 0
    comparison_set = set_1.zip(set_2)
    comparison_set.each do |inner|
      if inner[0] != inner[1]
        if (inner[0].to_i - inner[1].to_i).abs == 1
          off_by_one += 1
        elsif (inner[0].to_i - inner[1].to_i).abs > 1
          greater_than_one += 1
        end
      end
    end
    if greater_than_one > 0
      return false
    elsif off_by_one > 1
      return false
    elsif off_by_one == 1
      return true
    end
  end
end

# Sandbox testing
# puts compare_numbers('1234', '1235')  # true
# puts compare_numbers('1234', '1244')  # true
# puts compare_numbers('1234', '1334')  # true
# puts compare_numbers('1234', '2234')  # true
# puts compare_numbers('1234', '1325')  # false
# puts compare_numbers('1234', '3234')  # false
# puts compare_numbers('1234', '1234')  # false
____________________________

# Sandbox test for results from: num_1.split("")

number_1 = '1234'
number_2 = '1224'  # return true when compared to number_1
number_3 = '1325'  # return false when compared to number_1

def compare_numbers(num_1, num_2)
  print set_1 = num_1.split("")
  print "\n"
  print set_2 = num_2.split("")
  print "\n"
end

compare_numbers(number_1, number_2)  # test 1
print "\n"
compare_numbers(number_1, number_3)  # test 2
print "\n"

# Console output:
["1", "2", "3", "4"]
["1", "2", "2", "4"]

["1", "2", "3", "4"]
["1", "3", "2", "5"]
____________________________

# Sandbox test for results from: comparison_set = set_1.zip(set_2)

comparison_set = [["1", "1"], ["2", "2"], ["3", "2"], ["4", "5"]]
#comparison_set = [["1", "1"], ["2", "2"], ["4", "2"], ["4", "5"]]
comparison_count = 0
greater_than_one = 0

comparison_set.each do |inner|
  if inner[0] != inner[1]
    puts "not the same!"
    if (inner[0].to_i - inner[1].to_i).abs == 1
      comparison_count += 1
    elsif (inner[0].to_i - inner[1].to_i).abs > 1
      greater_than_one += 1
    end
  else
    puts "the same"
  end
end

puts "Comparison count: #{comparison_count}"
puts "Greater than one: #{greater_than_one}"

# Console output:
the same
the same
not the same!
not the same!
Comparison count: 2
Greater than one: 0
____________________________

# Function that takes a ticket number and an array of winning numbers
# Returns an array of all of the winning numbers that are one digit off from the ticket number
# If no winning numbers match this condition, returns false

def compare_number_array(ticket, winning_numbers)
  winning_numbers_off_by_one_digit = []
  winning_numbers_no_match = []
  same_number = 0
  winning_numbers.each do |winner|
    if winner == ticket
      same_number += 1
    else
      set_1 = winner.split("")
      set_2 = ticket.split("")
      off_by_one = 0
      greater_than_one = 0
      comparison_set = set_1.zip(set_2)
      comparison_set.each do |inner|
        if inner[0] != inner[1]
          if (inner[0].to_i - inner[1].to_i).abs == 1
            off_by_one += 1
          elsif (inner[0].to_i - inner[1].to_i).abs > 1
            greater_than_one += 1
          end
        end
      end
      if greater_than_one > 0
        winning_numbers_no_match.push(winner)
      elsif off_by_one > 1
        winning_numbers_no_match.push(winner)
      elsif off_by_one == 1
        winning_numbers_off_by_one_digit.push(winner)
      end
    end
  end
  if winning_numbers_off_by_one_digit.length > 0
    return winning_numbers_off_by_one_digit
  else
    return false
  end
end

# Sandbox testing
# print compare_number_array('1234', ['9999', '5678', '1235', '1134', '1344'])  # ['1235', '1134']
# print "\n"
# print compare_number_array('1234', ['1234', '1235', '1236', '1244', '1334'])  # ['1235', '1244', '1334']
# print "\n"
# print compare_number_array('1234', ['2234', '3234', '1335', '1336'])  # ['2234']
# print "\n"
# print compare_number_array('1234', ['1111', '2222', '3333'])  # false
____________________________

# Sandbox test with explanatory output for off_by_one_-_array (outside function)

winning_numbers = ['1234', '9999', '5678', '1235', '1134', '1344']
ticket = '1234'

winning_numbers_off_by_one_digit = []
winning_numbers_no_match = []
same_number = 0
count = 1

winning_numbers.each do |winner|
  if winner == ticket
    same_number += 1
  else
    set_1 = winner.split("")
    set_2 = ticket.split("")
    puts "Iteration count: #{count}"
    print "Set 1: #{set_1}"
    print "\n"
    print "Set 2: #{set_2}"
    print "\n"
    count += 1

    off_by_one = 0
    greater_than_one = 0
    comparison_set = set_1.zip(set_2)
    puts "Comparison set:"
    print comparison_set
    print "\n"
    comparison_set.each do |inner|
      if inner[0] != inner[1]
        if (inner[0].to_i - inner[1].to_i).abs == 1
          off_by_one += 1
        elsif (inner[0].to_i - inner[1].to_i).abs > 1
          greater_than_one += 1
        end
      end
    end
    puts "Off by one count: #{off_by_one}"
    puts "Greater than one count: #{greater_than_one}"
    puts "Winning ticket: #{winner}"
    print "\n"
    if greater_than_one > 0
      winning_numbers_no_match.push(winner)
    elsif off_by_one > 1
      winning_numbers_no_match.push(winner)
    elsif off_by_one == 1
      winning_numbers_off_by_one_digit.push(winner)
    end
  end
end

puts "Same number count: #{same_number}"
print "Winning numbers no match: #{winning_numbers_no_match}"
print "\n"
print "Winning numbers off by one digit: #{winning_numbers_off_by_one_digit}"
print "\n"

# Console output:
Iteration count: 1
Set 1: ["9", "9", "9", "9"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["9", "1"], ["9", "2"], ["9", "3"], ["9", "4"]]
Off by one count: 0
Greater than one count: 4
Winning ticket: 9999

Iteration count: 2
Set 1: ["5", "6", "7", "8"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["5", "1"], ["6", "2"], ["7", "3"], ["8", "4"]]
Off by one count: 0
Greater than one count: 4
Winning ticket: 5678

Iteration count: 3
Set 1: ["1", "2", "3", "5"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["1", "1"], ["2", "2"], ["3", "3"], ["5", "4"]]
Off by one count: 1
Greater than one count: 0
Winning ticket: 1235

Iteration count: 4
Set 1: ["1", "1", "3", "4"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["1", "1"], ["1", "2"], ["3", "3"], ["4", "4"]]
Off by one count: 1
Greater than one count: 0
Winning ticket: 1134

Iteration count: 5
Set 1: ["1", "3", "4", "4"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["1", "1"], ["3", "2"], ["4", "3"], ["4", "4"]]
Off by one count: 2
Greater than one count: 0
Winning ticket: 1344

Same number count: 1
Winning numbers no match: ["9999", "5678", "1344"]
Winning numbers off by one digit: ["1235", "1134"]
____________________________

# Sandbox test with explanatory and summary output for off_by_one_-_array (inside function)

def compare_number_array(ticket, winning_numbers)
  winning_numbers_off_by_one_digit = []
  winning_numbers_no_match = []
  same_number = 0
  count = 0
  winning_numbers.each do |winner|
    if winner == ticket
      same_number += 1
    else
      set_1 = winner.split("")
      set_2 = ticket.split("")
      puts "Iteration count: #{count}"
      print "Set 1: #{set_1}"
      print "\n"
      print "Set 2: #{set_2}"
      print "\n"
      count += 1

      off_by_one = 0
      greater_than_one = 0
      comparison_set = set_1.zip(set_2)
      puts "Comparison set:"
      print comparison_set
      print "\n"
      comparison_set.each do |inner|
        if inner[0] != inner[1]
          if (inner[0].to_i - inner[1].to_i).abs == 1
            off_by_one += 1
          elsif (inner[0].to_i - inner[1].to_i).abs > 1
            greater_than_one += 1
          end
        end
      end
      puts "Off by one count: #{off_by_one}"
      puts "Greater than one count: #{greater_than_one}"
      puts "Winning ticket: #{winner}"
      print "\n"
      if greater_than_one > 0
        winning_numbers_no_match.push(winner)
      elsif off_by_one > 1
        winning_numbers_no_match.push(winner)
      elsif off_by_one == 1
        winning_numbers_off_by_one_digit.push(winner)
      end
    end
  end
  puts "Same number count: #{same_number}"
  print "Winning numbers no match: #{winning_numbers_no_match}"
  print "\n"
  print "Winning numbers off by one digit: #{winning_numbers_off_by_one_digit}"
  print "\n"
end

# Sandbox testing
puts compare_number_array('1234', ['9999', '5678', '1235', '1134', '1344'])  # ['1235', '1134']
# puts compare_number_array('1234', ['1234', '1235', '1236', '1244', '1334'])  # ['1235', '1244', '1334']
# puts compare_number_array('1234', ['2234', '3234', '1335', '1336'])  # ['2234']
# puts compare_number_array('1234', ['1111', '2222', '3333'])  # []

# Console output:
Iteration count: 0
Set 1: ["9", "9", "9", "9"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["9", "1"], ["9", "2"], ["9", "3"], ["9", "4"]]
Off by one count: 0
Greater than one count: 4
Winning ticket: 9999

Iteration count: 1
Set 1: ["5", "6", "7", "8"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["5", "1"], ["6", "2"], ["7", "3"], ["8", "4"]]
Off by one count: 0
Greater than one count: 4
Winning ticket: 5678

Iteration count: 2
Set 1: ["1", "2", "3", "5"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["1", "1"], ["2", "2"], ["3", "3"], ["5", "4"]]
Off by one count: 1
Greater than one count: 0
Winning ticket: 1235

Iteration count: 3
Set 1: ["1", "1", "3", "4"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["1", "1"], ["1", "2"], ["3", "3"], ["4", "4"]]
Off by one count: 1
Greater than one count: 0
Winning ticket: 1134

Iteration count: 4
Set 1: ["1", "3", "4", "4"]
Set 2: ["1", "2", "3", "4"]
Comparison set:
[["1", "1"], ["3", "2"], ["4", "3"], ["4", "4"]]
Off by one count: 2
Greater than one count: 0
Winning ticket: 1344

Same number count: 0
Winning numbers no match: ["9999", "5678", "1344"]
Winning numbers off by one digit: ["1235", "1134"]
____________________________

# random_pairs_weighted.rb
# 2017/01/28 - jverbosky
#
# Function to create random pairs based on homework completion:
# - Works with even and odd number of team members
# - Function prioritizes pairing those who have completed homework with those who have not
# - Team member that has completed homework will be listed first in each pair
# - If half completed homework, every pair will have a team member that completed homework
# - If only one person completed and team # is odd, that person will be placed in group of three
#
# Usage:
# - Put "*" before a name to weight it (i.e. indicate homework completion)
#
#   For example:
#     not weighted > "Edwin Wells"
#     weighted     > "*Edwin Wells"
#
# For a complete list of use cases, please see Use Case Tests section at line 142

names = [  # 21 names, comment out one to test even set of names
  "Allen Weber",
  "Andrew Morgan",
  "Brian Lewis",
  "Cummie Washington",
  "*Dover Hellfeldt",
  "Edwin Wells",
  "Frank Mugo",
  "Frank Coleman",
  "George Bruner",
  "Jayvon Harris",
  "*John Verbosky",
  "Khalifa Cochran",
  "Lisa Petrovich",
  "*Matt Teitz",
  "*Max Pokropowicz",
  "Mike Ciletti",
  "Pat Wehman",
  "Patrick Roberts",
  "Sherri Dyson",
  "Takhir Salimov",
  "Teela Subba"
]

def random_pairs_weighted(names)

  weighted = []  # array for weighted names
  not_weighted = []  # array for non-weighted names
  odd_man_out = []  # array to hold name if odd number of names
  paired = []  # array for paired names
  half = names.length / 2  # integer division, so remainder dropped (if 21, will return 10)
  true_up = 0  # variable to help with balancing size of weighted and non-weighted arrays
  counter = 1  # counter variable for string interpolation in final output

  # Loop to populate weighted and non-weighted arrays with weighted and non-weighted names
  names.each do |name|
    if name.start_with?("*")
      weighted.push(name)
    else
      not_weighted.push(name)
    end
  end

  # Determine which array is larger and then balance them
  if weighted.length < not_weighted.length
    true_up = half - weighted.length
    weighted += not_weighted.slice!(0, true_up)
  else
    true_up = half - not_weighted.length
    not_weighted += weighted.slice!(0, true_up)
  end

  # # Randomize names in balanced arrays
  weighted = weighted.shuffle
  not_weighted = not_weighted.shuffle

  # Since .zip will drop the last name if name count is odd, save it to odd_man_out
  if names.length % 2 > 0  # Determine if name count is odd and if so...
    # If not_weighted has more names, it has the odd name count, so pop a name from it
    if not_weighted.length > weighted.length
      odd_man_out = not_weighted.pop
    # Otherwise weighted has more names, so pop a name from it
    else
      odd_man_out = weighted.pop
    end
  end

  # Use .zip to pair up names from weighted and non-weighted arrays
  paired_names = weighted.zip(not_weighted)

  # Check if odd_man_out is empty, if not then push to pair based on weightedness
  # Goal is to make sure odd_man_out is paired with a weighted name if it is not weighted
  if odd_man_out.empty? == false
    if odd_man_out.start_with?("*")  # If odd_man_out is weighted, push to last pair
      paired_names.last.push(odd_man_out)
    else  # If odd_man_out is not weighted...
      paired_names.each do |pair|
        # Push to the first pair with a weighted name
        if pair[0].start_with?("*")
          pair.push(odd_man_out)
          odd_man_out = ""  # Clear odd_man_out so next if statement is false
          break  # Break out of loop so odd_man_out not pushed to every weighted pair
        end
      end
      # If there aren't any weighted names, push odd_man_out to the last pair
      if odd_man_out != ""
        paired_names.last.push(odd_man_out)
      end
    end
  end

  # If odd number of names, move the pair with three names to the end of the array
  # to make the final output look nicer
  if names.length % 2 > 0
    paired_names.each do |pair|
      if pair.length == 3
        position = paired_names.index(pair)  # Position of the pair with three names
        # Insert the pair with three names to the end and delete it from original position
        paired_names.insert(-1, paired_names.delete_at(position))
      end
    end
  end

  # Output names in easy-to-read format
  # Comment out to run test (test_random_pairs_weighted.rb)
  paired_names.each do |pair|
    if pair.length == 2
      puts "Random Pair #{counter}: #{pair[0]}, #{pair[1]}"
      counter += 1
    else
      puts "Random Pair #{counter}: #{pair[0]}, #{pair[1]}, #{pair[2]}"
      counter += 1
    end
  end

end

random_pairs_weighted(names)

# Use Case Tests
# Uncomment all of the following lines to run function for different use cases:
#
# puts "\n"
# puts "Use case 1: Array with no weighted names - even # of names"
# case_1 = ["Allen Weber", "Andrew Morgan", "Brian Lewis", "Cummie Washington", "Dover Hellfeldt", "Edwin Wells"]
# random_pairs_weighted(case_1)
# puts "\n"

# puts "Use case 2: Array with no weighted names - odd # of names"
# case_2 = ["Allen Weber", "Andrew Morgan", "Brian Lewis", "Cummie Washington", "Dover Hellfeldt", "Edwin Wells", "Frank Mugo",]
# random_pairs_weighted(case_2)
# puts "\n"

# puts "Use case 3: Array with one weighted names - odd # of names (weighted name in group of three)"
# case_3 = ["Allen Weber", "*Andrew Morgan", "Brian Lewis", "Cummie Washington", "Dover Hellfeldt", "Edwin Wells", "Frank Mugo",]
# random_pairs_weighted(case_3)
# puts "\n"

# puts "Use case 4: Array with < half weighted names - even # of names"
# case_4 = ["Allen Weber", "*Andrew Morgan", "Brian Lewis", "Cummie Washington", "*Dover Hellfeldt", "Edwin Wells"]
# random_pairs_weighted(case_4)
# puts "\n"

# puts "Use case 5: Array with < half weighted names - odd # of names"
# case_5 = ["Allen Weber", "*Andrew Morgan", "Brian Lewis", "Cummie Washington", "*Dover Hellfeldt", "Edwin Wells", "Frank Mugo",]
# random_pairs_weighted(case_5)
# puts "\n"

# puts "Use case 6: Array with half weighted names - even # of names (one weighted name in every pair)"
# case_6 = ["Allen Weber", "*Andrew Morgan", "*Brian Lewis", "Cummie Washington", "*Dover Hellfeldt", "Edwin Wells"]
# random_pairs_weighted(case_6)
# puts "\n"

# puts "Use case 7: Array with half weighted names - odd # of names (one weighted name in every pair)"
# case_7 = ["Allen Weber", "*Andrew Morgan", "*Brian Lewis", "Cummie Washington", "*Dover Hellfeldt", "Edwin Wells", "Frank Mugo",]
# random_pairs_weighted(case_7)
# puts "\n"

# puts "Use case 8: Array with > half weighted names - even # of names"
# case_8 = ["Allen Weber", "*Andrew Morgan", "*Brian Lewis", "*Cummie Washington", "*Dover Hellfeldt", "Edwin Wells"]
# random_pairs_weighted(case_8)
# puts "\n"

# puts "Use case 9: Array with > half weighted names - odd # of names"
# case_9 = ["Allen Weber", "*Andrew Morgan", "*Brian Lewis", "*Cummie Washington", "*Dover Hellfeldt", "Edwin Wells", "Frank Mugo",]
# random_pairs_weighted(case_9)
# puts "\n"
____________________________

# Test for random_pairs_weighted.rb

require "minitest/autorun"
require_relative "random_pairs_weighted.rb"

class TestRandomPairsWeighted < Minitest::Test

  def test_1_array_with_no_weighted_names_even_number_of_names
    results = random_pairs_weighted(["Abby","Bobby","Cassy","Davey","Emmie","Franky"])
    number_of_pairs = results.count
    assert_equal(3, number_of_pairs)
  end

  def test_2_array_with_no_weighted_names_odd_number_of_names
    results = random_pairs_weighted(["Abby","Bobby","Cassy","Davey","Emmie","Franky","Ginny"])
    number_of_pairs = results.count
    assert_equal(3, number_of_pairs)
  end

  def test_3_array_with_one_weighted_name_odd_number_of_names_confirm_weighted_in_last_pair
    results = random_pairs_weighted(["Abby","Bobby","Cassy","Davey","*Emmie","Franky","Ginny"])
    final_pair = results.last
    weighted = final_pair[0].start_with?("*")
    assert_equal(true, weighted)
  end

 def test_4_array_with_less_than_half_weighted_names_even_number_of_names_confirm_weighted_in_multiple_pairs
    results = random_pairs_weighted(["Abby","Bobby","*Cassy","Davey","*Emmie","Franky"])
    weighted_count = 0
    results.each do |pair|
      if pair[0].start_with?("*")
        weighted_count += 1
      end
    end
    assert_equal(2, weighted_count)
  end

  def test_5_array_with_less_than_half_weighted_names_odd_number_of_names_confirm_weighted_in_multiple_pairs
    results = random_pairs_weighted(["Abby","Bobby","*Cassy","Davey","*Emmie","Franky","Ginny"])
    weighted_count = 0
    results.each do |pair|
      if pair[0].start_with?("*")
        weighted_count += 1
      end
    end
    assert_equal(2, weighted_count)
  end

 def test_6_array_with_half_weighted_names_even_number_of_names_confirm_weighted_in_every_pair
    results = random_pairs_weighted(["Abby","Bobby","*Cassy","Davey","*Emmie","*Franky"])
    number_of_pairs = results.count
    weighted_count = 0
    results.each do |pair|
      if pair[0].start_with?("*")
        weighted_count += 1
      end
    end
    assert_equal(number_of_pairs, weighted_count)
  end

  def test_7_array_with_half_weighted_names_odd_number_of_names_confirm_weighted_in_every_pair
    results = random_pairs_weighted(["Abby","Bobby","*Cassy","Davey","*Emmie","*Franky","Ginny"])
    number_of_pairs = results.count
    weighted_count = 0
    results.each do |pair|
      if pair[0].start_with?("*")
        weighted_count += 1
      end
    end
    assert_equal(number_of_pairs, weighted_count)
  end

 def test_8_array_with_more_weighted_names_odd_number_of_names_confirm_last_pair_not_all_weighted
    results = random_pairs_weighted(["Abby","*Bobby","*Cassy","Davey","*Emmie","*Franky","Ginny"])
    number_of_pairs = results.count
    all_weighted = true
    results.each do |pairs|
      if pairs.length == 3
        pairs.each do |name|
          if name.start_with?("*") == false
            all_weighted = false
          end
        end
      end
    end
    assert_equal(false, all_weighted)
  end

end
____________________________

# Functions that take an array of ticket numbers and an array of winning numbers
#
# find_wining_ticket_numbers(ticket_numbers, winning_numbers)
# - Returns an array of ticket numbers that exactly match the winning numbers
#
# find_ticket_numbers_off_by_one(ticket_numbers, winning_numbers)
# - Returns an array of all of the winning numbers that are one digit off from the ticket number
#
# find_unclaimed_winning_numbers(ticket_numbers, winning_numbers)
# - Returns an array of all of the winning numbers that do not meet the first two conditions

def find_winning_ticket_numbers(ticket_numbers, winning_numbers)
  winning_numbers_match = []  # array for winning numbers that match ticket numbers
  winning_numbers_match = ticket_numbers & winning_numbers  # array intersection for finding matching numbers
  return winning_numbers_match  # return array of winning numbers that match ticket numbers
end

#---------------------------------------------------------------------

def find_ticket_numbers_off_by_one(ticket_numbers, winning_numbers)
  ticket_numbers_off_by_one_digit = []  # array for ticket numbers to return

  ticket_numbers.each do |ticket|  # iterate through each ticket number in the array

    winning_numbers.each do |winner|  # iterate through each winning number in the array
      set_1 = winner.split("")  # convert the current winning number into an array of digits
      set_2 = ticket.split("")  # convert the ticket number into an array of digits
      off_by_one = 0  # counter for winning number digits that are off by one compared to ticket number digit
      greater_than_one = 0  # counter for winning number digits off by more than one
      comparison_set = set_1.zip(set_2)  # use .zip method to pair up winning and ticket number digits in multi-d array

      comparison_set.each do |inner|  # iterate through each inner array (pair of digits) to compare
        if inner[0] != inner[1]  # check if the digits are identical and if they are not...
          if (inner[0].to_i - inner[1].to_i).abs == 1  # check if the digits are off by +/- 1
            off_by_one += 1  # if so, increment the off_by_one counter
          elsif (inner[0].to_i - inner[1].to_i).abs > 1  # check if the digits are off by more than 1
            greater_than_one += 1  # if so, increment the greater_than_one counter
          end  # end the conditional counter increment statements
        end  # restart the loop and compare the next pair of digits
      end  # end the comparison_set.each loop

      # if a single digit is off by one and there are no digits off by more than one
      if off_by_one == 1 && greater_than_one == 0
        ticket_numbers_off_by_one_digit.push(ticket)  # push the ticket number to the appropriate array
      end  # start the next winning_numbers iteration to compare the ticket number against the next winning number

    end  # start the next ticket_numbers iteration to compare the next ticket number against the winning numbers
  end  # end the ticket_numbers.each loop

  return ticket_numbers_off_by_one_digit  # return list of ticket numbers off by one for a single digit

end

#---------------------------------------------------------------------

def find_unclaimed_winning_numbers(ticket_numbers, winning_numbers)
  winning_tickets = []  # array for tickets that matching winning numbers
  ticket_numbers_off_by_one_digit = []  # array for ticket numbers that are off by one for a single digit
  winning_numbers_off_by_one_digit = []  # corresponding array for ticket_numbers_off_by_one_digit
                                         # used to calcualate unclaimed winning numbers
  unclaimed_winning_numbers = []  # array for unclaimed winning numbers (neither winning nor off by one)

  ticket_numbers.each do |ticket|  # iterate through each ticket number in the array

    winning_numbers.each do |winner|  # iterate through each winning number in the array
      set_1 = winner.split("")  # convert the current winning number into an array of digits
      set_2 = ticket.split("")  # convert the ticket number into an array of digits
      off_by_one = 0  # counter for winning number digits that are off by one compared to ticket number digit
      greater_than_one = 0  # counter for winning number digits off by more than one
      comparison_set = set_1.zip(set_2)  # use .zip method to pair up winning and ticket number digits in multi-d array

      comparison_set.each do |inner|  # iterate through each inner array (pair of digits) to compare
        if inner[0] != inner[1]  # check if the digits are identical and if they are not...
          if (inner[0].to_i - inner[1].to_i).abs == 1  # check if the digits are off by +/- 1
            off_by_one += 1  # if so, increment the off_by_one counter
          elsif (inner[0].to_i - inner[1].to_i).abs > 1  # check if the digits are off by more than 1
            greater_than_one += 1  # if so, increment the greater_than_one counter
          end  # end the conditional counter increment statements
        end  # restart the loop and compare the next pair of digits
      end  # end the comparison_set.each loop

      # if more than a single digit is off by one or if there are digits off by more than one

      if ticket == winner
        winning_tickets.push(ticket)  # push the winning number to the appropriate array
      elsif off_by_one == 1 && greater_than_one == 0
        ticket_numbers_off_by_one_digit.push(ticket)  # push the ticket numbers off by one to the appropriate array
        winning_numbers_off_by_one_digit.push(winner)  # and push the corresponding winning numbers to their own array
      end  # start the next winning_numbers iteration to compare the ticket number against the next winning number

      # Use the difference method to find the winning numbers not in the other sets
      unclaimed_winning_numbers = winning_numbers - winning_tickets - winning_numbers_off_by_one_digit

    end  # start the next ticket_numbers iteration to compare the next ticket number against the winning numbers
  end  # end the ticket_numbers.each loop

  return unclaimed_winning_numbers  # return list of ticket numbers off by one for a single digit
                                    # note that we could also return the winning and off-by-one tickets here

end

#---------------------------------------------------------------------

# Sandbox testing
print find_winning_ticket_numbers(['1234', '5678'], ['6678', '1235', '5679', '1134', '1234', '1344'])
print "\n"
print find_ticket_numbers_off_by_one(['1225', '1234', '5678', '6679'], ['6778', '2225', '6779', '1144', '1234', '1344'])
print "\n"
print find_unclaimed_winning_numbers(['1225', '1234', '5678', '6679'], ['6778', '2225', '6779', '1144', '1234', '1344'])
____________________________

# Test for off_by_one_-_two_arrays.rb

require "minitest/autorun"
require_relative "off_by_one_-_two_arrays.rb"

class TestOffByOneTwoArrays < Minitest::Test

  def test_1_return_array_of_winning_numbers
    results = find_winning_ticket_numbers(['1234', '5678'], ['6778', '2225', '6779', '1144', '1234', '1344'])
    assert_equal(['1234'], results)
  end

  def test_2_return_array_of_winning_numbers_with_one_digit_off_by_one
    results = find_ticket_numbers_off_by_one(['1225', '1234', '5678', '6679'], ['6778', '2225', '6779', '1144', '1234', '1344'])
    assert_equal(['1225', '6679'], results)
  end

  def test_3_return_winning_numbers_with_no_matches_or_without_one_digit_off_by_one
    results = find_unclaimed_winning_numbers(['1225', '1234', '5678', '6679'], ['6778', '2225', '6779', '1144', '1234', '1344'])
    assert_equal(['6778', '1144', '1344'], results)
  end

end
____________________________

# Program to determine if ISBN number is valid or not (true/false)
# Initial version with separate methods for ISBN-10 and ISBN-13 numbers

# Method to convert hyphenated or space-delimited ISBN number to raw number
def output_raw_number(isbn)
  raw_number = []  # initialize an empty array to hold each numerical character
  isbn_array = isbn.split("")  # create an array from characters in isbn number
  isbn_array.each do |character|  # iterate through array to check each character in isbn number
    if character != "-"  # if the character is not a hyphen
      if character != " "  # and if the character is not a space
        raw_number.push(character)  # then push the character (number) to the raw_number array
      end
    end
  end
  return raw_number.join("")  # use the .join method to convert the array into a numerical string and return it
end

def all_but_last(isbn)
  raw_number = output_raw_number(isbn)  # run the output_raw_number method on the isbn number
  trimmed = raw_number[0..-2]  # use reverse indexing to return all but the last number
end

def create_checksum_isbn10(isbn)
  trimmed = all_but_last(isbn)  # run the all_but_last method to get all but the last digit from raw isbn number
  isbn_array = trimmed.split("")  # split trimmed to create an array of numerical strings
  multipliers = (1..9).to_a  # create an array of integers (1 - 9) to multiply each isbn digit
  zipped = multipliers.zip(isbn_array)  # pair up each item from the isbn_array and multipliers arrays in a multi-d array
  results = []  # initialize an empty array to hold the results from multiplying each pair of items in the zipped array
  sum = 0  # initialize a placeholder for adding up the resulting numbers from multiplying each pair in results array
  zipped.each do |x, y|  # iterate through each inner array (item from isbn_array & item from multipliers array)
    result = x * y.to_i  # multiply each pair of items in the inner array (convert the isbn_array digit to an integer)
    results.push(result)  # push the resulting product to the results (placeholder) array
  end
  results.each do |number|  # next iterate through all of the products in the results array
    sum += number  # add each product to the accumulating sum (i.e. 0+2=2, 2+1=3, 3+4=7, 7+2=9, 9+ etc...)
  end
  isbn10_checksum = sum % 11  # create the checksum by determining the remainder of the sum divided by 11 and return it
end

def create_checksum_isbn13(isbn)
  trimmed = all_but_last(isbn)  # run the all_but_last method to get all but the last digit from raw isbn number
  isbn_array = trimmed.split("")  # split trimmed to create an array of numerical strings
  multipliers = []  # initialize an empty array to hold multipliers
  6.times { multipliers.push(1); multipliers.push(3) }  # create a 12-element array of alternating 1s and 3s
  zipped = multipliers.zip(isbn_array)  # pair up each item from the isbn_array and multipliers arrays in a multi-d array
  results = []  # initialize an empty array to hold the results from multiplying each pair of items in the zipped array
  sum = 0  # initialize a placeholder for adding up the resulting numbers from multiplying each pair in results array
  zipped.each do |x, y|  # iterate through each inner array (item from isbn_array & item from multipliers array)
    result = x * y.to_i  # multiply each pair of items in the inner array (convert the isbn_array digit to an integer)
    results.push(result)  # push the resulting product to the results (placeholder) array
  end
  results.each do |number|  # next iterate through all of the products in the results array
    sum += number  # add each product to the accumulating sum (i.e. 0+2=2, 2+1=3, 3+4=7, 7+2=9, 9+ etc...)
  end
  remainder = sum % 10  # determine the remainder of the sum divided by 10
  difference = 10 - remainder  # subtract the modulus from 10 to determine the difference
  isbn13_checksum = difference % 10  # create the checksum by determining the remainder of the difference divided by 10 and return it
end

def compare_checksum(isbn)
  final = isbn[-1]  # use reverse indexing to get the last character from the isbn number
  raw_number = output_raw_number(isbn)  # get the raw isbn number
  if raw_number.length == 10  # if the number is isbn10
    checksum = create_checksum_isbn10(isbn)  # run the isbn10 create_checksum method to get the checksum
  else
    checksum = create_checksum_isbn13(isbn)  # otherwise run the isbn13 create_checksum method to get the checksum
  end
  if final == "x"  # if the last character in the isbn number is an "x"
    return true if checksum.to_s == "10"  # then return true if the checksum is "10" (x == 10)
  elsif checksum.to_s == final  # if not, see if the checksum (converted to a string) equals the last character
    return true  # and if so, then return true
  else
    return false  # otherwise, return false
  end
end

# Sandbox testing:
# puts output_raw_number("0-321-14653-0")  # ISBN-10
# puts output_raw_number("877 1 95 869x")  # ISBN-10
# puts output_raw_number("0471958697")  # ISBN-10
# puts output_raw_number("7421394761")  # ISBN-10
# puts output_raw_number("978-0-13-149505-0")  # ISBN-13
# puts output_raw_number("978 0 471 48648 0")  # ISBN-13
# puts output_raw_number("9780470059029")  # ISBN-13

# puts all_but_last("0-321-14653-0")  # ISBN-10
# puts all_but_last("877 1 95 869x")  # ISBN-10
# puts all_but_last("0471958697")  # ISBN-10
# puts all_but_last("7421394761")  # ISBN-10
# puts all_but_last("978-0-13-149505-0")  # ISBN-13
# puts all_but_last("978 0 471 48648 0")  # ISBN-13
# puts all_but_last("9780470059029")  # ISBN-13

# puts create_checksum_isbn10("0-321-14653-0")  # ISBN-10
# puts create_checksum_isbn10("877 1 95 869x")  # ISBN-10
# puts create_checksum_isbn10("0471958697")  # ISBN-10
# puts create_checksum_isbn10("7421394761")  # ISBN-10
# puts create_checksum_isbn13("978-0-13-149505-0")  # ISBN-13
# puts create_checksum_isbn13("978 0 471 48648 0")  # ISBN-13
# puts create_checksum_isbn13("9780470059029")  # ISBN-13

# puts compare_checksum("0-321-14653-0")  # ISBN-10
# puts compare_checksum("877 1 95 869x")  # ISBN-10
# puts compare_checksum("0471958697")  # ISBN-10
# puts compare_checksum("7421394761")  # ISBN-10
# puts compare_checksum("978-0-13-149505-0")  # ISBN-13
# puts compare_checksum("978 0 471 48648 0")  # ISBN-13
# puts compare_checksum("9780470059029")  # ISBN-13
____________________________

# Program to determine if a specified ISBN number is valid or not (returns true/false)
# Start with is_to_small?() method
# Final refactored version

# Method to convert hyphenated or space-delimited ISBN number to raw number
def output_raw_number(isbn)
    isbn.delete " -"  # the intersection (difference) of the number and delimiting characters
end

# Method to create an array of multipliers for calculating the checksum value (based on ISBN type)
def create_multipliers(isbn)
  multipliers = []  # initialize an empty array to hold multipliers
  # if the number is isbn10 create an array of integers (1 - 9) to multiply each isbn digit
  # otherwise it's isbn13 so create a 12-element array of alternating 1s and 3s
  output_raw_number(isbn).length == 10 ? (multipliers = (1..9).to_a) : 6.times { multipliers.push(1, 3) }
  return multipliers
end

# Method to create the intermediate sum value during checksum calculation
# This method consolidates the common statements for both ISBN types
def create_sum(isbn)
  all_but_last = output_raw_number(isbn).chop  # assign all but the last character in the isbn number to a variable
  multipliers = create_multipliers(isbn)  # collect the array of multipliers from the create_multipliers method
  sum = 0  # initialize a placeholder for adding up the resulting numbers from multiplying each pair in results array
  count = 0  # initialize a counter for iterating through the all_but_last string and multipliers array
  # iterate through every letter in the string, multiply it by every item in the array and then sum the products
  all_but_last.length.times { sum = sum + all_but_last[count].to_i * multipliers[count]; count += 1 }
  return sum  # return the sum
end

# Method to create the checksum value for a specified ISBN-10 or ISBN-13 number
def create_checksum(isbn)
  sum = create_sum(isbn)  # run the create_sum method to calculate the intermediate sum value
  # if the number is isbn10 create the ISBN-10 checksum, 0therwise the number is isbn13 so create the ISBN-13 checksum
  output_raw_number(isbn).length == 10 ? (checksum = sum % 11) : (checksum = (10 - (sum % 10)) % 10)
  return checksum  # return the checksum
end

# Method to validate the calculated checksum value (via create_checksum) against the final digit of the ISBN number
def valid_checksum?(isbn)
  if isbn.index("x") == (isbn.length - 1) then true  # if the number contains "x" and it is the last character, return true
    elsif isbn[-1] == create_checksum(isbn).to_s then true  # if the last character and the checksum are equal, return true
    else false  # otherwise, return false
  end
end

# Method to filter raw number if x is anywhere but the last character
def is_x_bad?(isbn)
  first_nine = isbn.chop  # assign the first nine characters to a variable
  # if x is in the first nine characters return false, otherwise run valid_checksum?()
  (first_nine.include? "x") ? false : valid_checksum?(isbn)
end

# Method to filter number if it contains invalid characters
def are_characters_valid?(isbn)
  invalid = isbn.delete "xX0123456789 -"  # the intersection (difference) of the number and valid characters
  # if the number has invalid characters return false, otherwise run is_x_bad?()
  invalid.length > 0 ? false : is_x_bad?(isbn)
end

# !!!First method to run!!!
# Method to filter number if it is too short to be ISBN-10
def is_too_small?(isbn)
  # if the number is less than 10 characters long, it's not a valid isbn number
  isbn.length < 10 ? (return false) : are_characters_valid?(isbn)
end

# Sandbox testing:
# puts output_raw_number("0-321-14653-0")  # ISBN-10
# puts output_raw_number("877 1 95 869x")  # ISBN-10
# puts output_raw_number("0471958697")  # ISBN-10
# puts output_raw_number("7421394761")  # ISBN-10
# puts output_raw_number("978-0-13-149505-0")  # ISBN-13
# puts output_raw_number("978 0 471 48648 0")  # ISBN-13
# puts output_raw_number("9780470059029")  # ISBN-13

# p create_multipliers("0-321-14653-0")  # ISBN-10
# p create_multipliers("877 1 95 869x")  # ISBN-10
# p create_multipliers("0471958697")  # ISBN-10
# p create_multipliers("7421394761")  # ISBN-10
# p create_multipliers("978-0-13-149505-0")  # ISBN-13
# p create_multipliers("978 0 471 48648 0")  # ISBN-13
# p create_multipliers("9780470059029")  # ISBN-13

# puts create_sum("0-321-14653-0")  # ISBN-10
# puts create_sum("877 1 95 869x")  # ISBN-10
# puts create_sum("0471958697")  # ISBN-10
# puts create_sum("7421394761")  # ISBN-10
# puts create_sum("978-0-13-149505-0")  # ISBN-13
# puts create_sum("978 0 471 48648 0")  # ISBN-13
# puts create_sum("9780470059029")  # ISBN-13

# puts create_checksum("0-321-14653-0")  # ISBN-10
# puts create_checksum("877 1 95 869x")  # ISBN-10
# puts create_checksum("0471958697")  # ISBN-10
# puts create_checksum("7421394761")  # ISBN-10
# puts create_checksum("978-0-13-149505-0")  # ISBN-13
# puts create_checksum("978 0 471 48648 0")  # ISBN-13
# puts create_checksum("9780470059029")  # ISBN-13

# puts valid_checksum?("0-321-14653-0")  # ISBN-10
# puts valid_checksum?("877 1 95 869x")  # ISBN-10
# puts valid_checksum?("0471958697")  # ISBN-10
# puts valid_checksum?("7421394761")  # ISBN-10
# puts valid_checksum?("978-0-13-149505-0")  # ISBN-13
# puts valid_checksum?("978 0 471 48648 0")  # ISBN-13
# puts valid_checksum?("9780470059029")  # ISBN-13

# puts is_x_bad?("877 1 95 86x9")  # bad ISBN number
# puts is_x_bad?("877 1 95 869x")  # ISBN-10

# puts are_characters_valid?("0-321@14653-0")  # bad ISBN number
# puts are_characters_valid?("0-321-14653-0")  # ISBN-10
# puts are_characters_valid?("978 0 471 48648 0")  # ISBN-13

#####################################################################
# Run is_to_small?() to completely test ISBN-10 and ISBN-13 numbers #
#####################################################################

# puts is_too_small?("0-321-14653-0")  # ISBN-10
# puts is_too_small?("877 1 95 869x")  # ISBN-10
# puts is_too_small?("0471958697")  # ISBN-10
# puts is_too_small?("7421394761")  # ISBN-10
# puts is_too_small?("978-0-13-149505-0")  # ISBN-13
# puts is_too_small?("978 0 471 48648 0")  # ISBN-13
# puts is_too_small?("9780470059029")  # ISBN-13

# puts is_too_small?("4780470059029")  # bad ISBN number
# puts is_too_small?("0-321@14653-0")  # bad ISBN number
# puts is_too_small?("877195x869")  # bad ISBN number
# puts is_too_small?("")  # bad ISBN number
# puts is_too_small?(" ")  # bad ISBN number
# puts is_too_small?("-")  # bad ISBN number
____________________________

# Tests for isbn_check.rb

require "minitest/autorun"
require_relative "isbn_check.rb"
# require_relative "isbn_check_minimal_comments.rb"
# require_relative "isbn_check_no_comments.rb"

class TestIsbnCheck < Minitest::Test

  def test_1_output_raw_number_source_with_hyphens_isbn10
    isbn = "0-321-14653-0"
    results = output_raw_number(isbn)
    assert_equal("0321146530", results)
  end

  def test_2_output_raw_number_source_with_spaces_isbn10
    isbn = "877 1 95 869x"
    results = output_raw_number(isbn)
    assert_equal("877195869x", results)
  end

  def test_3_no_change_in_ouput_if_raw_isbn_number_isbn10
    isbn = "0471958697"
    results = output_raw_number(isbn)
    assert_equal("0471958697", results)
  end

  def test_4_output_raw_number_source_with_hyphens_isbn13
    isbn = "978-0-13-149505-0"
    results = output_raw_number(isbn)
    assert_equal("9780131495050", results)
  end

  def test_5_output_raw_number_source_with_spaces_isbn13
    isbn = "978 0 471 48648 0"
    results = output_raw_number(isbn)
    assert_equal("9780471486480", results)
  end

  def test_6_no_change_in_ouput_if_raw_isbn_number_isbn13
    isbn = "9780470059029"
    results = output_raw_number(isbn)
    assert_equal("9780470059029", results)
  end

  def test_7_create_multipliers_array_isbn_10
    isbn = "7421394761"
    multipliers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    results = create_multipliers(isbn)
    assert_equal(multipliers, results)
  end

  def test_8_create_multipliers_array_isbn_13
    multipliers = [1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3]
    isbn = "9780470059029"
    results = create_multipliers(isbn)
    assert_equal(multipliers, results)
  end

  def test_9_create_sum_isbn10_hyphen
    isbn = "0-321-14653-0"
    results = create_sum(isbn)
    assert_equal(154, results)
  end

  def test_10_create_sum_isbn10_spaces
    isbn = "877 1 95 869x"
    results = create_sum(isbn)
    assert_equal(307, results)
  end

  def test_11_create_sum_isbn10_raw
    isbn = "0471958697"
    results = create_sum(isbn)
    assert_equal(293, results)
  end

  def test_12_create_sum_isbn13_hyphen
    isbn = "978-0-13-149505-0"
    results = create_sum(isbn)
    assert_equal(100, results)
  end

  def test_13_create_sum_isbn13_spaces
    isbn = "978 0 471 48648 0"
    results = create_sum(isbn)
    assert_equal(130, results)
  end

  def test_14_create_sum_isbn13_raw
    isbn = "9780470059029"
    results = create_sum(isbn)
    assert_equal(101, results)
  end

  def test_15_create_checksum_isbn10_hyphen
    isbn = "0-321-14653-0"
    results = create_checksum(isbn)
    assert_equal(0, results)
  end

  def test_16_create_checksum_isbn10_spaces
    isbn = "877 1 95 869x"
    results = create_checksum(isbn)
    assert_equal(10, results)
  end

  def test_17_create_checksum_isbn10_raw
    isbn = "0471958697"
    results = create_checksum(isbn)
    assert_equal(7, results)
  end

  def test_18_create_checksum_isbn13_hyphen
    isbn = "978-0-13-149505-0"
    results = create_checksum(isbn)
    assert_equal(0, results)
  end

  def test_19_create_checksum_isbn13_spaces
    isbn = "978 0 471 48648 0"
    results = create_checksum(isbn)
    assert_equal(0, results)
  end

  def test_20_create_checksum_isbn13_raw
    isbn = "9780470059029"
    results = create_checksum(isbn)
    assert_equal(9, results)
  end

  def test_21_validate_checksum_isbn10_with_hyphens
    isbn = "0-321-14653-0"
    results = valid_checksum?(isbn)
    assert_equal(true, results)
  end

  def test_22_validate_checksum_isbn10_with_spaces
    isbn = "877 1 95 869x"
    results = valid_checksum?(isbn)
    assert_equal(true, results)
  end

  def test_23_validate_checksum_isbn10_raw
    isbn = "7421394761"
    results = valid_checksum?(isbn)
    assert_equal(true, results)
  end

  def test_24_validate_checksum_isbn13_with_hyphens
    isbn = "978-0-13-149505-0"
    results = valid_checksum?(isbn)
    assert_equal(true, results)
  end

  def test_25_validate_checksum_isbn13_with_spaces
    isbn = "978 0 471 48648 0"
    results = valid_checksum?(isbn)
    assert_equal(true, results)
  end

  def test_26_validate_checksum_isbn13_raw
    isbn = "9780470059029"
    results = valid_checksum?(isbn)
    assert_equal(true, results)
  end

  def test_27_return_true_if_no_misplaced_x
    isbn = "877 1 95 869x"
    results = is_x_bad?(isbn)
    assert_equal(true, results)
  end

  def test_28_return_false_if_x_not_last
    isbn = "877 1 95 86x9"
    results = is_x_bad?(isbn)
    assert_equal(false, results)
  end

  def test_29_return_true_if_all_characters_valid
    isbn = "978-0-13-149505-0"
    results = are_characters_valid?(isbn)
    assert_equal(true, results)
  end

  def test_30_return_false_if_any_characters_invalid
    isbn = "0-321@14653-0"
    results = are_characters_valid?(isbn)
    assert_equal(false, results)
  end

  def test_31_return_true_if_number_10_or_greater
    isbn = "978-0-13-149505-0"
    results = is_too_small?(isbn)
    assert_equal(true, results)
  end

  def test_32_return_false_if_number_less_than_10
    isbn = "-"
    results = is_too_small?(isbn)
    assert_equal(false, results)
  end

end
____________________________

# Coin Changer

# Original make_change method
def make_change(amount)
  coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }  # using alternate hash syntax for brevity/clarity
  coin_count = {}  # initialize the coin_count hash
  coins.each do |type, value|  # loop through the coins hash (quarter > penny)
    if amount >= value  # if the amount of change is greater than the value of the current coin
      coin_count[type] = 0  # then add that type of coin to the coin_count hash (need this for while loop)
    end
    while amount >= value  # next, if the amount of change is greater than the value of the current coin
      amount = amount - value  # subtract the current coin's value from the amount of change (i.e. 31 - 25)
      coin_count[type] += 1  # then increment that coin's count in the coin_count hash
    end  # repeat this loop until the amout of change is less than the value of the current coin
  end  # then evaluate the next coin, continuing until all coins have been evaluated (and amount has been reduced to 0)
  return coin_count  # return the coin_count hash, which will be a { coin_type: count } key-value pair
end

# Refactored make_change method
def make_change(amount)
  coins = { quarter: 25, dime: 10, nickel: 5, penny: 1 }
  coin_count = {}
  coins.each do |type, value|
    coin_count[type] = 0 if amount >= value
    (amount -= value; coin_count[type] += 1) while amount >= value
  end
  return coin_count
end

# Sandbox testing
# p make_change(8)  # {:nickel=>1, :penny=>3}
# p make_change(11)  # {:dime=>1, :penny=>1}
# p make_change(19)  # {:dime=>1, :nickel=>1, :penny=>4}
# p make_change(27)  # {:quarter=>1, :penny=>2}
# p make_change(31)  # {:quarter=>1, :nickel=>1, :penny=>1}
# p make_change(48)  # {:quarter=>1, :dime=>2, :penny=>3}
# p make_change(93)  # {:quarter=>3, :dime=>1, :nickel=>1, :penny=>3}
____________________________

# Coin Changer Tests

require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinChanger < Minitest::Test

  def test_1_output_for_11_cents
    amount = 11
    results = make_change(amount)
    assert_equal({:dime => 1, :penny => 1}, results)
  end

  def test_2_output_for_31_cents
    amount = 31
    results = make_change(amount)
    assert_equal({:quarter => 1, :nickel => 1, :penny => 1}, results)
  end

  def test_3_output_for_11_cents
    amount = 93
    results = make_change(amount)
    assert_equal({:quarter => 3, :dime => 1, :nickel => 1, :penny => 3}, results)
  end

end
____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________

____________________________
____________________________
____________________________

My Programs
____________________________
____________________________
____________________________

###############################################################################
### Very basic hangman game inspired by TechHire interview with Mined Minds ###
###############################################################################
######################## Rewritten in Ruby (2017-02-07) #######################
#############################  by John C. Verbosky ############################
###############################################################################
# Features:                                                                   #
# - animations for winning and losing                                         #
# - ability to start a new game or exit after win/loss                        #
# - cumulative score                                                          #
###############################################################################
# 1-to-1 conversion - will refactor using TDD next, particularly method calls #
###############################################################################

# Load Win32API class if running on Windows - use with getkey()
$use_stty = begin  # check the current terminal session
  require 'Win32API'  # load the Win32API class for Windows systems
  false  # if this succeeds, the system is Windows so return false
rescue LoadError  # if this fails, the system is Unix
  true  # so return true and use Unix commands
end

# array of mystery words
$words = ["research", "persistence", "dedication", "curiosity", "troubleshoot", "energetic", "organization",
          "communication", "development", "loyalty", "adaptable", "creativity", "improvement", "dependable",
          "teamwork", "collaboration", "optimistic", "focused", "meticulous", "effective", "inspired"]

$word = $words.sample  # select a random word from the words array
$bucket = []  # array to hold all letters that have been entered to guess
$build_word = []  # array to hold guessed letters that are found in mystery word
$wrong_count = []  # array to hold guessed letters that are not found in mystery word
$games_won = 0  # counter for games won
$games_lost = 0  # counter for games lost

# Method to clear the screen regardless of OS
def clear_screen()
  if $use_stty  # if system is Unix
    system("clear")  # use the "clear" command to clear the screen
  else  # otherwise system is Windows
    system("cls")  # so use the "cls" command to clear the screen
  end
end

# Method to make tweaking margins easier
def margin(number)
  number.times { puts "\n" }  # output a blank line "number" of times
end

# Method to display the cumulative score of games won and lost
def score()
  margin(1)
  puts "  Score"
  puts "  -----"
  puts "  Won: #{$games_won}    Lost: #{$games_lost}"
end

# Method to display guessed letters
def letters()
  puts "  Word:     " + $build_word.join(" ")  # display the correctly guessed letters and placeholders
  margin(1)
  puts "  Letters:  " + $bucket.join(" ")  # display all of the guessed letters
  margin(2)
end

# Method to start the game
def start_game(word)
  clear_screen()  # Clear the screen
  $word.length.times { $build_word.push("_") }  # Populate the build_word list with an underscore for each letter in the mystery word
  user_input()  #Run user_input() to display the main "UI"
end

# Method that acts as primary starting/return point for other methods
def user_input()
  score()  # display the cumulative score
  hangman($wrong_count.length)  # display the current progressive hangman "image" based on wrong guesses
  letters()  # display the correctly guessed letters and placeholders
  print "  Please enter a letter: "  # prompt the user for a letter
  letter = gets.chomp  # assign the letter to a variable
  good_letter(letter)  # pass the user-specified letter to good_letter()
end

# Method that checks the user-specified letter for a few things
def good_letter(letter)
  clear_screen()  # Clear the screen
  if $bucket.include? letter  # check to see if letter has already been guessed and reprompt if so
    puts "  You already guessed that one - TRY AGAIN!"
    user_input()
  elsif letter[/[a-zA-Z]+/] and letter.length == 1  # check is a single -letter- has been entered
    $bucket.push(letter)  # if so, add it to the bucket list
    letter_test(letter)  # then pass it to letter_test()
  else  # if multiple letters, non-alpha characters or nothing has been entered
    puts "  Enter a single letter - TRY AGAIN!"  # reprompt user to try again
    user_input()
  end
end

# Method that checks to see if letter is in the mystery word
def letter_test(letter)
  if $word.include? letter  # If it is in the word, pass it to find_locations()
    find_locations(letter)
  else  # If it is not in the word, pass it to wrong_letter()
    wrong_letter(letter)
  end
end

# Method that finds all locations of a letter in the word
def find_locations(letter)
  locations = []  # array for the index (position) of all instances of the letter in the word
  last_index = 0  # dual-purpose variable that holds the index (position) of the letter and the .index offset
  occurrences = $word.count letter  # variable used to control do loop iteration count
  occurrences.times do  # for every occurrence of the letter in the word
    last_index = $word.index(letter, last_index)  # determine the position of the letter in the word
    locations.push(last_index)  # push the position of the letter to the location array
    last_index += 1  # increment last_index by 1 to target the next occurrence of the letter (via .index offset)
  end
  add_letter(letter, locations)  # pass the user-specified letter and array of locations to add_letter()
end

# Method to populate $build_word with every occurrence of a letter
def add_letter(letter, locations)
  locations.each do |location|  # for each occurrence of a letter
    $build_word[location] = letter  # add the letter to the correct location in $build-word
  end
  word_test()  # then run word_test()
end

# Method to compare the current build_word array against the mystery word
def word_test()
  if $build_word.join == $word  # if $build_word equals $word, the user won
    $games_won += 1  # so increase the games_won score by 1
    winner(1)  # and start winner() on frame 1 (animation count 1)
  else  # if they don't match, run user_input() for another letter
    user_input()
  end
end

# Method that receives non-mystery word letter and adds it to the wrong_count array
def wrong_letter(letter)
  if $wrong_count.length < 9  # if the wrong_count list has less than 9 letters
    $wrong_count.push(letter)  # then add the letter to the list
    user_input()  # run user_input() again
  else  # if this is the tenth wrong letter, it's game over
    $games_lost += 1  # so increase the games_lost score by 1
    loser(5)  # and start loser() on frame 1 (animation count 5)
  end
end

# Method to progressively draw the hangman stages as incorrect letters are guessed
def hangman(count)
  if count == 0
    margin(12)
  elsif count == 1
    margin(8)
    puts "   _________"
    margin(3)
  elsif count == 2
    margin(2)
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 3
    margin(1)
    puts "        ______"
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 4
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    4.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 5
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    3.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 6
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |      |"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 7
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 8
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  else
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     /"
    puts "       |"
    puts "   ____|____"
    margin(3)
  end
end

# Method to return the ASCII code last key pressed, or nil if none
def getkey()
  if $use_stty  # if system is Unix
    system('stty raw -echo') # use raw mode, no echo
    character = (STDIN.read_nonblock(1).ord rescue nil)
    system('stty -raw echo') # reset terminal mode
    return character
  else  # otherwise use Win32API class methods for Windows system
    return Win32API.new('crtdll', '_kbhit', [ ], 'I').Call.zero? ? nil : Win32API.new('crtdll', '_getch', [ ], 'L').Call
  end
end

# Method to handle endgame items (animations, start a new game, exit game) - runs after each animation frame
def game_over(ani_count)
  key = getkey()  # variable for last key pressed
  clear_screen()  # Clear the screen
  if key != nil  # check to see if a key was pressed during winner/loser animation
    if key != 27  # if the user presses any key except Esc (27)
      $word = $words.sample  # select a new random word
      $bucket = []  # clear all global arrays
      $build_word = []
      $wrong_count = []
      start_game($word)  #  and start a new game
    elsif key == 27  # if the user presses the Esc key (27)
      puts "Exiting game..."  # and exit the game
      margin(1)
    end
  elsif ani_count < 5  # if no keypress and animation count < 5
    winner(ani_count)  # run winner() with the current animation count
  else  # if no keypress and animation count >= 5
    loser(ani_count)  # run loser() with the current animation count
  end
end

# Method to print repetitive congratulations text in winner() animation
def congratulations()
  margin(2)
  puts "       ---CONGRATULATIONS---"
  margin(1)
  puts "        YOU WON THE GAME!!!"
  margin(2)
end

# Method to display winner() animation
def winner(ani_count)
  if ani_count == 1  # winner animation frame 1
    score()
    congratulations()
    puts "   \\O/    \\O_  \\O/  _O/    \\O/ "
    puts "    |    _/     |     \\_    |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " - Press any key to play again or Esc to quit -"
    sleep(0.5)  # wait 1/2 second for smooth animation
    game_over(2)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 2  # winner animation frame 2
    score()
    congratulations()
    puts "    \\O_  \\O/  _O/    \\O/    \\O_ "
    puts "   _/     |     \\_    |    _/   "
    puts "    |    / \\    |    / \\    |   "
    margin(2)
    letters()
    puts " \\ Press any key to play again or Esc to quit \\"
    sleep(0.5)
    game_over(3)
  elsif ani_count == 3  # winner animation frame 3
    score()
    congratulations()
    puts "   \\O/  _O/    \\O/    \\O_  \\O/ "
    puts "    |     \\_    |    _/     |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " | Press any key to play again or Esc to quit |"
    sleep(0.5)
    game_over(4)
  else  # winner animation frame 4
    score()
    congratulations()
    puts "  _O/    \\O/    \\O_  \\O/  _O/  "
    puts "    \\_    |    _/     |     \\_ "
    puts "    |    / \\    |    / \\    |  "
    margin(2)
    letters()
    puts " / Press any key to play again or Esc to quit /"
    sleep(0.5)
    game_over(1)
  end
end

# Method to print repetitive game over text in loser() animation
def sorry()
  margin(1)
  puts "  SORRY - GAME OVER!"
  margin(1)
end

# Method to display loser() animation
def loser(ani_count)
  if ani_count == 5  #loser animation frame 1
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " - Press any key to play again or Esc to quit -"
    sleep(0.5)
    game_over(6)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 6  #loser animation frame 2
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " \\ Press any key to play again or Esc to quit \\"
    sleep(0.5)
    game_over(7)
  elsif ani_count == 7  #loser animation frame 3
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     \\O/"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " | Press any key to play again or Esc to quit |"
    sleep(0.5)
    game_over(8)
  else  # loser animation frame 4
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " / Press any key to play again or Esc to quit /"
    sleep(0.5)
    game_over(5)
  end
end

start_game($word)
____________________________

###############################################################################
### Very basic hangman game inspired by TechHire interview with Mined Minds ###
###############################################################################
######################## Rewritten in Ruby (2017-02-07) #######################
#############################  by John C. Verbosky ############################
###############################################################################
# Features:                                                                   #
# - animations for winning and losing                                         #
# - ability to start a new game or exit after win/loss                        #
# - cumulative score                                                          #
# - Windows x64-compatible version                                            #
###############################################################################
# 1-to-1 conversion - will refactor using TDD next, particularly method calls #
###############################################################################

# Required for get_key()
require "io/wait"

# array of mystery words
$words = ["research", "persistence", "dedication", "curiosity", "troubleshoot", "energetic", "organization",
          "communication", "development", "loyalty", "adaptable", "creativity", "improvement", "dependable",
          "teamwork", "collaboration", "optimistic", "focused", "meticulous", "effective", "inspired"]

$word = $words.sample  # select a random word from the words array
$bucket = []  # array to hold all letters that have been entered to guess
$build_word = []  # array to hold guessed letters that are found in mystery word
$wrong_count = []  # array to hold guessed letters that are not found in mystery word
$games_won = 0  # counter for games won
$games_lost = 0  # counter for games lost

# Method to clear the screen regardless of OS
def clear_screen()
  if RUBY_PLATFORM =~ /cygwin|mswin|mingw|bccwin|wince|emx/  # see if system is Win
    system("cls")  # so use the "cls" command to clear the screen
  else  # otherwise system is Mac/Linux
    system("clear")  # use the "clear" command to clear the screen
  end
end

# Method to make tweaking margins easier
def margin(number)
  number.times { puts "\n" }  # output a blank line "number" of times
end

# Method to display the cumulative score of games won and lost
def score()
  margin(1)
  puts "  Score"
  puts "  -----"
  puts "  Won: #{$games_won}    Lost: #{$games_lost}"
end

# Method to display guessed letters
def letters()
  puts "  Word:     " + $build_word.join(" ")  # display the correctly guessed letters and placeholders
  margin(1)
  puts "  Letters:  " + $bucket.join(" ")  # display all of the guessed letters
  margin(2)
end

# Method to start the game
def start_game(word)
  clear_screen()  # Clear the screen
  $word.length.times { $build_word.push("_") }  # Populate the build_word list with an underscore for each letter in the mystery word
  user_input()  #Run user_input() to display the main "UI"
end

# Method that acts as primary starting/return point for other methods
def user_input()
  score()  # display the cumulative score
  hangman($wrong_count.length)  # display the current progressive hangman "image" based on wrong guesses
  letters()  # display the correctly guessed letters and placeholders
  print "  Please enter a letter: "  # prompt the user for a letter
  letter = gets.chomp  # assign the letter to a variable
  good_letter(letter)  # pass the user-specified letter to good_letter()
end

# Method that checks the user-specified letter for a few things
def good_letter(letter)
  clear_screen()  # Clear the screen
  if $bucket.include? letter  # check to see if letter has already been guessed and reprompt if so
    puts "  You already guessed that one - TRY AGAIN!"
    user_input()
  elsif letter[/[a-zA-Z]+/] and letter.length == 1  # check is a single -letter- has been entered
    $bucket.push(letter)  # if so, add it to the bucket list
    letter_test(letter)  # then pass it to letter_test()
  else  # if multiple letters, non-alpha characters or nothing has been entered
    puts "  Enter a single letter - TRY AGAIN!"  # reprompt user to try again
    user_input()
  end
end

# Method that checks to see if letter is in the mystery word
def letter_test(letter)
  if $word.include? letter  # If it is in the word, pass it to find_locations()
    find_locations(letter)
  else  # If it is not in the word, pass it to wrong_letter()
    wrong_letter(letter)
  end
end

# Method that finds all locations of a letter in the word
def find_locations(letter)
  locations = []  # array for the index (position) of all instances of the letter in the word
  last_index = 0  # dual-purpose variable that holds the index (position) of the letter and the .index offset
  occurrences = $word.count letter  # variable used to control do loop iteration count
  occurrences.times do  # for every occurrence of the letter in the word
    last_index = $word.index(letter, last_index)  # determine the position of the letter in the word
    locations.push(last_index)  # push the position of the letter to the location array
    last_index += 1  # increment last_index by 1 to target the next occurrence of the letter (via .index offset)
  end
  add_letter(letter, locations)  # pass the user-specified letter and array of locations to add_letter()
end

# Method to populate $build_word with every occurrence of a letter
def add_letter(letter, locations)
  locations.each do |location|  # for each occurrence of a letter
    $build_word[location] = letter  # add the letter to the correct location in $build-word
  end
  word_test()  # then run word_test()
end

# Method to compare the current build_word array against the mystery word
def word_test()
  if $build_word.join == $word  # if $build_word equals $word, the user won
    $games_won += 1  # so increase the games_won score by 1
    winner(1)  # and start winner() on frame 1 (animation count 1)
  else  # if they don't match, run user_input() for another letter
    user_input()
  end
end

# Method that receives non-mystery word letter and adds it to the wrong_count array
def wrong_letter(letter)
  if $wrong_count.length < 9  # if the wrong_count list has less than 9 letters
    $wrong_count.push(letter)  # then add the letter to the list
    user_input()  # run user_input() again
  else  # if this is the tenth wrong letter, it's game over
    $games_lost += 1  # so increase the games_lost score by 1
    loser(5)  # and start loser() on frame 1 (animation count 5)
  end
end

# Method to progressively draw the hangman stages as incorrect letters are guessed
def hangman(count)
  if count == 0
    margin(12)
  elsif count == 1
    margin(8)
    puts "   _________"
    margin(3)
  elsif count == 2
    margin(2)
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 3
    margin(1)
    puts "        ______"
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 4
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    4.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 5
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    3.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 6
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |      |"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 7
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 8
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  else
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     /"
    puts "       |"
    puts "   ____|____"
    margin(3)
  end
end

# Method to get the current keypress
def get_key()
  begin
    system("stty raw -echo") # turn raw input on
    c = nil
    if $stdin.ready?
      c = $stdin.getc
    end
    c.chr if c
  ensure
    system "stty -raw echo" # turn raw input off
  end
end

# Method to handle endgame items (animations, start a new game, exit game) - runs after each animation frame
def game_over(ani_count)
  key = get_key()  # variable for last key pressed
  clear_screen()  # Clear the screen
  if key != nil  # check to see if a key was pressed during winner/loser animation
    if key == "\n"  # if the user presses the Enter key
      $word = $words.sample  # select a new random word
      $bucket = []  # clear all global arrays
      $build_word = []
      $wrong_count = []
      start_game($word)  #  and start a new game
    elsif key != "\n"  # if the user presses any key other than Enter
      puts "Exiting game..."  # and exit the game
      margin(1)
    end
  elsif ani_count < 5  # if no keypress and animation count < 5
    winner(ani_count)  # run winner() with the current animation count
  else  # if no keypress and animation count >= 5
    loser(ani_count)  # run loser() with the current animation count
  end
end

# Method to print repetitive congratulations text in winner() animation
def congratulations()
  margin(2)
  puts "       ---CONGRATULATIONS---"
  margin(1)
  puts "        YOU WON THE GAME!!!"
  margin(2)
end

# Method to display winner() animation
def winner(ani_count)
  if ani_count == 1  # winner animation frame 1
    score()
    congratulations()
    puts "   \\O/    \\O_  \\O/  _O/    \\O/ "
    puts "    |    _/     |     \\_    |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " - Press Enter to play again or a letter + Enter to quit -"
    sleep(0.5)  # wait 1/2 second for smooth animation
    game_over(2)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 2  # winner animation frame 2
    score()
    congratulations()
    puts "    \\O_  \\O/  _O/    \\O/    \\O_ "
    puts "   _/     |     \\_    |    _/   "
    puts "    |    / \\    |    / \\    |   "
    margin(2)
    letters()
    puts " \\ Press Enter to play again or a letter + Enter to quit \\"
    sleep(0.5)
    game_over(3)
  elsif ani_count == 3  # winner animation frame 3
    score()
    congratulations()
    puts "   \\O/  _O/    \\O/    \\O_  \\O/ "
    puts "    |     \\_    |    _/     |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " | Press Enter to play again or a letter + Enter to quit |"
    sleep(0.5)
    game_over(4)
  else  # winner animation frame 4
    score()
    congratulations()
    puts "  _O/    \\O/    \\O_  \\O/  _O/  "
    puts "    \\_    |    _/     |     \\_ "
    puts "    |    / \\    |    / \\    |  "
    margin(2)
    letters()
    puts " / Press Enter to play again or a letter + Enter to quit /"
    sleep(0.5)
    game_over(1)
  end
end

# Method to print repetitive game over text in loser() animation
def sorry()
  margin(1)
  puts "  SORRY - GAME OVER!"
  margin(1)
end

# Method to display loser() animation
def loser(ani_count)
  if ani_count == 5  #loser animation frame 1
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " - Press Enter to play again or a letter + Enter to quit -"
    sleep(0.5)
    game_over(6)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 6  #loser animation frame 2
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " \\ Press Enter to play again or a letter + Enter to quit \\"
    sleep(0.5)
    game_over(7)
  elsif ani_count == 7  #loser animation frame 3
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     \\O/"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " | Press Enter to play again or a letter + Enter to quit |"
    sleep(0.5)
    game_over(8)
  else  # loser animation frame 4
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " / Press Enter to play again or a letter + Enter to quit /"
    sleep(0.5)
    game_over(5)
  end
end

start_game($word)
____________________________

###############################################################################
### Very basic hangman game inspired by TechHire interview with Mined Minds ###
###############################################################################
######################## Rewritten in Ruby (2017-02-07) #######################
#############################  by John C. Verbosky ############################
###############################################################################
# Features:                                                                   #
# - animations for winning and losing                                         #
# - ability to start a new game or exit after win/loss                        #
# - cumulative score                                                          #
###############################################################################
# Note:                                                                       #
# - runs correctly on Windows x86, Mac and Linux                              #
# - does not work correctly on Windows with 64-bit Ruby                       #
#   - run with 32-bit Ruby on 64-bit Windows (see notes)                      #
###############################################################################

# Load Win32API class if running on Windows - use with getkey()
$use_stty = begin  # check the current terminal session
  require 'Win32API'  # load the Win32API class for Windows systems
  false  # if this succeeds, the system is Windows so return false
rescue LoadError  # if this fails, the system is Unix
  true  # so return true and use Unix commands
end

# array of mystery words
$words = ["research", "persistence", "dedication", "curiosity", "troubleshoot", "energetic", "organization",
          "communication", "development", "loyalty", "adaptable", "creativity", "improvement", "dependable",
          "teamwork", "collaboration", "optimistic", "focused", "meticulous", "effective", "inspired"]

$word = $words.sample  # select a random word from the words array
$bucket = []  # array to hold all letters that have been entered to guess
$build_word = []  # array to hold guessed letters that are found in mystery word
$wrong_count = []  # array to hold guessed letters that are not found in mystery word
$games_won = 0  # counter for games won
$games_lost = 0  # counter for games lost

# Method to clear the screen regardless of OS
def clear_screen()
  $use_stty ? system("clear") : system("cls")
end

# Method to make tweaking margins easier
def margin(number)
  puts "\n" * number  # output a blank line "number" of times
end

# Method to display the cumulative score of games won and lost
def score()
  margin(1)
  puts "  Score"
  puts "  -----"
  puts "  Won: #{$games_won}    Lost: #{$games_lost}"
end

# Method to display guessed letters
def letters()
  puts "  Word:     " + $build_word.join(" ")  # display the correctly guessed letters and placeholders
  margin(1)
  puts "  Letters:  " + $bucket.join(" ")  # display all of the guessed letters
  margin(2)
end

# Method to initialize $build_word array with an underscore for every letter in $word
def initialize_word()
  $word.length.times { $build_word.push("_") }
end

# Method to start game
def start_game()
  initialize_word()
  clear_screen()
  user_input()
end

# Method that acts as primary starting/return point for other methods
def user_input()
  score()  # display the cumulative score
  hangman($wrong_count.length)  # display the current progressive hangman "image" based on wrong guesses
  letters()  # display the correctly guessed letters and placeholders
  print "  Please enter a letter: "  # prompt the user for a letter
  letter = gets.chomp  # assign the letter to a variable
  good_letter(letter)  # pass the user-specified letter to good_letter()
end

# Method that checks the user-specified letter for a few things
def good_letter(letter)
  clear_screen()  # Clear the screen
  if $bucket.include? letter  # check to see if letter has already been guessed and reprompt if so
    puts "  You already guessed that one - TRY AGAIN!"
    user_input()
  elsif letter[/[a-zA-Z]+/] and letter.length == 1  # check is a single -letter- has been entered
    $bucket.push(letter)  # if so, add it to the bucket list
    letter_test(letter)  # then pass it to letter_test()
  else  # if multiple letters, non-alpha characters or nothing has been entered
    puts "  Enter a single letter - TRY AGAIN!"  # reprompt user to try again
    user_input()
  end
end

# Method that checks to see if letter is in the mystery word
def letter_test(letter)
  # If it is in the word pass it to find_locations(), if not pass it to wrong_letter()
  $word.include?(letter) ? find_locations(letter) : wrong_letter(letter)
  # $word.include?(letter)  # use for testing
end

# Method that finds all locations of a letter in the word
def find_locations(letter)
  locations = []  # array for the index (position) of all instances of the letter in the word
  last_index = 0  # dual-purpose variable that holds the index (position) of the letter and the .index offset
  occurrences = $word.count letter  # variable used to control do loop iteration count
  occurrences.times do  # for every occurrence of the letter in the word
    last_index = $word.index(letter, last_index)  # determine the position of the letter in the word
    locations.push(last_index)  # push the position of the letter to the location array
    last_index += 1  # increment last_index by 1 to target the next occurrence of the letter (via .index offset)
  end
  add_letter(letter, locations)  # pass the user-specified letter and array of locations to add_letter()
  # return locations  # use for testing
end

# Method to populate $build_word with every occurrence of a letter
def add_letter(letter, locations)
  # for each occurrence of a letter, add the letter to the correct location in $build-word
  locations.each { |location| $build_word[location] = letter }
  word_test()  # then run word_test()
end

# Method to compare the current build_word array against the mystery word
def word_test()
  if $build_word.join == $word  # if $build_word equals $word, the user won
    $games_won += 1  # so increase the games_won score by 1
    winner(1)  # and start winner() on frame 1 (animation count 1)
  else  # if they don't match, run user_input() for another letter
    user_input()
  end
end

# Method that receives non-mystery word letter and adds it to the wrong_count array
def wrong_letter(letter)
  if $wrong_count.length < 9  # if the wrong_count list has less than 9 letters
    $wrong_count.push(letter)  # then add the letter to the list
    user_input()  # run user_input() again
  else  # if this is the tenth wrong letter, it's game over
    $games_lost += 1  # so increase the games_lost score by 1
    loser(5)  # and start loser() on frame 1 (animation count 5)
  end
end

# Method to progressively draw the hangman stages as incorrect letters are guessed
def hangman(count)
  if count == 0
    margin(12)
  elsif count == 1
    margin(8)
    puts "   _________"
    margin(3)
  elsif count == 2
    margin(2)
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 3
    margin(1)
    puts "        ______"
    6.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 4
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    4.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 5
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    3.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 6
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |      |"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 7
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  elsif count == 8
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    2.times { puts "       |" }
    puts "   ____|____"
    margin(3)
  else
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     /"
    puts "       |"
    puts "   ____|____"
    margin(3)
  end
end

# Method to return the ASCII code last key pressed, or nil if none
def getkey()
  if $use_stty  # if system is Unix
    system('stty raw -echo') # use raw mode, no echo
    character = (STDIN.read_nonblock(1).ord rescue nil)
    system('stty -raw echo') # reset terminal mode
    return character
  else  # otherwise use Win32API class methods for Windows system
    return Win32API.new('crtdll', '_kbhit', [ ], 'I').Call.zero? ? nil : Win32API.new('crtdll', '_getch', [ ], 'L').Call
  end
end

# Method to handle endgame items (animations, start a new game, exit game) - runs after each animation frame
def game_over(ani_count)
  key = getkey()  # variable for last key pressed
  clear_screen()  # Clear the screen
  if key != nil  # check to see if a key was pressed during winner/loser animation
    if key != 27  # if the user presses any key except Esc (27)
      $word = $words.sample  # select a new random word
      $bucket = []  # clear all global arrays
      $build_word = []
      $wrong_count = []
      start_game()  #  and start a new game
    elsif key == 27  # if the user presses the Esc key (27)
      puts "Exiting game..."  # and exit the game
      margin(1)
    end
  elsif ani_count < 5  # if no keypress and animation count < 5
    winner(ani_count)  # run winner() with the current animation count
  else  # if no keypress and animation count >= 5
    loser(ani_count)  # run loser() with the current animation count
  end
end

# Method to print repetitive congratulations text in winner() animation
def congratulations()
  margin(2)
  puts "       ---CONGRATULATIONS---"
  margin(1)
  puts "        YOU WON THE GAME!!!"
  margin(2)
end

# Method to display winner() animation
def winner(ani_count)
  if ani_count == 1  # winner animation frame 1
    score()
    congratulations()
    puts "   \\O/    \\O_  \\O/  _O/    \\O/ "
    puts "    |    _/     |     \\_    |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " - Press any key to play again or Esc to quit -"
    sleep(0.5)  # wait 1/2 second for smooth animation
    game_over(2)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 2  # winner animation frame 2
    score()
    congratulations()
    puts "    \\O_  \\O/  _O/    \\O/    \\O_ "
    puts "   _/     |     \\_    |    _/   "
    puts "    |    / \\    |    / \\    |   "
    margin(2)
    letters()
    puts " \\ Press any key to play again or Esc to quit \\"
    sleep(0.5)
    game_over(3)
  elsif ani_count == 3  # winner animation frame 3
    score()
    congratulations()
    puts "   \\O/  _O/    \\O/    \\O_  \\O/ "
    puts "    |     \\_    |    _/     |  "
    puts "   / \\    |    / \\    |    / \\ "
    margin(2)
    letters()
    puts " | Press any key to play again or Esc to quit |"
    sleep(0.5)
    game_over(4)
  else  # winner animation frame 4
    score()
    congratulations()
    puts "  _O/    \\O/    \\O_  \\O/  _O/  "
    puts "    \\_    |    _/     |     \\_ "
    puts "    |    / \\    |    / \\    |  "
    margin(2)
    letters()
    puts " / Press any key to play again or Esc to quit /"
    sleep(0.5)
    game_over(1)
  end
end

# Method to print repetitive game over text in loser() animation
def sorry()
  margin(1)
  puts "  SORRY - GAME OVER!"
  margin(1)
end

# Method to display loser() animation
def loser(ani_count)
  if ani_count == 5  #loser animation frame 1
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |      O"
    puts "       |     /|\\"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " - Press any key to play again or Esc to quit -"
    sleep(0.5)
    game_over(6)  # run the game_over function to see if user has pressed a key
  elsif ani_count == 6  #loser animation frame 2
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " \\ Press any key to play again or Esc to quit \\"
    sleep(0.5)
    game_over(7)
  elsif ani_count == 7  #loser animation frame 3
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     \\O/"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " | Press any key to play again or Esc to quit |"
    sleep(0.5)
    game_over(8)
  else  # loser animation frame 4
    score()
    margin(1)
    puts "        ______"
    2.times { puts "       |      |" }
    puts "       |     _O_"
    puts "       |      |"
    puts "       |     / \\"
    puts "       |"
    puts "   ____|____"
    sorry()
    letters()
    puts " / Press any key to play again or Esc to quit /"
    sleep(0.5)
    game_over(5)
  end
end

start_game()  # Comment out for testing



____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





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

# Function that finds the first instance of an item class in array and stop iterating through the array
# Variation 1 - no strings detected

#test_array = [1, 2, "Mined", 4, "Minds", "Mined", 7, 8, "Mined", "Minds", 11, "Mined"]
test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def find_first_string_in_array(list)
  match = "No strings detected."
  num = 0
  while num < list.length
    if list[num].class == String
      match = "String detected at index [#{num}] with a value of '#{list[num]}'!"
      break
    end
    num += 1
  end
  puts match
end

find_first_string_in_array(test_array)

# Console output:
No strings detected
____________________________

# Function that finds the first instance of an item class in array and stop iterating through the array
# Variation 2 - first string in array detected

test_array = [1, 2, "Mined", 4, "Minds", "Mined", 7, 8, "Mined", "Minds", 11, "Mined"]
#test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

def find_first_string_in_array(list)
  match = "No strings detected."
  num = 0
  while num < list.length
    if list[num].class == String
      match = "String detected at index [#{num}] with a value of '#{list[num]}'!"
      break
    end
    num += 1
  end
  puts match
end

find_first_string_in_array(test_array)

# Console output:
String detected at index [2] with a value of 'Mined'!
____________________________

# Another method for detecting a specific class of object in an array

test_array = [1, 2, "Mined", 4, "Minds", "Mined", 7, 8, "Mined", "Minds", 11, "Mined"]
#test_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

result = test_array.any? { |item| item.class == String }
return result

# Console output:
true  # if array contains a string
false # if array doesn't contain any strings
____________________________

# Ruby object types

 * Date  -- Anything accepted by Date.parse
 * DateTime -- Anything accepted by DateTime.parse
 * Time -- Anything accepted by Time.httpdate or Time.parse
 * URI  -- Anything accepted by URI.parse
 * Shellwords -- Anything accepted by Shellwords.shellwords
 * String -- Any non-empty string
 * Integer -- Any integer. Will convert octal. (e.g. 124, -3, 040)
 * Float -- Any float. (e.g. 10, 3.14, -100E+13)
 * Numeric -- Any integer, float, or rational (1, 3.4, 1/3)
 * DecimalInteger -- Like Integer, but no octal format.
 * OctalInteger -- Like Integer, but no decimal format.
 * DecimalNumeric -- Decimal integer or float.
 * TrueClass --  Accepts '+, yes, true, -, no, false' and defaults as
   true
 * FalseClass -- Same as TrueClass, but defaults to false
 * Array -- Strings separated by ',' (e.g. 1,2,3)
 * Regexp -- Regular expressions. Also includes options.
____________________________

# Determine if an object is numeric (integer, float, etc.)

integer = 5
float = 3.2
string = "test"
array = [1,2,3]

# puts integer.is_a? Numeric
# puts float.is_a? Numeric
# puts string.is_a? Numeric
# puts array.is_a? Numeric

def object_type_test(object)
  if object.is_a? Numeric
    puts true
  else
    puts false
  end
end

object_type_test(integer)
object_type_test(float)
object_type_test(string)
object_type_test(array)
____________________________

# Ruby array methods

test = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

# Accessing array items

print test[5]  # return a single item
# print test.at(5)  # another way to return a single item
print "\n"
print test[5, 4]  # return a range (first parameter is index, second is # of items)
print "\n"
print test[5...8]  # return a range non-inclusive (from index1..index2)
print "\n"
print test[5..8]  # return a range inclusive (from index1..index2)
print "\n"
print test[5..-3]  # return a range from index1 with index2 counting from end of array
print "\n"
print test.first
print "\n"
print test.last
print "\n"
print test.take(5)  # just returns, doesn't edit array contents
print "\n"
print test.drop(7)  # just returns, doesn't edit array contents
print "\n"

# Information about array

puts test.empty?  # returns true/false
puts test.length
# puts test.count  # same as .length
puts test.include?("something")  # returns true/false

# Adding array items

test.unshift("beginning")  # inserts element at the beginning of the array
print test
print "\n"

test.insert(7, "middle")  # inserts element at the specified position in the array
print test
print "\n"

#test.push("end")  # inserts element at the end of the array
test << "end"  # can also use ">>" instead of .push
print test
print "\n"

###################################
# In Progress...                  #
# - keep updating via rb-ri Array #
###################################
____________________________

# Using .is_a? Numeric to test if object is a number type

def add(num_1, num_2)
  if (num_1.is_a? Numeric) && (num_2.is_a? Numeric)
    return (num_1 + num_2).round(2)
  else
    return false
  end
end

puts add(2, 3)  # 5.0
puts add(1.1, 2.2)  # 3.3
puts add("a", 3)  # false
____________________________

# Miscellaneous array tricks

array1 = ["x", "y", "z"]
array2 = ["w", "x", "y"]

array1 | array2 # Combine Arrays & Remove Duplicates(Union)
=> ["x", "y", "z", "w"]

array1 & array2  # Get Common Elements between Two Arrays(Intersection)
=> ["x", "y"]

array1 - array2  # Remove Any Elements from Array 1 that are
                 # contained in Array 2 (Difference)
=> ["z"]
____________________________

# Understanding the .sort function
# Console output lists comparison for each set while sort compares two items at a time
# Note that .sort returns a sorted array, while !sort modifies the original array

letters = %w(d e a w f k)  # shortcut way of writing ["d", "e", "a", "w", "f", "k"]
print "Before sort: #{letters}"
puts "\nRunning sort:"
letters.sort! { |e1, e2| p [e2, e1]; e2 <=> e1 }  # p better for printing arrays than print/puts
print "After sort: #{letters}"

# Console output:
Before sort: ["d", "e", "a", "w", "f", "k"]
Running sort:  # Array State
["w", "d"]     # ["w", "e", "a", "d", "f", "k"]
["k", "w"]     # ["w", "e", "a", "d", "f", "k"]
["k", "d"]     # ["w", "e", "a", "k", "f", "d"]
["k", "e"]     # ["w", "k", "a", "e", "f", "d"]
["k", "f"]     # ["w", "k", "a", "e", "f", "d"]
["k", "a"]     # ["w", "k", "a", "e", "f", "d"]
["f", "a"]     # ["w", "k", "f", "e", "a", "d"]
["d", "f"]     # ["w", "k", "f", "e", "a", "d"]
["d", "a"]     # ["w", "k", "f", "e", "d", "a"]
["d", "e"]     # ["w", "k", "f", "e", "d", "a"]
["e", "f"]     # ["w", "k", "f", "e", "d", "a"]
After sort: ["w", "k", "f", "e", "d", "a"]
____________________________

# The .reverse (and .reverse!) methods do not sort, they simply reverse the current order

numbers = [7, 1, 4, 9, 8, 2]

p numbers.reverse!

# Console output:
[2, 8, 9, 4, 1, 7]
____________________________

# Creating a hash using two arrays and the .zip method

names = ["Abby", "Bobby", "Cassy"]
numbers = [23, 38, 46]

test_hash = Hash[names.zip(numbers)]

print test_hash

# Console output:
{"Abby"=>23, "Bobby"=>38, "Cassy"=>46}
____________________________

# Creating a hash using list comprehension and the .to_a and .zip methods

string_AZ = Hash[("a".."j").to_a.zip((1..10).to_a)]
symbol_AZ = Hash[(:a..:j).to_a.zip((1..10).to_a)]

p ("a".."j").to_a  # ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
p (:a..:j).to_a  # [:a, :b, :c, :d, :e, :f, :g, :h, :i, :j]
p (1..10).to_a  # [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

p string_AZ  # {"a"=>1, "b"=>2, "c"=>3, "d"=>4, "e"=>5, "f"=>6, "g"=>7, "h"=>8, "i"=>9, "j"=>10}
p symbol_AZ  # {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6, :g=>7, :h=>8, :i=>9, :j=>10}
____________________________

# Interesting hash methods

# Interesting methods

hash[key].nil?  # indicates if the specified key exists or not
hash.delete(key)  # deletes the specified key/value pair from the hash

movies = {
  Memento: 3,
  Primer: 4,
  Ishtar: 1
}

puts movies[:Primer].nil?
puts movies[:Transcendence].nil?

movies.delete(:Ishtar)  # deletes the specified key/value pair from the hash
p movies

# Console output
false  # the key :Primer exists in the array
true  # the key :Transcendence does not exist in the array
{:Memento=>3, :Primer=>4}
____________________________

# Example user input and case statement

print "Do you want red, blue or green candy? "

candy = gets.chomp.downcase

case candy
when 'red'
  puts "Red candy tases like cherries!"
when 'blue'
  puts "Blue candy tastes like blueberries!"
when 'green'
  puts "Green candy tastes like apples!"
else
  puts "Sorry, I don't have that kind - please choose red, blue or green."
end

# Example console output:
Do you want red, blue or green candy? red
Red candy tases like cherries!
____________________________

# When using .to_sym or .intern with a string, make sure there aren't any spaces
# or the resulting symbol will have quotes to account for the spaces

name_1 = "big red dog"
name_2 = "little_white_dog"

p name_1.to_sym
p name_2.to_sym

# Console output:
:"big red dog"
:little_white_dog
____________________________

# Using .each_char to iterate through each character in a string

example = 'something'
placeholder = []

# example.each_char { |char| placeholder.push(char) }

example.each_char do |char|
  puts "Current character: #{char}"
  placeholder.push(char)
end

p placeholder

# Console output:
Current character: s
Current character: o
Current character: m
Current character: e
Current character: t
Current character: h
Current character: i
Current character: n
Current character: g
["s", "o", "m", "e", "t", "h", "i", "n", "g"]
____________________________

string = "7421394761"

split_string = string.split("")

# & in .map allows specified action to run on each item in array
map_shorthand_1 = split_string.map(&:to_i)
map_shorthand_2 = split_string.map(&:size)

# .inject allows operations to be taken on every array member
injection_1 = map_shorthand_1.inject(:+)

# the first argument (if specified) is the beginning value
injection_2 = map_shorthand_1.inject(0,:+)
injection_3 = map_shorthand_1.inject(11,:+)

p split_string  # ["7", "4", "2", "1", "3", "9", "4", "7", "6", "1"]

p map_shorthand_1  # [7, 4, 2, 1, 3, 9, 4, 7, 6, 1]
p map_shorthand_2  # [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]

p injection_1  # 44
p injection_2  # 44
p injection_3  # 55
____________________________

# Use .store, .delete, .keep_if and .delete_if methods to add/remove key/value pairs in a hash
# For non-destructive selection or rejection, use .select, .reject and .drop_while

numbers = {}

numbers.store("one", 1)
numbers.store("two", 2)
numbers.store("three", 3)
numbers.store("four", 4)
numbers.store("five", 5)
numbers.store("six", 6)
numbers.store("seven", 7)
numbers.store("eight", 8)

p numbers  # {"one"=>1, "two"=>2, "three"=>3, "four"=>4, "five"=>5, "six"=>6, "seven"=>7, "eight"=>8}

numbers.delete("eight")

p numbers  # {"one"=>1, "two"=>2, "three"=>3, "four"=>4, "five"=>5, "six"=>6, "seven"=>7}

numbers.keep_if { |key, value| value % 2 == 1 }

p numbers  # {"one"=>1, "three"=>3, "five"=>5, "seven"=>7}

numbers.delete_if { |key, value| value > 4 }

p numbers  # {"one"=>1, "three"=>3}
____________________________

# Extract a partial hash from an existing hash

setup_hash = {"p1_type" => "Human", "p2_type" => "Random", "board_size" => "3"}
players = setup_hash.select { |key, value| key != "board_size" }

p players  # {"p1_type"=>"Human", "p2_type"=>"Random"}
____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________





____________________________