#codecademy python sandbox (battleship extra credit)
https://www.codecademy.com/en/courses/python-beginner-en-4XuFm/2/5?curriculum_id=4f89dab3d788890003000096
____________________________

print 'string'

variable = 10

my_int = 7
my_float = 1.23
my_bool = True
my_string = 'something'

# this is a comment

"""
This is a
multi-line comment
"""

10 ** 2 == 100
10 % 3 == 1
____________________________

def spam():
	eggs = 12
	return eggs
	
print spam()
____________________________

escape_character = 'This won\'t work without escaping the apostrophe'
fifth_letter = 'python'[4]

parrot = 'Norwegian Blue'
print len(parrot)
print parrot.lower()
print parrot.upper()
print str(14)

print 'One, ' + 'two, ' + 'three!'

print 'The value of pi is around ' + str(3.14) + '.'
____________________________

string_1 = 'something'
string_2 = 'nothing'

print 'Remember that %s is always better than %s.' % (string_1, string_2)
____________________________

name = raw_input('What is your name?')
quest = raw_input('What is your quest?')
color = raw_input('What is your favorite color?')

print 'Ah, so your name is %s, your quest is %s, ' \
'and your favorite color is %s.' % (name, quest, color)
____________________________

Breaking up long values:

net_weights_pathname = (
    '/home/acgtyrant/BigDatas/'
    'model_configs/lenet_iter_10000.caffemodel')
    
print net_weights_pathname
____________________________

from datetime import datetime
now = datetime.now()
print '%s/%s/%s %s:%s:%s' % (now.month, now.day, now.year, now.hour, now.minute, now.second)
____________________________

def clinic():
    print "You've just entered the clinic!"
    print "Do you take the door on the left or the right?"
    answer = raw_input("Type left or right and hit 'Enter'.").lower()
    if answer == "left" or answer == "l":
        print "This is the Verbal Abuse Room, you heap of parrot droppings!"
    elif answer == "right" or answer == "r":
        print "Of course this is the Argument Room, I've told you that already!"
    else:
        print "You didn't pick left or right! Try again."
        clinic()

clinic()
____________________________

def using_control_once():
    if not('water' == 'fire'):
        return "Success #1"

def using_control_again():
    if 10**2 != 18%2:
        return "Success #2"

print using_control_once()
print using_control_again()
____________________________

answer = "'Tis but a scratch!"

def black_knight():
    if answer == "'Tis but a scratch!":
        return True
    else:             
        return False       # Make sure this returns False

def french_soldier():
    if answer == "Go away, or I shall taunt you a second time!":
        return True
    else:             
        return False       # Make sure this returns False

print black_knight()
print french_soldier()
____________________________

def greater_less_equal_5(answer):
    if answer > 5:
        return 1
    elif answer < 5:          
        return -1
    else:
        return 0
        
print greater_less_equal_5(4)
print greater_less_equal_5(5)
print greater_less_equal_5(6)
____________________________

import enchant
d = enchange.Dict("en_US")
d.check("Hello")
____________________________

## My Pig Latin translator
## Researched and designed on my own

"""
Now let's take what we've learned so far and write a Pig Latin translator.

Pig Latin is a language game, where you move the first letter of the word to the end and add "ay." So "Python" becomes "ythonpay." To write a Pig Latin translator in Python, here are the steps we'll need to take:

Ask the user to input a word in English.
Make sure the user entered a valid word.
Convert the word from English to Pig Latin.
Display the translation result.
"""

word = raw_input('Please type a word in English:')

def pig_latin(word):
    if word.isalpha() and len(word) > 1:
        print 'Your word in Pig Latin is: ' + word[1:] + word[0] + 'ay'
    elif word.isalpha() and len(word) == 1:
        print 'That word is too short, please try again.'
    else:
        print 'You didn\'t enter a word, please try again.'

pig_latin(word)
____________________________

#Guided Pig Latin translator
#Added elif statement myself

print 'Welcome to the Pig Latin Translator!'

# Start coding here!
original = raw_input('Enter a word:')
pyg = 'ay'

if len(original) > 0 and original.isalpha():
    word = original.lower()
    first = word[0]
    new_word = word[1:len(word)] + first + pyg
    print new_word
else:
    print 'empty'
____________________________

Inputting non-string values (i.e. numbers):
http://stackoverflow.com/questions/20449427/how-can-i-read-inputs-as-integers-in-python

n = input('Please type a number:')

def square(n):
    """Returns the square of a number."""
    squared = n**2
    print "%d squared is %d." % (n, squared)
    return squared

square(n)
____________________________

"""
Parameters and Arguments
Let's reexamine the first line that defined square in the previous exercise:

def square(n):
n is a parameter of square. A parameter acts as a variable name for a passed in argument. With the previous example, we called square with the argument 10. In this instance the function was called, n holds the value 10.

A function can require as many parameters as you'd like, but when you call the function, you should generally pass in a matching number of arguments.
"""

base = input('Please type a base:')
exponent = input('Please type an exponent:')

def power(base, exponent):
    result = base**exponent
    print "%d to the power of %d is %d." % (base, exponent, result)

power(base,exponent)
____________________________

"""
We've seen functions that can print text or do simple arithmetic, but functions can be much more powerful than that. For example, a function can call another function:

def fun_one(n):
    return n * 5

def fun_two(m):
    return fun_one(m) + 7
"""

x = input('Please input a number:')

def one_good_turn(x):
    return x + 1
    
def deserves_another(x):
    return one_good_turn(x) + 2

print deserves_another(x)
____________________________

number = input('Please input a number:')

def cube(number):
    return number**3
    
def by_three(number):
    if number % 3 == 0:
        # test to see if number is divisible by 3
        # use modulus operator to determine if remainder is 0
        return cube(number)
        # if divisible by three, run cube(number) function
    else:
        return False
        
print by_three(number)
____________________________

Checking for presence of a module

# Ask Python to print sqrt(25) on line 3.
print sqrt(25)

#Console output
Traceback (most recent call last):
  File "python", line 3, in <module>
NameError: name 'sqrt' is not defined
____________________________

Importing an entire module and then referencing a function from that module
- Downside is that module has to be called each time a function from it is used

# Ask Python to print sqrt(25) on line 3.
import math
print math.sqrt(25)
____________________________

Importing a specific variable or function from a module

# Import *just* the sqrt function from math on line 3!
from math import sqrt
print sqrt(25)
____________________________

Universal import for all functions in a module
- Avoid having to call a module each time a function from it is used
- This works but creates MAJOR issues
	- No clear dilenation between identically-named module and user-defined functions
	- Issue compounds when importing multiple modules with identically-named functions
- Best practice is to either:
	- Import the module and then use module.function_name()
	- Import only the specific variables and functions needed 

# Import *everything* from the math module on line 3!
from math import *
print sqrt(49)
____________________________

Printing all of the functions within a module

import math            # Imports the math module
everything = dir(math) # Sets everything to a list of things from math
print everything       # Prints 'em all!

Console output:

['__doc__', '__name__', '__package__', 'acos', 'acosh', 'asin', 'asinh', 'atan', 'atan2', 'atanh', 'ceil', 'copysign', 'cos', 'cosh', 'degrees', 'e', 'erf', 'erfc', 'exp', 'expm1', 'fabs', 'factorial', 'floor', 'fmod', 'frexp', 'fsum', 'gamma', 'hypot', 'isinf', 'isnan', 'ldexp', 'lgamma', 'log', 'log10', 'log1p', 'modf', 'pi', 'pow', 'radians', 'sin', 'sinh', 'sqrt', 'tan', 'tanh', 'trunc']
None
____________________________

def biggest_number(*args):
    print max(args)
    return max(args)
    
def smallest_number(*args):
    print min(args)
    return min(args)

def distance_from_zero(arg):
    print abs(arg)
    return abs(arg)

biggest_number(-10, -5, 5, 10)
smallest_number(-10, -5, 5, 10)
distance_from_zero(-10)

#Console output
10
-10
10
____________________________

# Set maximum to the max value of any set of numbers on line 3!
maximum = max(3, 8, 15, 45.291, 9.11111111, 218.1923582)
print maximum

#Console output
218.1923582
____________________________

# Set minimum to the min value of any set of numbers on line 3!
minimum = min(-143.2834, -382910, 2, 18204.402)
print minimum

#Console output
-382910
____________________________

#The abs() function returns a number's distance from zero
absolute = abs(-42)
print absolute

#Console output
42
____________________________

# Print out the types of an integer, a float,
# and a string on separate lines below.
print type(-23)
print type(34.291)
print type('hey there')

#Console output
<type 'int'>
<type 'float'>
<type 'str'>
____________________________

s = raw_input('Enter "yes" or "no":')

def shut_down(s):
    if s == 'yes':
        return 'Shutting down'
    elif s == 'no':
        return 'Shutdown aborted'
    else:
        return 'Sorry'

print shut_down(s)
____________________________

import math
print math.sqrt(13689)

#Console output
117.0
____________________________

def distance_from_zero(n):
    if type(n) == int or type(n) == float:
        return abs(n)
    else:
        return "Nope"
____________________________

def hotel_cost(nights):
    return 140 * nights
    
def plane_ride_cost(city):
    if city == 'Charlotte':
        return 183
    elif city == 'Tampa':
        return 220
    elif city == 'Pittsburgh':
        return 222
    elif city == 'Los Angeles':
        return 475

def rental_car_cost(days):
    cost = 40 * days
    if days >= 7:
        cost -= 50
    elif days >= 3:
        cost -= 20
    return cost
____________________________

def hotel_cost(nights):
    return 140 * nights
    
def plane_ride_cost(city):
    if city == 'Charlotte':
        return 183
    elif city == 'Tampa':
        return 220
    elif city == 'Pittsburgh':
        return 222
    elif city == 'Los Angeles':
        return 475

def rental_car_cost(days):
    cost = 40 * days
    if days >= 7:
        cost -= 50
		#Reduce cost by $50 if rental is for 7 or more days
    elif days >= 3:
        cost -= 20
		#Or else reduce cost by $20 if rental is for 3 or more days
    return cost

def trip_cost(city, days, spending_money):
    return plane_ride_cost(city) + hotel_cost(days) + rental_car_cost(days) + spending_money
		#OK to pass "days" variable to hotel_cost function, since it is just expecting a value

print trip_cost('Los Angeles', 5, 600)

#Console output
1955
____________________________

#Lists (matrix)

zoo_animals = ["pangolin", "cassowary", "sloth", "monkey"];

if len(zoo_animals) > 3:
	print "The first animal at the zoo is the " + zoo_animals[0]
	print "The second animal at the zoo is the " + zoo_animals[1]
	print "The third animal at the zoo is the " + zoo_animals[2]
	print "The fourth animal at the zoo is the " + zoo_animals[3]
____________________________

numbers = [5, 6, 7, 8]

print "Adding the numbers at indices 0 and 2..."
print numbers[0] + numbers[2]
print "Adding the numbers at indices 1 and 3..."
print numbers[1] + numbers[3]
____________________________

zoo_animals = ["pangolin", "cassowary", "sloth", "tiger"]
# Last night our zoo's sloth brutally attacked 
#the poor tiger and ate it whole.

# The ferocious sloth has been replaced by a friendly hyena.
zoo_animals[2] = "hyena"

# What shall fill the void left by our dear departed tiger?
# Your code here!
zoo_animals[3] = "monkey"
____________________________

suitcase = [] 
suitcase.append("sunglasses")

# Your code here!
suitcase.append("shoes")
suitcase.append("pants")
suitcase.append("shirt")

list_length = len(suitcase) # Set this to the length of suitcase

print "There are %d items in the suitcase." % (list_length)
print suitcase

#Console output
There are 4 items in the suitcase.
['sunglasses', 'shoes', 'pants', 'shirt']
____________________________

suitcase = ["sunglasses", "hat", "passport", "laptop", "suit", "shoes"]

first  = suitcase[0:2]  # The first and second items (index zero and one)
middle = suitcase[2:4] # Third and fourth items (index two and three)
last   = suitcase[4:len(suitcase)] # The last two items (index four and five)

#Can also use this to get the last two items in the list
last   = suitcase[4:] # The last two items (index four and five)
____________________________

animals = "catdogfrog"
cat  = animals[:3]   # The first three characters of animals
dog  = animals[3:6]  # The fourth through sixth characters
frog = animals[6:]   # From the seventh character to the end
____________________________

animals = ['aardvark', 'badger', 'duck', 'emu', 'fennec fox']
duck_index = animals.index('duck')  # Use index() to find "duck"

animals.insert(duck_index, 'cobra')

print animals # Observe what prints after the insert operation

#Console output:
['aardvark', 'badger', 'cobra', 'duck', 'emu', 'fennec fox']
____________________________

my_list = [1,9,3,8,5,7]

for number in my_list:
    print 2 * number

#Console output:
2
18
6
16
10
14
____________________________

start_list = [5, 3, 1, 2, 4]
square_list = []

for x in start_list:
    square_list.append(x ** 2)
    square_list.sort()

print square_list

#Console output:
[1, 4, 9, 16, 25]
____________________________

# Assigning a dictionary with three key-value pairs to residents:
residents = {'Puffin' : 104, 'Sloth' : 105, 'Burmese Python' : 106}

print residents['Puffin'] # Prints Puffin's room number
print residents['Sloth']
print residents['Burmese Python']

#Console output:
104
105
106
____________________________

#Adding items to a dictionary

menu = {} # Empty dictionary
menu['Chicken Alfredo'] = 14.50 # Adding new key-value pair
print menu['Chicken Alfredo']

# Your code here: Add some dish-price pairs to menu!
menu['Hamburger'] = 9.98
menu['Hot Dog'] = 6.98
menu['Chicken Tenders'] = 7.98

print "There are " + str(len(menu)) + " items on the menu."
print menu

#Console output:
14.5
There are 4 items on the menu.
{'Hot Dog': 6.98, 'Chicken Alfredo': 14.5, 'Chicken Tenders': 7.98, 'Hamburger': 9.98}
____________________________

#Removing items from a dictionary

# key - animal_name : value - location 
zoo_animals = { 'Unicorn' : 'Cotton Candy House',
'Sloth' : 'Rainforest Exhibit',
'Bengal Tiger' : 'Jungle House',
'Atlantic Puffin' : 'Arctic Exhibit',
'Rockhopper Penguin' : 'Arctic Exhibit'}
# A dictionary (or list) declaration may break across multiple lines

# Removing the 'Unicorn' entry. (Unicorns are incredibly expensive.)
del zoo_animals['Unicorn']

# Your code here!
del zoo_animals['Sloth']
del zoo_animals['Bengal Tiger']

zoo_animals['Rockhopper Penguin'] = 'Cotton Candy House'

print zoo_animals

#Console output:
{'Atlantic Puffin': 'Arctic Exhibit', 'Rockhopper Penguin': 'Cotton Candy House'}
____________________________

backpack = ['xylophone', 'dagger', 'tent', 'bread loaf']
backpack.remove('dagger')
print backpack

#print all items in list
print ", ".join([x for x in backpack] )

#print all items in list, when items are not strings
print ", ".join([str(x) for x in backpack] )

#Console output:
['xylophone', 'tent', 'bread loaf']
xylophone, tent, bread loaf
____________________________

#Manipulating list items in a dictionary

inventory = {
    'gold' : 500,
    'pouch' : ['flint', 'twine', 'gemstone'], # Assigned a new list to 'pouch' key
    'backpack' : ['xylophone','dagger', 'bedroll','bread loaf']
}

# Adding a key 'burlap bag' and assigning a list to it
inventory['burlap bag'] = ['apple', 'small ruby', 'three-toed sloth']

# Sorting the list found under the key 'pouch'
inventory['pouch'].sort() 

# Your code here
inventory['pocket'] = ['seashell', 'strange berry', 'lint']
inventory['backpack'].sort()
inventory['backpack'].remove('dagger')
inventory['gold'] = inventory['gold'] + 50

print inventory

#Console output:
{'pocket': ['seashell', 'strange berry', 'lint'], 'backpack': ['bedroll', 'bread loaf', 'xylophone'], 'pouch': ['flint', 'gemstone', 'twine'], 'burlap bag': ['apple', 'small ruby', 'three-toed sloth'], 'gold': 550}
____________________________

#Using a for loop to print all of the items in a list

names = ["Adam","Alex","Mariah","Martine","Columbus"]

for n in names:
    print n
		
#Console output:
Adam
Alex
Mariah
Martine
Columbus
____________________________

#Using a for loop to print all of the items in a dictionary

webster = {
	"Aardvark" : "A star of a popular children's cartoon show.",
    "Baa" : "The sound a goat makes.",
    "Carpet": "Goes on the floor.",
    "Dab": "A small amount."
}

for entry in webster:
    print webster[entry]
		
#Console output:		
A star of a popular children's cartoon show.
Goes on the floor.
A small amount.
The sound a goat makes.
____________________________

#Using a loop to print even numbers from a list

a = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13]

for number in a:
    if number % 2 == 0:
        print number
				
#Console output:
0
2
4
6
8
10
12
____________________________

#Determine number of values in a list that are below 10

def count_small(numbers):
    total = 0
    for n in numbers:
        if n < 10:
            total = total + 1
    return total

lost = [4, 8, 15, 16, 23, 42]
small = count_small(lost)
print small

#Console output:
2
____________________________

#Count number of matching items in a list

def fizz_count(x):
    count = 0
    for item in x:
        if item == 'fizz':
            count = count + 1
    return count

print fizz_count(['fizz', 'cat', 'fizz'])

#Console output:
2
____________________________

for letter in "Codecademy":
    print letter
    
# Empty lines to make the output pretty
print
print

word = "Programming is fun!"

for letter in word:
    # Only print out the letter i
    if letter == "i":
        print letter
____________________________

#Creating and populating a dictionary

prices = {
    "banana": 4,
    "apple": 2,
    "orange": 1.5,
    "pear": 3
}
____________________________

#Creating and populating two dictionaries with the same keys, and printing out contents

prices = {
    "banana": 4,
    "apple": 2,
    "orange": 1.5,
    "pear": 3
}

stock = {
    "banana": 6,
    "apple": 0,
    "orange": 32,
    "pear": 15
}

for key in prices:
    print key
    print 'price: %s' % prices[key]
    print 'stock: %s' % stock[key]

#Console output:
orange
price: 1.5
stock: 32
pear
price: 3
stock: 15
banana
price: 4
stock: 6
apple
price: 2
stock: 0

#Don't have to use "key" - this also works fine:

for fruit in prices:
    print fruit
    print 'price: %s' % prices[fruit]
    print 'stock: %s' % stock[fruit]
____________________________

#Determine the total amount if all fruit is sold

total = 0

prices = {
    "banana" : 4,
    "apple"  : 2,
    "orange" : 1.5,
    "pear"   : 3,
}
stock = {
    "banana" : 6,
    "apple"  : 0,
    "orange" : 32,
    "pear"   : 15,
}

for key in prices:
    total = total + (prices[key] * stock[key])

print total

#Console output:
117.0
____________________________

#Function to calculate the sum of a list of numbers

def sum(numbers):
    total = 0
    for number in numbers:
        total += number
    return total
n = [1, 2, 5, 10, 13]
print sum(n)
____________________________

#Function to calculate the total for all fruits on the shopping list

shopping_list = ["banana", "orange", "apple"]

stock = {
    "banana": 6,
    "apple": 0,
    "orange": 32,
    "pear": 15
}
    
prices = {
    "banana": 4,
    "apple": 2,
    "orange": 1.5,
    "pear": 3
}

# Write your code below!
def compute_bill(food):
    total = 0
    for item in food:
            total += prices[item]
    return total

print compute_bill(shopping_list)

#Console output:
7.5

#Note - I had this selected and was getting the correct output,
#but wasn't accepted since I shouldn't call shopping_list from inside the function.
#Lesson - try to keep variables inside the function unique to the function. 
#If I reference shopping_list and that list changes, the function won't work any more!

def compute_bill(food):
    total = 0
    for food in shopping_list:
            total += prices[food]
    return total

print compute_bill(shopping_list)
____________________________

#Only total items that are in stock and then remove purchased item from stock count

shopping_list = ["banana", "orange", "apple"]

stock = {
    "banana": 6,
    "apple": 0,
    "orange": 32,
    "pear": 15
}
    
prices = {
    "banana": 4,
    "apple": 2,
    "orange": 1.5,
    "pear": 3
}

# Write your code below!
def compute_bill(food):
    total = 0
    for item in food:
        if stock[item] > 0:
                total += prices[item]
                stock[item] -= 1
    return total

print compute_bill(shopping_list)

#Console output:
5.5
____________________________

#Create a dictionary and then access an item

animal_sounds = {
    "cat": ["meow", "purr"],
    "dog": ["woof", "bark"],
    "fox": [],
}
print animal_sounds["cat"]
____________________________

#Create multiple dictionaries, add to list and print all

lloyd = {
    "name": "Lloyd",
    "homework": [90.0, 97.0, 75.0, 92.0],
    "quizzes": [88.0, 40.0, 94.0],
    "tests": [75.0, 90.0]
}
alice = {
    "name": "Alice",
    "homework": [100.0, 92.0, 98.0, 100.0],
    "quizzes": [82.0, 83.0, 91.0],
    "tests": [89.0, 97.0]
}
tyler = {
    "name": "Tyler",
    "homework": [0.0, 87.0, 75.0, 22.0],
    "quizzes": [0.0, 75.0, 78.0],
    "tests": [100.0, 100.0]
}

students = [lloyd, alice, tyler]

for student in students:
    print student["name"]
    print student["homework"]
    print student["quizzes"]
    print student["tests"]
		
#Console output:
Lloyd
[90.0, 97.0, 75.0, 92.0]
[88.0, 40.0, 94.0]
[75.0, 90.0]
Alice
[100.0, 92.0, 98.0, 100.0]
[82.0, 83.0, 91.0]
[89.0, 97.0]
Tyler
[0.0, 87.0, 75.0, 22.0]
[0.0, 75.0, 78.0]
[100.0, 100.0]
____________________________

#Calculating averages

5 / 2
# 2

5.0 / 2
# 2.5

float(5) / 2
# 2.5
____________________________

#Function to calculate averages

def average(numbers):
    total = float(sum(numbers))
    return total / len(numbers)
____________________________

#Weighted average (considering average of apples more than average of bananas)

cost = {
    "apples": [3.5, 2.4, 2.3],
    "bananas": [1.2, 1.8],
}

return 0.9 * average(cost["apples"]) + \
0.1 * average(cost["bananas"])

# The \ character is a continuation character (same statement, new line)
____________________________

#Function to return weighted averages of homework, quizzes and tests

def get_average(student):
    homework = average(student["homework"])
    quizzes = average(student["quizzes"])
    tests = average(student["tests"])
    return 0.1 * homework + 0.3 * quizzes + 0.6 * tests
____________________________

#Get average score and letter grade for one student based on all grades

lloyd = {
    "name": "Lloyd",
    "homework": [90.0, 97.0, 75.0, 92.0],
    "quizzes": [88.0, 40.0, 94.0],
    "tests": [75.0, 90.0]
}
alice = {
    "name": "Alice",
    "homework": [100.0, 92.0, 98.0, 100.0],
    "quizzes": [82.0, 83.0, 91.0],
    "tests": [89.0, 97.0]
}
tyler = {
    "name": "Tyler",
    "homework": [0.0, 87.0, 75.0, 22.0],
    "quizzes": [0.0, 75.0, 78.0],
    "tests": [100.0, 100.0]
}

# Add your function below!
def average(numbers):
    total = float(sum(numbers))
    return total / len(numbers)
    
def get_average(student):
    homework = average(student["homework"])
    quizzes = average(student["quizzes"])
    tests = average(student["tests"])
    return 0.1 * homework + 0.3 * quizzes + 0.6 * tests
    
def get_letter_grade(score):
    if score >= 90:
        return "A"
    elif score >= 80:
        return "B"
    elif score >= 70:
        return "C"
    elif score >= 60:
        return "D"
    else:
        return "F"
        
get_letter_grade(get_average(lloyd))

#Console output:
"B"
____________________________

#Get average score and letter grade for all students based on all grades

lloyd = {
    "name": "Lloyd",
    "homework": [90.0, 97.0, 75.0, 92.0],
    "quizzes": [88.0, 40.0, 94.0],
    "tests": [75.0, 90.0]
}
alice = {
    "name": "Alice",
    "homework": [100.0, 92.0, 98.0, 100.0],
    "quizzes": [82.0, 83.0, 91.0],
    "tests": [89.0, 97.0]
}
tyler = {
    "name": "Tyler",
    "homework": [0.0, 87.0, 75.0, 22.0],
    "quizzes": [0.0, 75.0, 78.0],
    "tests": [100.0, 100.0]
}

students = [lloyd, alice, tyler]

# Add your function below!
def average(numbers):
    total = float(sum(numbers))
    return total / len(numbers)
    
def get_average(student):
    homework = average(student["homework"])
    quizzes = average(student["quizzes"])
    tests = average(student["tests"])
    return 0.1 * homework + 0.3 * quizzes + 0.6 * tests
    
def get_letter_grade(score):
    if score >= 90:
        return "A"
    elif score >= 80:
        return "B"
    elif score >= 70:
        return "C"
    elif score >= 60:
        return "D"
    else:
        return "F"
        
def get_class_average(students):
    results = []
    for student in students:
        results.append(get_average(student))
    return average(results)

print get_class_average(students)
print get_letter_grade(get_class_average(students))


#Console output:
83.8666666666
B
____________________________

#Update list element

n = [1, 3, 5]
# Do your multiplication here
n[1] = n[1] * 5
print n

#Console output:
n = [1, 15, 5]
____________________________

#Append to a list

n = [1, 3, 5]
# Append the number 4 here
n.append(4)
print n

#Console output:
[1, 3, 5, 4]
____________________________

#Removing elements from a list

n = [1, 3, 5]
n.pop(1)
# Returns 3 (the item at index 1)
print n
# prints [1, 5]

n = [1, 3, 5]
n.remove(1)
# Removes 1 from the list,
# NOT the item at index 1
print n
# prints [3, 5]

n = [1, 3, 5]
del(n[1])
# Doesn't return anything
print n
# prints [1, 5]
____________________________

#Function with multiple arguments (two arguments)

m = 5
n = 13
# Add add_function here!
def add_function(x, y):
    return x + y
    
print add_function(m, n)

#Console output:
18
____________________________

#String concatenation function

n = "Hello"
# Your function here!
def string_function(s):
    return s + "world"

print string_function(n)

#Console output:
Helloworld
____________________________

#Passing a list to a function

def list_function(x):
    return x

n = [3, 5, 7]
print list_function(n)

#Console output:
[3, 5, 7]
____________________________

#Using an element from a list in a function (example)

def first_item(items):
    print items[0]

numbers = [2, 7, 9]
first_item(numbers)

#Console output:
2
____________________________

#Using a function to print all elements from a list

def list_function(x):
    return x

n = [3, 5, 7]
print list_function(n)

#Console output:
[3, 5, 7]
____________________________

#Using a function to print one element from a list

def list_function(x):
    return x[1]

n = [3, 5, 7]
print list_function(n)

#Console output:
5
____________________________

#Modifying an element in a list (example)

def double_first(n):
    n[0] = n[0] * 2

numbers = [1, 2, 3, 4]
double_first(numbers)
print numbers

#Console output:
[2, 2, 3, 4]
____________________________

#Change value of element in a list and return the list

def list_function(x):
    x[1] += 3
    return x

n = [3, 5, 7]
print list_function(n)

#Console output:
[3, 8, 7]
____________________________

#Append item to a list (example)

my_list = [1, 2, 3]
my_list.append(4)
print my_list

#Console output:
[1, 2, 3, 4]
____________________________

#Append list item using a function

n = [3, 5, 7]
# Add your function here
def list_extender(lst):
    lst.append(9)
    return lst
    
print list_extender(n)


#Console output:
[3, 5, 7, 9]
____________________________

#Print out list item by item (iterative loop) using a function

n = [3, 5, 7]
    
def print_list(x):
    for i in range(0, len(x)):
        print x[i]

print_list(n)

#Console output:
3
5
7
____________________________

#Modify each element in a list using a function

n = [3, 5, 7]

def double_list(x):
    for i in range(0, len(x)):
        x[i] = x[i] * 2
    return x

print double_list(n)

#Console output:
[6, 10, 14]
____________________________

#The range function

range(6) # => [0,1,2,3,4,5]
range(1,6) # => [1,2,3,4,5]
range(1,6,3) # => [1,4]

The range function has three different versions:

range(stop)
range(start, stop)
range(start, stop, step)

In all cases, the range() function returns a list of numbers from start up to (but not including) stop. Each item increases by step.

If omitted, start defaults to zero and step defaults to one.
____________________________

#Passing a range into a function

def my_function(x):
    for i in range(0, len(x)):
        x[i] = x[i] * 2
    return x

print my_function(range(3))

#Console output:
[0, 2, 4]
____________________________

#Two ways to iterate over a list

#Method 1 - useful to loop through list, but not possible to modify anything
for item in list:
    print item

#Method 2 - iterate through indexes
for item in range(len(list)):
    print list[item]
____________________________

#Function to return the sum of all numbers in a list
#Iterate through list using range(len(list))

n = [3, 5, 7]

def total(numbers):
    result = 0
    for i in range(len(numbers)):
        result += numbers[i]
    return result

print total(n)

#Console output:
15
____________________________

#Function that concatenates strings

n = ["Michael", "Lieberman"]

def join_strings(words):
    result = ""
    for i in range(len(words)):
        result += words[i]
    return result

print join_strings(n)

#Console output:
MichaelLieberman
____________________________

#Concatenating two lists

a = [1, 2, 3]
b = [4, 5, 6]
print a + b
# prints [1, 2, 3, 4, 5, 6]
____________________________

#Function that concatenates two lists

m = [1, 2, 3]
n = [4, 5, 6]

def join_lists(x, y):
    return x + y
    
print join_lists(m, n)

#Console output:
[1, 2, 3, 4, 5, 6]
____________________________

#Accessing sublist items (list of lists)

list_of_lists = [[1,2,3], [4,5,6]]

for lst in list_of_lists:
    for item in lst:
        print item
				
#Console output:
1
2
3
4
5
6
____________________________

#Function to flatten sublists (list of lists) to a single list

n = [[1, 2, 3], [4, 5, 6, 7, 8, 9]]

def flatten(lists):
    results = []
    for numbers in lists:
        for i in numbers:
            results.append(i)
    return results

print flatten(n)

#Note - using range(len(lists)) and range(len(numbers)) resulted in errors

#Console output:
[1, 2, 3, 4, 5, 6, 7, 8, 9]
____________________________

#Create a 5 x 5 grid initialized to all Os
# Use range() to loop 5 times and append a list containing 5 "O"s to the board

board = []

for i in range(0, 5):
    board.append(["O"] * 5)

print board

#Console output:
[['O', 'O', 'O', 'O', 'O'], ['O', 'O', 'O', 'O', 'O'], ['O', 'O', 'O', 'O', 'O'], ['O', 'O', 'O', 'O', 'O'], ['O', 'O', 'O', 'O', 'O']]
____________________________

#Add function to iteratively print each sublist (so each starts on a new line)

board = []

for i in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print row

print_board(board)

#Console output:
['O', 'O', 'O', 'O', 'O']
['O', 'O', 'O', 'O', 'O']
['O', 'O', 'O', 'O', 'O']
['O', 'O', 'O', 'O', 'O']
['O', 'O', 'O', 'O', 'O']
____________________________

#Using the join method to combine the items in a list (delimiter before the .)

letters = ['a', 'b', 'c', 'd']
print " ".join(letters)
print "---".join(letters)

#Console output:
a b c d
a---b---c---d
____________________________

#Formatting the characters on the board (drop quotes and commas using join method)

board = []

for i in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print_board(board)

#Console output:
O O O O O
O O O O O
O O O O O
O O O O O
O O O O O
____________________________

#Generate a random integer

randint(low, high)

coin = randint(0, 1)
dice = randint(1, 6)
____________________________

#Import randint function from random module and add functions to generate random values for row and column

from random import randint 

board = []

for x in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

def random_row(board):
    row_index = randint(0, len(board) - 1)
    return row_index

def random_col(board):
    col_index = randint(0, len(board) - 1)
    return col_index
    
print random_row(board)
print random_col(board)

#Console Output:
1
1

#values in random_row() and random_col() output will vary due to randint() function
____________________________

#Example user input and reply

number = raw_input("Enter a number: ")
if int(number) == 0:
    print "You entered 0"
____________________________

#Add statements to accept user input (guess) for ship row and column

from random import randint

board = []

for x in range(0,5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)

# Add your code below!
guess_row = int(raw_input("Guess Row: "))
guess_col = int(raw_input("Guess Col: "))
____________________________

#For debugging, print location of ship to compare to later code used to compare user guess with random values

from random import randint

board = []

for x in range(0,5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)

# Add your code below!
guess_row = int(raw_input("Guess Row: "))
guess_col = int(raw_input("Guess Col: "))

print ship_col
print ship_row
____________________________

#Add statement to compare random ship location with user's guess and respond accordingly

from random import randint

board = []

for x in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
guess_row = int(raw_input("Guess Row:"))
guess_col = int(raw_input("Guess Col:"))

print ship_row
print ship_col

# Write your code below!
if ship_row == guess_row and ship_col == guess_col:
    print "Congratulations! You sank my battleship!"
else:
    print "You missed - try again!"
		
#Console output:
O O O O O
O O O O O
O O O O O
O O O O O
O O O O O
Guess Row: 1
Guess Col: 2
0
2
You missed - try again!
____________________________

###Stopped here before developing hangman game###
Part 11 of 19 - Danger, Will Robinson!!
____________________________

#Print specific board position from sublist / list of lists

print board[2][3]
____________________________

#Expand statement to update board so user's guess is reflected

from random import randint

board = []

for x in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
guess_row = int(raw_input("Guess Row:"))
guess_col = int(raw_input("Guess Col:"))

print ship_row
print ship_col

# Write your code below!
if ship_row == guess_row and ship_col == guess_col:
    print "Congratulations! You sank my battleship!"
else:
    print "You missed my battleship!"
    board[guess_row][guess_col] = "X"
    print_board(board)
	
#Console output:
O O O O O
O O O O O
O O O O O
O O O O O
O O O O O
Guess Row: 1
Guess Col: 2
1
3
You missed my battleship!
O O O O O
O O X O O
O O O O O
O O O O O
O O O O O
____________________________

#Develop error condition handling
# 1 - They can enter a guess that's off the board.
# 2 - They can guess a spot they’ve already guessed.
# 3 - They can just miss the ship.
____________________________

#Statement 1 - statement to handle a location that's not on the board

if x not in range(8) or \
   y not in range(3):
        print "Outside the range"
____________________________

#Battleship with code to handle guesses that are out of range

from random import randint

board = []

for x in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
guess_row = int(raw_input("Guess Row:"))
guess_col = int(raw_input("Guess Col:"))

print ship_row
print ship_col

# Write your code below!
if ship_row == guess_row and ship_col == guess_col:
    print "Congratulations! You sank my battleship!"
else:
    if guess_row not in range(5) or \
       guess_col not in range(5):
            print "Oops, that's not even in the ocean."
    else:
        print "You missed my battleship!"
        board[guess_row][guess_col] = "X"
        print_board(board)
		
#Console output:
O O O O O
O O O O O
O O O O O
O O O O O
O O O O O
Guess Row: 8
Guess Col: 12
4
4
Oops, that's not even in the ocean.
____________________________

#Statement 2 - add elif statement to handle user guess that has already been guessed

from random import randint

board = []

for x in range(0, 5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
guess_row = int(raw_input("Guess Row:"))
guess_col = int(raw_input("Guess Col:"))

print ship_row
print ship_col

# Write your code below!
if ship_row == guess_row and ship_col == guess_col:
    print "Congratulations! You sank my battleship!"
else:
    if guess_row not in range(5) or \
       guess_col not in range(5):
            print "Oops, that's not even in the ocean."
    elif board[guess_row][guess_col] == "X":
        print "You guessed that one already."
    else:
        print "You missed my battleship!"
        board[guess_row][guess_col] = "X"
        print_board(board)
____________________________

#Add loop statement to run game 4 times and print the turn
#for turn in range(4):

from random import randint

board = []

for x in range(5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print "Let's play Battleship!"
print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
print ship_row
print ship_col

# Everything from here on should go in your for loop!
# Be sure to indent four spaces!
for turn in range(4):
    print "Turn", turn + 1
    guess_row = int(raw_input("Guess Row:"))
    guess_col = int(raw_input("Guess Col:"))
    if guess_row == ship_row and guess_col == ship_col:
        print "Congratulations! You sunk my battleship!"
    else:
        if (guess_row < 0 or guess_row > 4) or (guess_col < 0 or guess_col > 4):
            print "Oops, that's not even in the ocean."
        elif(board[guess_row][guess_col] == "X"):
            print "You guessed that one already."
        else:
            print "You missed my battleship!"
            board[guess_row][guess_col] = "X"
        print_board(board)
____________________________

#Add logic to end game and print "Game Over" if out of guesses
#if turn == 3

from random import randint

board = []

for x in range(5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print "Let's play Battleship!"
print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
print ship_row
print ship_col

# Everything from here on should go in your for loop!
# Be sure to indent four spaces!
for turn in range(4):
    print "Turn", turn + 1
    guess_row = int(raw_input("Guess Row:"))
    guess_col = int(raw_input("Guess Col:"))
    if guess_row == ship_row and guess_col == ship_col:
        print "Congratulations! You sunk my battleship!"
    else:
        if (guess_row < 0 or guess_row > 4) or (guess_col < 0 or guess_col > 4):
            print "Oops, that's not even in the ocean."
        elif(board[guess_row][guess_col] == "X"):
            print "You guessed that one already."
        else:
            if turn == 3:
                print "Game Over"
            else:
                print "You missed my battleship!"
        board[guess_row][guess_col] = "X"
        print_board(board)
____________________________

#Game project completed (basic)
#Added a break statement after "congratulations" to exit for loop if game is won

from random import randint

board = []

for x in range(5):
    board.append(["O"] * 5)

def print_board(board):
    for row in board:
        print " ".join(row)

print "Let's play Battleship!"
print_board(board)

def random_row(board):
    return randint(0, len(board) - 1)

def random_col(board):
    return randint(0, len(board[0]) - 1)

ship_row = random_row(board)
ship_col = random_col(board)
print ship_row
print ship_col

# Everything from here on should go in your for loop!
# Be sure to indent four spaces!
for turn in range(4):
    print "Turn", turn + 1
    guess_row = int(raw_input("Guess Row:"))
    guess_col = int(raw_input("Guess Col:"))
    if guess_row == ship_row and guess_col == ship_col:
        print "Congratulations! You sunk my battleship!"
        break
    else:
        if (guess_row < 0 or guess_row > 4) or (guess_col < 0 or guess_col > 4):
            print "Oops, that's not even in the ocean."
        elif(board[guess_row][guess_col] == "X"):
            print "You guessed that one already."
        else:
            if turn == 3:
                print "Game Over"
            else:
                print "You missed my battleship!"
        board[guess_row][guess_col] = "X"
        print_board(board)
____________________________
____________________________
____________________________

#Battleship! Extra Credit Ideas

1) Make multiple battleships
2) Make battleships of different sizes
3) Make it a two-player game
4) Use functions to allow your game to have more features (rematches, statistics, etc.)
____________________________
____________________________
____________________________

Loops (While and For)
____________________________

#if = executes only a statement is true
#while = executes (and continues to execute) while a statement is true

count = 0

if count < 10:
    print "Hello, I am an if statement and count is", count
    
while count < 10:
    print "Hello, I am a while and count is", count
    count += 1
	
#Console output:
Hello, I am an if statement and count is 0
Hello, I am a while and count is 0
Hello, I am a while and count is 1
Hello, I am a while and count is 2
Hello, I am a while and count is 3
Hello, I am a while and count is 4
Hello, I am a while and count is 5
Hello, I am a while and count is 6
Hello, I am a while and count is 7
Hello, I am a while and count is 8
Hello, I am a while and count is 9
____________________________

#Loop condition - runs while true, stops when false

loop_condition = True

while loop_condition:
    print "I am a loop"
    loop_condition = False

#Console output:
I am a loop
____________________________

#While loop to square numbers 1 - 10

num = 1

while num <= 10:  # Fill in the condition
    # Print num squared
    print num ** 2
    # Increment num (make sure to do this!)
    num += 1
	
Console output:
1
4
9
16
25
36
49
64
81
100
____________________________

#Loop to see if values other than "x" or "y" have been entered at prompt

choice = raw_input('Enjoying the course? (y/n)')

while not(choice == 'y' or choice == 'n'):  # Fill in the condition (before the colon)
    choice = raw_input("Sorry, I didn't catch that. Enter again: ")

Console output:
Enjoying the course? (y/n) m
Sorry, I didn't catch that. Enter again:  q
Sorry, I didn't catch that. Enter again:  y
____________________________

#Loop to print numbers 0 - 9
#Note that "print count += 1" does not work - have to break into 2 statements

count = 0

while count < 10: # Add a colon
    print count
    # Increment count
    count += 1
	
#Console output:
0
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

#while/if/break loop construction
#Loop to print numbers 0 - 9 and stop loop using a break statement inside an if statement
#if statement tests for the exit condition
#break = exit the current loop
#Benefit of using break = statement is guaranteed to run at least once

count = 0

while True:
    print count
    count += 1
    if count >= 10:
        break
		
#Console output:
0
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

#while/else loop construction
#else statement will execute anytime the loop condition is False
#False = loop is never entered *or* 

import random

print "Lucky Numbers! 3 numbers will be generated."
print "If one of them is a '5', you lose!"

count = 0
while count < 3:
    num = random.randint(1, 6)
    print num
    if num == 5:
        print "Sorry, you lose!"
        break
    count += 1
else:
    print "You win!"
	
#Console output (example 1):
Lucky Numbers! 3 numbers will be generated.
If one of them is a '5', you lose!
3
5
Sorry, you lose!

#Console output (example 2):
Lucky Numbers! 3 numbers will be generated.
If one of them is a '5', you lose!
1
2
4
You win!
____________________________

#Number guessing game using while/else loop construction

from random import randint

# Generates a number from 1 through 10 inclusive
random_number = randint(1, 10)

guesses_left = 3

while guesses_left > 0:
    guess = int(raw_input("Your guess: "))
    print guess
    if guess == random_number:
        print "You win!"
        break
    guesses_left -= 1
else:
    print "You lose."
	
#Console output (example 1):
Your guess:  5
5
Your guess:  4
4
Your guess:  3
3
You win!

#Console output (example 2):
Your guess:  6
6
Your guess:  5
5
Your guess:  4
4
You lose.

#Note - I initally had "while guesses_left < 3"
# This created a False statement and the else statement rand
____________________________

#Loop using "for i in range(#)" statement

print "Counting..."

for i in range(20):
    print i
	
#Console output:
Counting...
0
1
2
3
4
____________________________

#Using for/range loops are useful to do something a specific number of times
#For example, to collect information to append to a list

hobbies = []

# Add your code below!
for i in range(3):
    hobby = raw_input("Please enter a hobby: ")
    hobbies.append(hobby)
    
print hobbies

#Console output:
Please enter a hobby:  music
Please enter a hobby:  Japanese
Please enter a hobby:  fish
[u'music', u'Japanese', u'fish']
____________________________

#For loops to print each letter in a string

thing = "spam!"

for c in thing:
    print c

word = "eggs!"

# Your code here!
for letter in word:
    print letter

#Console output:
s
p
a
m
!
e
g
g
s
!
____________________________

#Using the "," character to keep all print output on the same line

word = "Marble"
for char in word:
    print char,
	
#Console output:
M a r b l e
____________________________

#Using if/else in a for statement to replace letters in a string
#Note that the final print statement doesn't change the output
# But if it is removed the code evaluation fails

phrase = "A bird in the hand..."

# Add your for loop
for char in phrase:
    if char == 'a' or char == 'A':
        print 'X',
    else:
        print char,

#Don't delete this print statement!
print

#Console output:
X   b i r d   i n   t h e   h X n d . . .
____________________________

#Most useful and common use of for loops it to iterate through a list of items

numbers  = [7, 9, 12, 54, 99]

print "This list contains: "

for num in numbers:
    print num

# Add your loop below!
for num in numbers:
    print num ** 2
	
#Console output:
This list contains: 
7
9
12
54
99
49
81
144
2916
9801
____________________________

#Looping over a dictionary using a for statement
#Returns the key, which you can use to get the value

#Example for loop to see if the dictionary contains the value 10

d = {'x': 9, 'y': 10, 'z': 20}
for key in d:
    if d[key] == 10:
        print "This dictionary has the value 10!"
____________________________		

#Using a for loop to return the key and value for all entries in a dictionary

d = {'a': 'apple', 'b': 'berry', 'c': 'cherry'}

for key in d:
    print key + " " + d[key]

#Console output:
a apple
c cherry
b berry
____________________________

#Using enumerate in a for list to print the index for each item

choices = ['pizza', 'pasta', 'salad', 'nachos']

print 'Your choices are:'
for index, item in enumerate(choices):
    print index+1, item
	
#Console output:
Your choices are:
1 pizza
2 pasta
3 salad
4 nachos
____________________________

#Using zip to iterate over two lists
#  The zip() function stops at the end of the shorter list

#Use zip to iterate over two lists, compare items and print the larger of the pair

list_a = [3, 9, 17, 15, 19]
list_b = [2, 4, 8, 10, 30, 40, 50, 60, 70, 80, 90]

for a, b in zip(list_a, list_b):
    # Add your code here!
    if a > b:
        print a
    else:
        print b
		
#Console output:
3
9
17
15
30
____________________________

#Using else with a for loop works the same as with while
# The else statement will run as soon as the for statement is false
# The for statement becomes false when it finishes iterating through the list
# If the for statement breaks, the else statement will not execute

#Example that tests for the presence of an unwanted/non-matching item in the list

fruits = ['banana', 'apple', 'orange', 'tomato', 'pear', 'grape']

print 'You have...'
for f in fruits:
    if f == 'tomato':
        print 'A tomato is not a fruit!' # (It actually is.)
        break
    print 'A', f
else:
    print 'A fine selection of fruits!'
	
#Console output:
You have...
A banana
A apple
A orange
A tomato is not a fruit!
____________________________

#Revision of previous for/else loop example so that else statement runs
# drop tomato from list

fruits = ['banana', 'apple', 'orange', 'pear', 'grape']

print 'You have...'
for f in fruits:
    if f == 'tomato':
        print 'A tomato is not a fruit!' # (It actually is.)
        break
    print 'A', f
else:
    print 'A fine selection of fruits!'
	
#Console output:
You have...
A banana
A apple
A orange
A pear
A grape
A fine selection of fruits!
____________________________

#Example of for/else loop that runs to the end of the list and then executes the else statement

fish = ['red', 'blue', 'green', 'black', 'white']

ish = ['red', 'blue', 'green', 'black', 'white']

for f in fish:
    if f == 'purple':
        print 'We don\'t need no purple fish.'
        break
    print 'You have a ' + f + ' fish.'
else:
    print 'The for statement is now false and this is the else statement.'
	
#Console output:
You have a red fish.
You have a blue fish.
You have a green fish.
You have a black fish.
You have a white fish.
The for statement is now false and this is the else statement.
____________________________

#Example of for/else loop that breaks due to the if condition being met and then executes the else statement

fish = ['red', 'blue', 'green', 'purple', 'black', 'white']

for f in fish:
    if f == 'purple':
        print 'Purple fish?! We don\'t need no purple fish.'
        break
    print 'You have a ' + f + ' fish.'
else:
    print 'The for statement is now false and this is the else statement.'

#Console output:
You have a red fish.
You have a blue fish.
You have a green fish.
Purple fish?! We don't need no purple fish.
____________________________
____________________________
____________________________

Practice Makes Perfect
#Problems that I solved without outside references or help
____________________________
____________________________
____________________________

#Function to return true if number is divisible by 2

def is_even(x):
    if x % 2 == 0:
        return True
    else:
        return False
____________________________

#Function to return false if decimal is non-zero

def is_int(x):
    if (x * 10) % 10 > 0:
        return False
    else:
        return True
____________________________

#Function to return the sum of each digit in a positive integer

integer = 1234

def digit_sum(n):
    list = []
    count = 0
    number = str(n)
    for digit in number:
        list.append(digit)
    for item in list:
        count += int(item)
    return count
        
print digit_sum(integer)

#Console output:
10
____________________________

#Function that calculates the factorial for any given number
# Factorial for x = the product of all of the integers from 1 to x
# For example, the factorial of 4 = 1 * 2 * 3 * 4

#Step 1 - figure out how to generate numbers from 1 to x

x = 4
count = 0
count_list = []

for number in range(x):
    count = count + 1
    count_list.append(count)

print count_list

#Console output:
[1, 2, 3, 4]

#Step 2 - put statements in a function and test output at each iteration
# Had to add another variable (total) to hold the generated value after each iteration

x = 4

def factorial(x):
    count = 0
    count_list = []
    total = 1
    for number in range(x):
        count = count + 1
        count_list.append(count)
    print count_list
    for item in count_list:
        total *= item
        print "Iteration #" + str(item) + " product is: " + str(total)
    print "Final product after completing all iterations is: " + str(total)
    
factorial(x)

#Console output:
[1, 2, 3, 4]
Iteration #1 product is: 1
Iteration #2 product is: 2
Iteration #3 product is: 6
Iteration #4 product is: 24
Final product after completing all iterations is: 24

#Step 3 - clean up code and return total

def factorial(x):
    count = 0
    count_list = []
    total = 1
    for number in range(x):
        count = count + 1
        count_list.append(count)
    for item in count_list:
        total *= item
    return total
	
print factorial(5)

#Console output:
120
____________________________

#Function to determine if a number is prime

#Step 1 - figure out how to generate numbers from 1 to x
# Same as step 1 for previous challenge, but reason is different this time
# Will need to divide by all numbers from 1 to x and see if there is a remainder

x = 4
count = 0
count_list = []

for number in range(x):
    count = count + 1
    count_list.append(count)

print count_list

#Console output:
[1, 2, 3, 4]

#Step 2 - develop a function that tests x divided by each number in the list via a loop
# Use modulus operator to test for the presence of a remainder (x % item > 0)
# Print output after each iteration to verify it is working properly

x = 7

def is_prime(x):
    count = 0
    count_list = []
    total = 1
    for number in range(x):
        count = count + 1
        count_list.append(count)
    print count_list
    for item in count_list:
        if x % item == 0:
            print str(x) + " is divisible by " + str(item)
        else:
            print str(x) + " is not divisible by " + str(item)
    
is_prime(x)

#Console output:
[1, 2, 3, 4, 5, 6, 7]
7 is divisible by 1
7 is not divisible by 2
7 is not divisible by 3
7 is not divisible by 4
7 is not divisible by 5
7 is not divisible by 6
7 is divisible by 7

#Step 3 - tweak function:
# Negative numbers, 0 and 1 should be evaluated as False (per debugger)
# The count_list list shouldn't include 1 or x (per criteria in instructions)
# Add another list to track the result of each evaluation
#    This is the part I was stuck on for a while
#    Remember that I can always use another list to capture all iteration results
#      and then run another statement to evaluate the "tracking" list's items

def is_prime(x):
    count = 1
    total = 1
    count_list = []
    prime_list = []
	#Per debugger, if number is negative, zero or one, return False
    if x <= 0 or x == 1:
        return False
    #List spans from 2 to the number before x
    for number in range(x - 2):
        count = count + 1
        count_list.append(count)
    print count_list
    for item in count_list:
        if x % item == 0:
            print str(x) + " is divisible by " + str(item)
            prime_list.append("n")
        else:
            print str(x) + " is not divisible by " + str(item)
            prime_list.append("y")
    print prime_list
    if "n" in prime_list:
        return False
    else:
        return True
    
print is_prime(8)

#Console output (example 1):
is_prime(7)

[2, 3, 4, 5, 6]
7 is not divisible by 2
7 is not divisible by 3
7 is not divisible by 4
7 is not divisible by 5
7 is not divisible by 6
['y', 'y', 'y', 'y', 'y']
True

#Console output (example 2):
is_prime(8)

[2, 3, 4, 5, 6, 7]
8 is divisible by 2
8 is not divisible by 3
8 is divisible by 4
8 is not divisible by 5
8 is not divisible by 6
8 is not divisible by 7
['n', 'y', 'n', 'y', 'y', 'y']
False

#Step 4 - clean up code and return final result (true = prime, false = not prime)

def is_prime(x):
    count = 1
    total = 1
    count_list = []
    prime_list = []
    if x <= 0 or x == 1:
        return False
    for number in range(x - 2):
        count = count + 1
        count_list.append(count)
    for item in count_list:
        if x % item == 0:
            prime_list.append("n")
        else:
            prime_list.append("y")
    if "n" in prime_list:
        return False
    else:
        return True
    
print is_prime(17)

#Console output:
True
____________________________

#Function to reverse a string

#Step 1 - write function along with output to view after each iteration

def reverse(text):
    list = []
    backwards = ''
    for letter in text:
        print letter
        list.insert(0, letter)
        print list
    for item in list:
        backwards = backwards + item
    return backwards
        
print reverse('string')

#Console output:
s
['s']
t
['t', 's']
r
['r', 't', 's']
i
['i', 'r', 't', 's']
n
['n', 'i', 'r', 't', 's']
g
['g', 'n', 'i', 'r', 't', 's']
gnirts

#Step 2 - after cleanup

def reverse(text):
    list = []
    backwards = ''
    for letter in text:
        list.insert(0, letter)
    for item in list:
        backwards = backwards + item
    return backwards
        
print reverse('string')

#Console output:
gnirts
____________________________

#Another example of a function to reverse a string
# From coding challenge

def FirstReverse(str):
    bucket = []
    reverse = ''
    for a in str:
        bucket.insert(0, a)
    for b in bucket:
        reverse = reverse + b
    str = reverse
    # code goes here ^
    return str

def raw_input():
    return 'testing'

# keep this function call here
print(FirstReverse(raw_input()))

#Console output:
gnitset
____________________________

#Other ways to reverse a string

#Example 1

def FirstReverse(str): 

  # the easiest way to reverse a string in python is actually the following way:
  # in python you can treat the string as an array by adding [] after it and 
  # the colons inside represent str[start:stop:step] where if step is a negative number
  # it'll loop through the string backwards 
  return str[::-1]
    
print FirstReverse(raw_input())

#Implemented
def raw_input():
    return 'testing'

def reverse_string(str):
    return str[::-1]

print(reverse_string(raw_input()))

##Example 2

def FirstReverse(str): 

  # reversed(str) turns the string into an iterator object (similar to an array)
  # and reverses the order of the characters
  # then we join it with an empty string producing a final string for us
  return ''.join(reversed(str))
    
print FirstReverse(raw_input()) 

#Implemented
def raw_input():
    return 'testing'

def reverse_string(str):
    return ''.join(reversed(str))

print(reverse_string(raw_input()))
____________________________

#Function that strips all vowels from a string

#Step 1 - write function along with output to view after each iteration

def anti_vowel(text):
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    bucket = []
    no_vowels = ''
    for item in text:
        if item in vowels:
            print "Vowel"
        else:
            bucket.append(item)
            print bucket
    for letter in bucket:
        no_vowels = no_vowels + letter
        print no_vowels

anti_vowel("This Is An Example!")

#Console output:
['T']
['T', 'h']
Vowel
['T', 'h', 's']
['T', 'h', 's', ' ']
Vowel
['T', 'h', 's', ' ', 's']
['T', 'h', 's', ' ', 's', ' ']
Vowel
['T', 'h', 's', ' ', 's', ' ', 'n']
['T', 'h', 's', ' ', 's', ' ', 'n', ' ']
Vowel
['T', 'h', 's', ' ', 's', ' ', 'n', ' ', 'x']
Vowel
['T', 'h', 's', ' ', 's', ' ', 'n', ' ', 'x', 'm']
['T', 'h', 's', ' ', 's', ' ', 'n', ' ', 'x', 'm', 'p']
['T', 'h', 's', ' ', 's', ' ', 'n', ' ', 'x', 'm', 'p', 'l']
Vowel
['T', 'h', 's', ' ', 's', ' ', 'n', ' ', 'x', 'm', 'p', 'l', '!']
T
Th
Ths
Ths 
Ths s
Ths s 
Ths s n
Ths s n 
Ths s n x
Ths s n xm
Ths s n xmp
Ths s n xmpl
Ths s n xmpl!

#Step 2 - after cleanup

def anti_vowel(text):
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
    bucket = []
    no_vowels = ''
    for item in text:
        if item in vowels:
            pass
        else:
            bucket.append(item)
    for letter in bucket:
        no_vowels = no_vowels + letter
    return no_vowels

print anti_vowel("This Is An Example!")

#Console output:
Ths s n xmpl!
____________________________

#Function to calculate the Scrabble score for a word

score = {"a": 1, "c": 3, "b": 3, "e": 1, "d": 2, "g": 2, 
         "f": 4, "i": 1, "h": 4, "k": 5, "j": 8, "m": 3, 
         "l": 1, "o": 1, "n": 1, "q": 10, "p": 3, "s": 1, 
         "r": 1, "u": 1, "t": 1, "w": 4, "v": 4, "y": 4, 
         "x": 8, "z": 10}

def scrabble_score(word):
    l_word = word.lower()
    total = 0
    for char in l_word:
        for letter in score:
            if letter == char:
                total = total + score[letter]
    return total
    
print scrabble_score("testing")

#Console output:
8
____________________________

#Function to find and replace a word in a string with asterisks (censor)
# Ex:  This hack is wack hack. > This **** is wack ****.

#Step 1 - populate a list with an asterisk for each letter in the target word
# and then print the censored version of the word

def censor(text, word):
    list = []
    censored = ''
    for letter in word:
        list.append('*')
        print list
    for asterisk in list:
        censored = censored + asterisk
    print censored
    print word
    print text

#Console output:
['*']
['*', '*']
['*', '*', '*']
['*', '*', '*', '*']
****
test
this is a test

#Step 2 - Playing around with different ideas and printing output
# Need to figure out how to find word position in text and then replace with censored

def censor(text, word):
    list = []
    censored = ''
    for letter in word:
        list.append('*')
        print list
    for asterisk in list:
        censored = censored + asterisk
    print censored
    print word
    print text
    for index in enumerate(text):
        print index
    print "Just a spacer"
    if word in text:
        print index[0] - len(word)
        
censor('this is a test', 'test')

#Console output:
['*']
['*', '*']
['*', '*', '*']
['*', '*', '*', '*']
****
test
this is a test
(0, 't')
(1, 'h')
(2, 'i')
(3, 's')
(4, ' ')
(5, 'i')
(6, 's')
(7, ' ')
(8, 'a')
(9, ' ')
(10, 't')
(11, 'e')
(12, 's')
(13, 't')
Just a spacer
9

#Step 3 - Went off in wild directions without any luck trying to figure out how to replace word in text

def censor(text, word):
    word_list = []
    censor_list = []
    text_list = []
    censored = ''
    new_text = ''
    if word in text:
        word_index = text.index(word)
        print word_index
    for char in text:
        text_list.append(char)
        print text_list
    for letter in word:
        word_list.append(letter)
        censor_list.append('*')
        print word_list
        print censor_list
 #   for asterisk in censor_list:
  #      censored = censored + asterisk
    #word = censored
    #print word
    for word in text:
        if w == word:
            print censored
        else:
            print char2

censor('this is a test', 'test')

#Console output:
10
['t']
['t', 'h']
['t', 'h', 'i']
['t', 'h', 'i', 's']
['t', 'h', 'i', 's', ' ']
['t', 'h', 'i', 's', ' ', 'i']
['t', 'h', 'i', 's', ' ', 'i', 's']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's']
['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 't', 'e', 's', 't']
['t']
['*']
['t', 'e']
['*', '*']
['t', 'e', 's']
['*', '*', '*']
['t', 'e', 's', 't']
['*', '*', '*', '*']

#Step 4 - Research for string replace function
# Found one:  string.replace(original_text, replacement_text)

def censor(text, word):
    censor_list = []
    censored = ''
    for letter in word:
        censor_list.append('*')
    print censor_list
    for asterisk in censor_list:
        censored = censored + asterisk
    print censored
    print text.replace(word, censored)

censor('this is a test', 'test')

#Console output:
['*', '*', '*', '*']
****
this is a ****

#Step 5 - Clean up for challenge

def censor(text, word):
    censor_list = []
    censored = ''
    for letter in word:
        censor_list.append('*')
    for asterisk in censor_list:
        censored = censored + asterisk
    return text.replace(word, censored)

print censor('this is a test - testing, testing, 1 2 3', 'test')

#Console output:
this is a **** - ****ing, ****ing, 1 2 3
____________________________

#Function to count the number of instances of a value in a list

def count(sequence, item):
    count = 0
    if item in sequence:
        for value in sequence:
            if value == item:
                count += 1
    return count    

print count([1, 3, 2, 2, 2, 4], 2)

#Console output:
3
____________________________

#Function to return only the even numbers from a list, without changing original list

def purify(numbers):
    even_list = []
    for n in numbers:
        if n % 2 == 0:
            even_list.append(n)
    return even_list

print purify([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

#Console output:
[2, 4, 6, 8, 10]
____________________________

#Function to return the product of a list of integers

def product(numbers):
    total = 1
    for n in numbers:
        total *= n
    return total

print product([2, 3, 4])

#Console output:
24
____________________________

#Function to only return unique values from a list

def remove_duplicates(numbers):
    bucket = []
    for n in numbers:
        if n in bucket:
            pass
        else:
            bucket.append(n)
    return bucket
    
print remove_duplicates([1, 3, 2, 2, 2, 4])
____________________________

#Sort a list by value using the sorted() function

sorted([5, 2, 3, 1, 4])

#Console output:
[1, 2, 3, 4, 5]
____________________________

#Function to return the unique items from two lists, sorted ascending
# From coding challenge

#Implement a method that checks two arrays and lists a new
# array with all of the unique numbers in the first two arrays.

def all_uniqs(array1, array2):
    bucket = []
    for x in array1:
        bucket.append(x)
    for y in array2:
        if y in bucket:
            pass
        else:
            bucket.append(y)
    return sorted(bucket)

print(all_uniqs([1, 3, 2], [1, 2, 4]))

#Console output:
[1, 2, 3, 4]
____________________________

#Function to find the median value of a list
# If there are an even number of items, find the average of the two middle items

#Step 1 - write function along with output to view after each iteration

def median(numbers):
    bucket = []
    bucket = sorted(numbers)
    print bucket
    print len(bucket)
    if len(bucket) % 2 != 0:
        middle = len(bucket)/2
        print bucket[middle]
    else:
        m_index_1 = (len(bucket)-1)/2
        m_index_2 = (len(bucket)+1)/2
        mid_1 = bucket[m_index_1]
        print mid_1
        mid_2 = bucket[m_index_2]
        print mid_2
        print float(mid_1 + mid_2)/2

print median([5,9,2,4,1,7])

#Console output:
[1, 2, 4, 5, 7, 9]
6
4
5
4.5
None

#Step 2 - after cleanup (even number of items in list)

def median(numbers):
    bucket = []
    bucket = sorted(numbers)
    if len(bucket) % 2 != 0:
        middle = len(bucket)/2
        return bucket[middle]
    else:
        m_index_1 = (len(bucket)-1)/2
        m_index_2 = (len(bucket)+1)/2
        mid_1 = bucket[m_index_1]
        mid_2 = bucket[m_index_2]
        return float(mid_1 + mid_2)/2

print median([5,9,2,4,1,7])

#Console output:
4.5

#Step 2 - after cleanup (odd number of items in list)

def median(numbers):
    bucket = []
    bucket = sorted(numbers)
    if len(bucket) % 2 != 0:
        middle = len(bucket)/2
        return bucket[middle]
    else:
        m_index_1 = (len(bucket)-1)/2
        m_index_2 = (len(bucket)+1)/2
        mid_1 = bucket[m_index_1]
        mid_2 = bucket[m_index_2]
        return float(mid_1 + mid_2)/2

print median([5,9,2,4,1])

#Console output:
4
____________________________

#Function to iterate through list and print each item

grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def print_grades(grades):
    for item in grades:
        print item

print_grades(grades)

#Console output
100
100
90
40
80
100
85
70
90
65
90
85
50.5
____________________________

#Function to calculate the total sum for a list of values

grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def grades_sum(scores):
    total = 0
    for item in scores:
        total += item
    return total
    
print grades_sum(grades)

#Console output:
1045.5
____________________________

#Add a function to calculate the average of the grades

grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def grades_sum(scores):
    total = 0
    for item in scores:
        total += item
    return total

def grades_average(grades):
    average = grades_sum(grades)/float(len(grades))
    return average
    
print grades_average(grades)

#Console output:
80.4230769231
____________________________

#Add a function to calculate the variance
# A large variance means the grades were all over the place, 
# while a small variance (relatively close to the average) means most students did well

grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def print_grades(grades):
    for grade in grades:
        print grade

def grades_sum(grades):
    total = 0
    for grade in grades: 
        total += grade
    return total
    
def grades_average(grades):
    sum_of_grades = grades_sum(grades)
    average = sum_of_grades / float(len(grades))
    return average

def grades_variance(scores):
    average = grades_average(scores)
    variance = 0
    for score in scores:
        variance += (average - score) ** 2
    return variance/len(scores)
    
print grades_variance(grades)

#Console output:
334.071005917
____________________________

#Add function to calculate the standard deviation
# The standard deviation = the square root of the variance
# The square root of a number can be calculated by using: n ** 0.5

grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def print_grades(grades):
    for grade in grades:
        print grade

def grades_sum(grades):
    total = 0
    for grade in grades: 
        total += grade
    return total
    
def grades_average(grades):
    sum_of_grades = grades_sum(grades)
    average = sum_of_grades / float(len(grades))
    return average

def grades_variance(scores):
    average = grades_average(scores)
    variance = 0
    for score in scores:
        variance += (average - score) ** 2
    return variance/len(scores)
    
def grades_std_deviation(variance):
    return variance ** 0.5

variance = grades_variance(grades)

print grades_std_deviation(variance)

#Console output:
18.2776094147
____________________________

#Final edit to output all grades stats

grades = [100, 100, 90, 40, 80, 100, 85, 70, 90, 65, 90, 85, 50.5]

def print_grades(grades):
    count = 1
    for grade in grades:
        print 'Grade ' + str(count) + ': ' + str(grade)
        count += 1

def grades_sum(grades):
    total = 0
    for grade in grades: 
        total += grade
    return total
    
def grades_average(grades):
    sum_of_grades = grades_sum(grades)
    average = sum_of_grades / float(len(grades))
    return average

def grades_variance(scores):
    average = grades_average(scores)
    variance = 0
    for score in scores:
        variance += (average - score) ** 2
    return variance/len(scores)
    
def grades_std_deviation(variance):
    return variance ** 0.5

variance = grades_variance(grades)

print_grades(grades)
print 'Grades sum: ' + str(grades_sum(grades))
print 'Grades average: ' + str(grades_average(grades))
print 'Variance: ' + str(grades_variance(grades))
print 'Standard deviation: ' + str(grades_std_deviation(variance))

#Console output:
Grade 1: 100
Grade 2: 100
Grade 3: 90
Grade 4: 40
Grade 5: 80
Grade 6: 100
Grade 7: 85
Grade 8: 70
Grade 9: 90
Grade 10: 65
Grade 11: 90
Grade 12: 85
Grade 13: 50.5
Grades sum: 1045.5
Grades average: 80.4230769231
Variance: 334.071005917
Standard deviation: 18.2776094147
____________________________
____________________________
____________________________

Advanced Topics in Python
____________________________
____________________________
____________________________

#Interators for dictionaries

d = {
    "Name": "Guido",
    "Age": 56,
    "BDFL": True
}
print d.items()

#Console output:
[('BDFL', True), ('Age', 56), ('Name', 'Guido')]
____________________________

#Using items() fucntion to print array of tuples containing each key/value pair from dictionary

my_dict = {
    'dog': 'Luma',
    'fish': 'Nemo',
    'kid': 'Kuon'
}

print my_dict.items()

#Console output:
[('fish', 'Nemo'), ('dog', 'Luma'), ('kid', 'Kuon')]
____________________________

#Using keys() function to print an array of of the dictionary's keys

my_dict = {
    'dog': 'Luma',
    'fish': 'Nemo',
    'kid': 'Kuon'
}

print my_dict.keys()

#Console output:
['fish', 'dog', 'kid']
____________________________

#Using values() function to print an array of of the dictionary's keys

my_dict = {
    'dog': 'Luma',
    'fish': 'Nemo',
    'kid': 'Kuon'
}

print my_dict.values()

#Console output:
['Nemo', 'Luma', 'Kuon']
____________________________

#Using the in operator to iterate over lists, tuples, dictionaries and strings

for number in range(5):
    print number,

d = { "name": "Eric", "age": 26 }
for key in d:
    print key, d[key],

for letter in "Eric":
    print letter,  # note the comma!

#Console output:
0 1 2 3 4 age 26 name Eric E r i c
____________________________

#Use the comma (,) to keep key and value on the same line

my_dict = {
    'dog': 'Luma',
    'fish': 'Nemo',
    'kid': 'Kuon'
}

for key in my_dict:
    print key, my_dict[key]
	
#Console outpu:
fish Nemo
dog Luma
kid Kuon
____________________________

#Build a list of numbers from 0 to 50 using the range() function

my_list = range(51)
print my_list

#Console output:
[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50]
____________________________

#Building a list of all even numbers between 0 and 50 using list comprehension (for/in and if keywords)

evens_to_50 = [i for i in range(51) if i % 2 == 0]
print evens_to_50

#Console output:
[0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34, 36, 38, 40, 42, 44, 46, 48, 50]
____________________________

#List comprehension syntax

new_list = [x for x in range(1,6)]
# => [1, 2, 3, 4, 5]

doubles = [x*2 for x in range(1,6)]
# => [2, 4, 6, 8, 10]

doubles_by_3 = [x*2 for x in range(1,6) if (x*2)%3 == 0]
# => [6]
____________________________

#Using list comprehension to create a list of all even squared numbers from 1 to 11

even_squares = [x**2 for x in range(1,12) if x % 2 == 0]

print even_squares

#Console output:
[4, 16, 36, 64, 100]
____________________________

#Using list comprehension to create a list of three "C"s

c = ['C' for x in range(5) if x < 3]
print c

#Console output:
['C', 'C', 'C']
____________________________

#Using list comprehension to create a list of cubed numbers that are divisible by 4

cubes_by_four = [x**3 for x in range(1,11) if x**3 % 4 == 0]

print cubes_by_four

#Console output:
[8, 64, 216, 512, 1000]
____________________________

#List slicing syntax

[start:end:stride]

#start - where the slice starts (inclusive)
#end - where the slice ends (exclusive)
#stride - the space between items in the sliced list
# for example, a stride of 2 would select every other list item
____________________________

#List slicing example

# Should be [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
l = [i ** 2 for i in range(1, 11)]

#start at 9, end at 100, select every other value in list
print l[2:9:2]

#Console output:
[9, 25, 49, 81]
____________________________

#Omitting slice indexes and default slide indexes

#defult start index is 0
#default end index is the last item in the list
#default stride is 1

to_five = ['A', 'B', 'C', 'D', 'E']

print to_five[3:]
# prints ['D', 'E'] 

print to_five[:2]
# prints ['A', 'B']

print to_five[::2]
# print ['A', 'C', 'E']
____________________________

#List slicing to print all odd numbers in a list of numbers 1 - 10

my_list = range(1, 11) # List of numbers 1 - 10

print my_list[::2]

#Console output:
[1, 3, 5, 7, 9]
____________________________

#Reversing a list

#A negative stride progresses through the list from right to left

letters = ['A', 'B', 'C', 'D', 'E']
print letters[::-1]

#Console output:
['E', 'D', 'C', 'B', 'A']
____________________________

letters = ['A', 'B', 'C', 'D', 'E']
print letters[::-2]

#Console output:
['E', 'C', 'A']
____________________________

my_list = range(1, 11)

backwards = my_list[::-1]
print backwards

#Console output:
[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
____________________________

to_one_hundred = range(101)

backwards_by_tens = to_one_hundred[::-10]
print backwards_by_tens

#Console output:
[100, 90, 80, 70, 60, 50, 40, 30, 20, 10, 0]
____________________________

#List of numbers from 1 - 21
to_21 = range(1,22)

#List of odd numbers from to_21 list
odds = to_21[::2]

#List equal to the middle third of to_21 (8 - 14)
middle_third = to_21[7:14]

print to_21
print odds
print middle_third

#Console output:
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
[1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21]
[8, 9, 10, 11, 12, 13, 14]
____________________________

#List slicing can also be used with strings

str = 'words'
print(str[:4])
print(str[1:3])
print(str[::2])
print(str[::-1])
print(str[2::-1])
print(str[:1:-1])
print(str[:2:-1])
print(str[::-2])
print(str[:1:-2])

#Console output:
word
or
wrs
sdrow
row
sdr
sd
srw
sr
____________________________

#Example using list slicing to spell "sword"

str = 'words'
a = str[:3:-1]  #s
b = str[:4]     #word
print(a+b)

#Console output:
sword
____________________________

#Anonymous functions
# Python allow functional programming
# Can pass functions around just as if they were variables or values

lambda x: x % 3 == 0

#lambda is used to create an anonymous function
# Same functionality as this, just returns the value without assigning a name to the function

def by_three(x):
    return x % 3 == 0
____________________________

#Using filter() with lambda to determine what to filter
# filter(lambda x: *howto filter*, *list to filter*)

my_list = range(16)
print filter(lambda x: x % 3 == 0, my_list)

#Console output:
[0, 3, 6, 9, 12, 15]
____________________________

#Anonymous function to return a specific string from a list

languages = ["HTML", "JavaScript", "Python", "Ruby"]
print filter(lambda x: x == "Python", languages)

#Console output:
['Python']
____________________________

#List comprehension to generate a list of squares for numbers 1 - 10
#Anonymous function to filter list to only print out numbers between 30 and 70

squares = [x**2 for x in range(1, 11)]
print filter(lambda x: x >= 30 and x <= 70, squares)

#Console output:
[36, 49, 64]
____________________________

#List comprehension to list all numbers between 1 - 15 that are evenly divisible by 3 or 5

threes_and_fives = [x for x in range(1, 16) if x % 3 == 0 or x % 5 == 0]
print threes_and_fives

#Console output:
[3, 5, 6, 9, 10, 12, 15]
____________________________

#Using list slicing to reverse string and print every other character

garbled = "!XeXgXaXsXsXeXmX XtXeXrXcXeXsX XeXhXtX XmXaX XI"
message = garbled[::-2]
print message

#Console output:
I am the secret message!
____________________________

#Anonymous function to strip out unwanted character in string

garbled = "IXXX aXXmX aXXXnXoXXXXXtXhXeXXXXrX sXXXXeXcXXXrXeXt mXXeXsXXXsXaXXXXXXgXeX!XX"
message = filter(lambda x: x != "X", garbled)
print message

#Console output:
I am another secret message!
____________________________

#Bitwise operators

print 5 >> 4  # Right Shift
print 5 << 1  # Left Shift
print 8 & 5   # Bitwise AND
print 9 | 4   # Bitwise OR
print 12 ^ 42 # Bitwise XOR
print ~88     # Bitwise NOT

#Console output:
0
10
0
13
38
-89
____________________________

#Counting in base 2

#Evaluating 1010 in base 2

8's bit  4's bit  2's bit  1's bit
    1       0       1      0 
    8   +   0    +  2   +  0  = 10
____________________________

#Writing numbers in binary format in Python
# Prefix binary number with "0b" to indicate that it's binary

print 0b1,    #1
print 0b10,   #2
print 0b11,   #3
print 0b100,  #4
print 0b101,  #5
print 0b110,  #6
print 0b111   #7
print "******"
print 0b1 + 0b11  #1 + 3
print 0b11 * 0b11  #3 * 3

#Console output:
1 2 3 4 5 6 7
******
4
9
____________________________

#Powers of two

2**0 = 1
2**1 = 2
2**2 = 4
2**3 = 8
2**4 = 16
2**5 = 32
2**6 = 64
2**7 = 128
2**8 = 256
2**9 = 512
2**10 = 1024
____________________________

#Practice writing numbers 1 - 12 in binary

one = 0b1
two = 0b10
three = 0b11
four = 0b100
five = 0b101
six = 0b110
seven = 0b111
eight = 0b1000
nine = 0b1001
ten = 0b1010
eleven = 0b1011
twelve = 0b1100
____________________________

#Printing numbers in binary format using the bin() function
# Can also print in base 8 using oct() and base 16 using hex()

print bin(1)
print bin(2)
print bin(3)
print bin(4)
print bin(5)

#Console output:
0b1
0b10
0b11
0b100
0b101
____________________________

#The int() function's second parameter specifies the base counting system
# Binary format example: int("110", 2) > 6

print int("1",2)
print int("10",2)
print int("111",2)
print int("0b100",2)
#bin(5) converts 5 to 0b101, then int(ob101, 2) converts to 5
print int(bin(5),2)
# Print out the decimal equivalent of the binary 11001001.
print int("11001001", 2)

#Console output:
1
2
7
4
5
201
____________________________

#Left and right bit shifts
# Equivalent to floor multiplying/dividing for each shift
#  For floor operations, drop the remainder, so 2.5 > 2
# Bitwise operations only work on integers (not on strings or floats)

# Left Bit Shift (<<)  

# 1 << 2 = 1 * 2 = 2 * 2 = 4
0b000001 << 2 == 0b000100 (1 << 2 = 4)
# 5 << 3 = 5 * 2 = 10 * 2 = 20 * 2 = 40
0b000101 << 3 == 0b101000 (5 << 3 = 40)       

# Right Bit Shift (>>)

# 20 >> 3 = 20 / 2 = 10 / 2 = 5 / 2 = 2.5 > 2
0b0010100 >> 3 == 0b000010 (20 >> 3 = 2)
# 2 >> 2 = 2 / 2 = 1 / 2 = 0.5 > 0
0b0000010 >> 2 == 0b000000 (2 >> 2 = 0) 
____________________________

#Bit shifting example

shift_right = 0b1100  #12
shift_left = 0b1  #1

# Your code here!
shift_right = shift_right >> 2  #12 / 2 = 6 / 2 = 3
shift_left = shift_left << 2  #1 * 2 = 2 * 2 = 4

print bin(shift_right)
print bin(shift_left)

#Console output:
0b11  #3
0b100  #4
____________________________

#Bitwise AND (&) operator
# Compares two numbers on a bit level
# and returns a binary number where both places are "on" (1)
# Can only return a number that is less than or equal to original values

     a:   00101010   42
     b:   00001111   15       
	===================
 a & b:   00001010   10

#For every given bit in two binary numbers:
0 & 0 = 0
0 & 1 = 0
1 & 0 = 0
1 & 1 = 1

#Example:
 0b111 (7) & 0b1010 (10) = 0b10
 ____________________________

#Bitwise AND (&) operator example

print bin(0b1110 & 0b101)  #0b100
print (0b1110 & 0b101)  #4
____________________________

#Bitwise OR (|) operator
# Compares two numbers on a bit level
# and returns a binary number where either place is "on" (1)
# Can only return a number that is greater than or equal to original values

    a:  00101010  42
    b:  00001111  15       
	================
a | b:  00101111  47

#For every given bit in two binary numbers:
0 | 0 = 0
0 | 1 = 1 
1 | 0 = 1
1 | 1 = 1

#Example:
110 (6) | 1010 (10) = 1110 (14)
____________________________

#Bitwise OR (|) operator example

print bin(0b1110 | 0b101)  #0b1111
print (0b1110 | 0b101)  #15
____________________________

#Bitwise XOR (^) operator
# Compares two numbers on a bit level
# and returns a binary number where either place (but NOT both) is "on" (1)
# XOR-ing a number with itself will always result in 0

    a:  00101010   42
    b:  00001111   15       
	================
a ^ b:  00100101   37

#For every given bit in two binary numbers:
0 ^ 0 = 0
0 ^ 1 = 1
1 ^ 0 = 1
1 ^ 1 = 0

#Example:
111 (7) ^ 1010 (10) = 1101 (13)
____________________________

#Bitwise XOR (^) operator example

print bin(0b1110 ^ 0b101)  #0b1011
print (0b1110 ^ 0b101)  #11
____________________________

#Bitwise NOT (~) operator
# Compares two numbers on a bit level
# and returns a binary number that is equal to -(n+1)

print bin(~0b110)
print bin(~0b101)
print bin(~0b111)
print ~1
print ~2
print ~3
print ~42
print ~123

#Console output:
-0b111
-0b110
-0b1000
-2
-3
-4
-43
-124
____________________________

#Using a bit mask
# A bit mask is a variable used in bitwise operations
# A bit mask can be used to turn specific bits on/off or collect data about which bits are on/off
____________________________

#Checking if bits are on or off using &
# Example to determine if the third bit from the right is on (1)

num  = 0b1100
mask = 0b0100
desired = num & mask
if desired > 0:
    print "Bit was on"

#Console output:
Bit was on
____________________________

#Function to determine if 4th bit is on

def check_bit4(input):
    mask = 0b1000
    desired = mask & input
    print bin(desired)  #check result of &
    if desired > 0:
        return "on"
    else:
        return "off"

print check_bit4(0b111)
print check_bit4(0b1111)

#Console output:
0b0
off
0b1000
on
____________________________

#Turning bits on using |
# Example to change the rightmost bit in a binary number using |

a = 0b110 # 6
mask = 0b1 # 1
desired =  a | mask # 0b111, or 7

print bin(desired)
print desired

#Console output:
0b111
7
____________________________

#Example to flip the 3rd bit in a binary number on using |

a = 0b10111011
mask = 0b100
result = a | mask
print bin(result)

#Console output:
0b10111111
____________________________

#Flipping bits using a mask and ^
# Example to flip all of the bits in a

a = 0b110 # 6
mask = 0b111 # 7
desired =  a ^ mask # 0b1

print bin(desired)
print desired

#Console output:
0b1
1
____________________________

#Example to flip all of the bits in a

a = 0b11101110
mask = 0b11111111
result = a ^ mask

print bin(result)
print (result)

#Console output:
0b10001
17
____________________________

#Using left shift (<<) and right shift (>>) to slide masks into place

#Example to turn on the 10th bit
# Shift 9 as we only need to slide the mask 9 places over 
# from the first bit to reach the tenth bit

a = 0b101 
# Tenth bit mask
mask = (0b1 << 9)  # One less than ten 
desired = a ^ mask

print bin(desired)
print desired

#Console output:
0b1000000101
517
____________________________

#Function to flip bits using provided binary number and shift amount

def flip_bit(number, n):
    mask = 0b1 << (n - 1)
    result = number ^ mask
    return bin(result)
    
print flip_bit(0b100, 1)
print flip_bit(0b111, 2)
print flip_bit(0b101, 3)
print flip_bit(0b1, 4)

#Console output:
0b101
0b101
0b1
0b1001
____________________________
____________________________
____________________________

Introduction to Classes
____________________________
____________________________
____________________________

Classes

class = a way of organizing and producing objects with similar attributes and methods
object = a single data structure that contains data and functions (methods)
method = a function of an object
____________________________

#Example Fruit class

class Fruit(object):
    """A class that makes various tasty fruits."""
    def __init__(self, name, color, flavor, poisonous):
        self.name = name
        self.color = color
        self.flavor = flavor
        self.poisonous = poisonous

    def description(self):
        print "I'm a %s %s and I taste %s." % (self.color, self.name, self.flavor)

    def is_edible(self):
        if not self.poisonous:
            print "Yep! I'm edible."
        else:
            print "Don't eat me! I am super poisonous."

lemon = Fruit("lemon", "yellow", "sour", False)

lemon.description()
lemon.is_edible()

#Console output:
I'm a yellow lemon and I taste sour.
Yep! I'm edible.
____________________________

#Basic class
# By convention, user-defined Python class names start with a capital letter

 class Animal(object):
     pass
____________________________

#Adding the __init__ function

 class Animal(object):
     def __init__(self):
         pass
____________________________

#Adding self.name

 class Animal(object):
     def __init__(self, name):
         self.name = name
____________________________

#Accessing object attributes using dot notation

class Square(object):
  def __init__(self):
    self.sides = 4

my_shape = Square()
print my_shape.sides

#Console output:
4
____________________________

#Example - creating an object and accessing attribute

 class Animal(object):
     def __init__(self, name):
         self.name = name

zebra = Animal("Jeffrey")
print zebra.name
____________________________

# Class definition
class Animal(object):
    """Makes cute animals."""
    # For initializing our instance objects
    def __init__(self, name, age, is_hungry):
        self.name = name
        self.age = age
        self.is_hungry = is_hungry

# Note that self is only used in the __init__()
# function definition; we don't need to pass it
# to our instance objects.

zebra = Animal("Jeffrey", 2, True)
giraffe = Animal("Bruce", 1, False)
panda = Animal("Chad", 7, True)

print zebra.name, zebra.age, zebra.is_hungry
print giraffe.name, giraffe.age, giraffe.is_hungry
print panda.name, panda.age, panda.is_hungry

#Console output
Jeffrey 2 True
Bruce 1 False
Chad 7 True
____________________________

#Instance variables

class Animal(object):
    """Makes cute animals."""
    is_alive = True
    def __init__(self, name, age):
        self.name = name
        self.age = age

zebra = Animal("Jeffrey", 2)
giraffe = Animal("Bruce", 1)
panda = Animal("Chad", 7)

print zebra.name, zebra.age, zebra.is_alive
print giraffe.name, giraffe.age, giraffe.is_alive
print panda.name, panda.age, panda.is_alive

#Console output:
Jeffrey 2 True
Bruce 1 True
Chad 7 True
____________________________

#Adding a method (square example)

class Square(object):
  def __init__(self, side):
    self.side = side

  def perimeter(self):
    return self.side * 4
____________________________

#Adding a method (class-specific function)

class Animal(object):
    """Makes cute animals."""
    is_alive = True
    def __init__(self, name, age):
        self.name = name
        self.age = age
    # Add your method here!
    def description(self):
        print self.name
        print self.age

hippo = Animal("Butter", 27)
hippo.description

#Console output:
<nothing>
____________________________

#Adding another variable to a class and accessing it for instances

class Animal(object):
    """Makes cute animals."""
    is_alive = True
    health = "good"
    def __init__(self, name, age):
        self.name = name
        self.age = age
    # Add your method here!
    def description(self):
        print self.name
        print self.age

hippo = Animal("Butter", 27)
sloth = Animal("Digger", 5)
ocelot = Animal("Sunshine", 8)

hippo.description

print hippo.health
print sloth.health
print ocelot.health

#Console output:
good
good
good
____________________________

#More realistic example of a program class

class ShoppingCart(object):
    """Creates shopping cart objects
    for users of our fine website."""
    items_in_cart = {}
    def __init__(self, customer_name):
        self.customer_name = customer_name

    def add_item(self, product, price):
        """Add product to the cart."""
        if not product in self.items_in_cart:
            self.items_in_cart[product] = price
            print product + " added."
        else:
            print product + " is already in the cart."

    def remove_item(self, product):
        """Remove product from the cart."""
        if product in self.items_in_cart:
            del self.items_in_cart[product]
            print product + " removed."
        else:
            print product + " is not in the cart."
            
my_cart = ShoppingCart("Joe Smith")
my_cart.add_item("Textbook", 5)

#Console output:
Textbook added.
____________________________

#Class inheritance example illustrating how a derived (child) class (or subclass) can access a base (parent) class function

class Customer(object):
    """Produces objects that represent customers."""
    def __init__(self, customer_id):
        self.customer_id = customer_id

    def display_cart(self):
        print "I'm a string that stands in for the contents of your shopping cart!"

class ReturningCustomer(Customer):
    """For customers of the repeat variety."""
    def display_order_history(self):
        print "I'm a string that stands in for your order history!"

monty_python = ReturningCustomer("ID: 12345")
monty_python.display_cart()
monty_python.display_order_history()

#Console output:
I'm a string that stands in for the contents of your shopping cart!
I'm a string that stands in for your order history!
____________________________

#Creating a derived class (subclass)

class Shape(object):
    """Makes shapes!"""
    def __init__(self, number_of_sides):
        self.number_of_sides = number_of_sides

# Add your Triangle class below!
class Triangle(Shape):
    def __init__(self, side1, side2, side3):
        self.side1 = side1
        self.side2 = side2
        self.side3 = side3
		
#Console output:
<nothing>
____________________________

#Example of derived class (subclass) that uses a function to override function in base class
# Note that a derived class doesn't need to have an init function

class Employee(object):
    def __init__(self, name):
        self.name = name
    def greet(self, other):
        print "Hello, %s" % other.name

class CEO(Employee):
    def greet(self, other):
        print "Get back to work, %s!" % other.name

ceo = CEO("Emily")
emp = Employee("Steve")
emp.greet(ceo)
# Hello, Emily
ceo.greet(emp)
# Get back to work, Steve!
____________________________

# Another derived class (subclass) with a function that overrides base (parent, super) class function

class Employee(object):
    """Models real-life employees!"""
    def __init__(self, employee_name):
        self.employee_name = employee_name

    def calculate_wage(self, hours):
        self.hours = hours
        return hours * 20.00

# Derived class function to override base class function
class PartTimeEmployee(Employee):
    def calculate_wage(self, hours):
        self.hours = hours
        return hours * 12.00
____________________________

# Directly access the attributes or methods of a superclass (base/parent class) from a subclass
# m() is a method from the base class

class Derived(Base):
   def m(self):
       return super(Derived, self).m()
____________________________

#Example of using super to call a parent (base/super) class' method from a derived (child) class

class Employee(object):
    """Models real-life employees!"""
    def __init__(self, employee_name):
        self.employee_name = employee_name

    def calculate_wage(self, hours):
        self.hours = hours
        return hours * 20.00

# Derived class function to override base class function
class PartTimeEmployee(Employee):
    def calculate_wage(self, hours):
        self.hours = hours
        return hours * 12.00
    
    def full_time_wage(self, hours):
        return super(PartTimeEmployee, self).calculate_wage(hours)

milton = PartTimeEmployee('milton')
print milton.full_time_wage(10)

# Console output:
200.0
____________________________

# Triangle class example with derived Equilateral class example

class Triangle():
    number_of_sides = 3
    
    def __init__(self, angle1, angle2, angle3):
        self.angle1 = angle1
        self.angle2 = angle2
        self.angle3 = angle3
        
    def check_angles(self):
        if self.angle1 + self.angle2 + self.angle3 == 180:
            return True
        else:
            return False

class Equilateral(Triangle):
    angle = 60
    
    def __init__(self):
        self.angle1 = self.angle
        self.angle2 = self.angle
        self.angle3 = self.angle

my_triangle = Triangle(90, 30, 60)
print my_triangle.number_of_sides
print my_triangle.check_angles()

# Console output:
3
True
____________________________

# Example car class

class Car(object):
    condition = "new"
    def __init__(self, model, color, mpg):
        self.model = model
        self.color = color
        self.mpg   = mpg
        
my_car = Car("DeLorean", "silver", 88)
print my_car.condition
print my_car.model
print my_car.color
print my_car.mpg

# Console output:
new
DeLorean
silver
88
____________________________

# Example car class with method to display class attributes

class Car(object):
    condition = "new"
    def __init__(self, model, color, mpg):
        self.model = model
        self.color = color
        self.mpg   = mpg
        
    def display_car(self):
        print "This is a " + self.color + " " + self.model + " with " + str(self.mpg) + " MPG."

my_car = Car("DeLorean", "silver", 88)
print my_car.display_car()

# Console output
This is a silver DeLorean with 88 MPG.
____________________________

# Example of method to change value of attribute

class Car(object):
    condition = "new"
    def __init__(self, model, color, mpg):
        self.model = model
        self.color = color
        self.mpg   = mpg
        
    def display_car(self):
        print "This is a " + self.color + " " + self.model + " with " + str(self.mpg) + " MPG."

    def drive_car(self):
        self.condition = "used"

my_car = Car("DeLorean", "silver", 88)
print my_car.condition
my_car.drive_car()
print my_car.condition

# Console output:
new
used
____________________________

# Example of derived class with an additional attribute

class Car(object):
    condition = "new"
    def __init__(self, model, color, mpg):
        self.model = model
        self.color = color
        self.mpg   = mpg
        
    def display_car(self):
        print "This is a " + self.color + " " + self.model + " with " + str(self.mpg) + " MPG."

    def drive_car(self):
        self.condition = "used"

class ElectricCar(Car):
    def __init__(self, model, color, mpg, battery_type):
        self.model = model
        self.color = color
        self.mpg = mpg
        self.battery_type = battery_type

my_car = ElectricCar("Nova", "purple", 800, "molten salt")
____________________________

# Example of derived class that uses method to change attribute value of superclass

class Car(object):
    condition = "new"
    def __init__(self, model, color, mpg):
        self.model = model
        self.color = color
        self.mpg   = mpg
        
    def display_car(self):
        print "This is a " + self.color + " " + self.model + " with " + str(self.mpg) + " MPG."

    def drive_car(self):
        self.condition = "used"

class ElectricCar(Car):
    def __init__(self, model, color, mpg, battery_type):
        self.model = model
        self.color = color
        self.mpg = mpg
        self.battery_type = battery_type

    def drive_car(self):
        self.condition = "like new"

my_car = ElectricCar("Nova", "purple", 800, "molten salt")
print my_car.condition
my_car.drive_car()
print my_car.condition

# Console output:
new
like new
____________________________

# Example class that overrides the built-in __repr__ method to control how to represent an object of our class (such as when printed)

class Point3D(object):
    def __init__(self, x, y, z):
        self.x = x
        self.y = y
        self.z = z
    
    def __repr__(self):
        return "(%d, %d, %d)" % (self.x, self.y, self.z)
        
my_point = Point3D(1, 2, 3)
print my_point

# Console output:
(1, 2, 3)
____________________________
____________________________
____________________________

File Input/Output (I/O)
____________________________
____________________________
____________________________

# script.py

my_list = [i**2 for i in range(1,11)]
# Generates a list of squares of the numbers 1 - 10

f = open("output.txt", "w")

for item in my_list:
    f.write(str(item) + "\n")

f.close()

# output.txt

1
4
9
16
25
36
49
64
81
100
____________________________

# Open a file in write mode

f = open("output.txt", "w")
____________________________

# Open a file in read + write mode

my_file = open("output.txt", "r+")
____________________________

# Open a file in read+write mode 

my_list = [i**2 for i in range(1,11)]

my_file = open("output.txt", "r+")

# Add your code below!
for i in my_list:
    my_file.write(str(i) + "\n")

my_file.close()
____________________________

# Read from a file

print my_file.read()
____________________________

# Opening, reading the contents of a file, then closing the file

# script.py

my_file = open("output.txt", "r")

print my_file.read()

my_file.close()

# output.txt (and script output)
1
4
9
16
25
36
49
64
81
100
____________________________

# Using .readline() to read a file line by line

# script.py

my_file = open("text.txt", "r")

print my_file.readline()
print my_file.readline()
print my_file.readline()

my_file.close()

# output.txt (and script output)
____________________________

# Workaround for previous - have to create & populate file to read from

my_file = open("text.txt", "w")

my_file.write("I'm the first line of the file!" + "\n")
my_file.write("I'm the second line." + "\n")
my_file.write("Third line here, boss." + "\n")

my_file.close()

my_file = open("text.txt", "r")

print my_file.readline()
print my_file.readline()
print my_file.readline()

my_file.close()

# Console output:
I'm the first line of the file!

I'm the second line.

Third line here, boss.
____________________________

# ALWAYS remember to close files!

# Open the file for reading
read_file = open("text.txt", "r")

# Use a second file handler to open the file for writing
write_file = open("text.txt", "w")
# Write to the file
write_file.write("Not closing files is VERY BAD.")

write_file.close()

# Try to read from the file
print read_file.read()
read_file.close()
____________________________

# Automatically close files using "with" and "as" to invoke __exit__() method
#  Special built-in methods: __enter__() and __exit__()
#  When a file object's __exit__() method is invoked, the file is automatically closed

with open("file", "mode") as variable:
    # Read or write to the file	
____________________________

# Example of using "with" and "as" to open and write to file
#  and automatically close the file after writing to it

with open("text.txt", "w") as textfile:
	textfile.write("Success!")
____________________________

# Another example of opening, writing to and automatically closing a file

with open("text.txt", "w") as my_file:
    my_file.write("Something!")
____________________________

# Check to see if a file object is still open and if so, close it
#  Check to see if a file is closed using .closed
#  Returns False when file is open

with open("text.txt", "w") as my_file:
    my_file.write("Something!")
    
if my_file.closed is False:
    my_file.close()

print my_file.closed
____________________________

2016-12-27 - course completed