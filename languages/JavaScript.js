LambdaSchool JavaScript mini-bootcampe
____________________________
____________________________
____________________________

Intro to JavaScript
____________________________
____________________________
____________________________

Ben Nelson
JavaScript fundamentals

HTML = brick, frame | CSS = paint, decorations | JavaScript = electricity and other utilities

Homework
https://github.com/SunJieMing/js-minicamp-homework-1

1) Click on Clone or Download button
2) Download the ZIP and extract
3) Exercises in the exercises.js file
4) Can look in tests/ directory and insice package.json file, but do not change anything

To have Node.js install everything necessary for the package.json, run:
npm install

To lint the code and run all of the tests, type:
npm test

Before doing anything, will have 25 broken tests.
Just write code inside the functions, for example:

function multiplyByTen(num) {
  //return num after multiplying it by ten
  //code here
}

Completed example:

function multiplyByTen(num) {
  var product = num * 10;
  return product;
  //return num after multiplying it by ten
  //code here
}

Then run the tests again via "npm test" to verify code is working properly.
____________________________

// declaring variables

var name = 'John';
var favoriteNumber = 7;
var likesPizza = true;

// run via PowerShell via:  node .\lesson_01_scratch_01.js
console.log(name);
console.log(favoriteNumber);
console.log(likesPizza);

// Math operations

var age = 30;
age = age + 10;

var math = 30 * 10 +5;
var remainder = 20 % 7;

console.log(age);
console.log(math);
console.log(remainder);

// Strings

var firstName = 'John';
var lastName = 'Verbosky';
var fullName = firstName + ' ' + lastName;

console.log(fullName);

// console is a global object - it available everywhere
// console has a .log method
// another is Math

var twoCubed = Math.pow(2, 3);  // 2 to the power of 3
var roundedValue = Math.round(5.5);  // rounds up or down
var ceiling = Math.ceil(5.001);  // always rounds up
var floor = Math.floor(5.999);  // always rounds down

console.log(twoCubed);
console.log(roundedValue);
console.log(ceiling);
console.log(floor);

// string methods
var greeting = 'Hello World!';
var greetingLength = greeting.length;  // .length method for strings, gives string length

console.log(greetingLength);
____________________________

// functions
// function names should be an action

// basic function definition: function sayHi(){}

function sayHi() {
  console.log('Hello!');
}

console.log('hi!');  // program runs code in order, so this appears first

// invoking (running) the function
sayHi();
____________________________

// arguments

function sayHi(name) {
  var greeting = 'Hello ' + name;
  console.log(greeting);
}

// invoking the function with arguments
sayHi('John');
sayHi('Austin');
sayHi('Ryan');
sayHi('Bob');
sayHi('George');

// passing the argument as a variable
var name1 = 'Luma';

sayHi(name1);
____________________________

function addTwoNumbers(x, y) {
  // console.log(x, y);
  var sum = x +y;
  return sum;
}

var value = addTwoNumbers(2, 3);

console.log(value);

// variables live within the functions they are defined in
// console.log(sum) called here outside of the function won't work
____________________________

// control flow (conditional) within a function

function canDrive(age) {
  if (age === 16) {
    return true;  // whenever a function hits a return statement, it exits
  }
  return false;
}

var myAge = 50;
var iCanDrive = canDrive(myAge);
console.log(iCanDrive);

var hisAge = 10;
var heCanDrive = canDrive(hisAge);
console.log(heCanDrive);

// change >= to comparision variable
// exactly equal:  ===

var herAge = 16;
var sheCanDrive = canDrive(herAge);
console.log(sheCanDrive);
____________________________

Lesson 1 Exercises
____________________________

function multiplyByTen(num) {
  //return num after multiplying it by ten
  //code here
  return num *= 10;
}

function subtractFive(num) {
  //return num after subtracting five
  //code here
  return num -= 5;
}

function areSameLength(str1, str2) {
  //return true if the two strings have the same length
  //otherwise return false
  //code here
  if (str1.length === str2.length) {
    return true;
  }
  return false;
}

function areEqual(x, y) {
  //return true if x and y are the same
  //otherwise return false
  //code here
  if (x === y) {
    return true;
  }
  return false;
}

function lessThanNinety(num) {
  //return true if num is less than ninety
  //otherwise return false
  //code here
  if (num < 90) {
    return true;
  }
  return false;
}

function greaterThanFifty(num) {
  //return true if num is greater than fifty
  //otherwise return false
  //code here
  if (num > 50) {
    return true;
  }
  return false;
}

function add(x, y) {
  //add x and y together and return the value
  //code here
  var sum = x + y;
  return sum;
}

function subtract(x, y) {
  //subtract y from x and return the value
  //code here
  var difference = x - y;
  return difference;
}

function divide(x, y) {
  //divide x by y and return the value
  //code here
  var quotient = x / y;
  return quotient;
}

function multiply(x, y) {
  //multiply x by y and return the value
  //code here
  var product = x * y;
  return product;
}

function getRemainder(x, y) {
  //return the remainder from dividing x by y
  //code here
  var remainder = x % y;
  return remainder;
}

function isEven(num) {
  //return true if num is even
  //otherwise return false
  //code here
  if (num % 2 === 0) {
    return true;
  }
  return false;
}

function isOdd(num) {
  //return true if num is false
  //otherwise return false
  //code here
  if (num % 2 === 1) {
    return true;
  }
  return false;
}

function square(num) {
  //square num and return the new value
  //code here
  var square = Math.pow(num, 2);
  return square;
}

function cube(num) {
  //cube num and return the new value
  //code here
  var cube = Math.pow(num, 3);
  return cube;
}

function raiseToPower(num, exponent) {
  //raise num to whatever power is passed in as exponent
  //code here
  var raised = Math.pow(num, exponent);
  return raised;
}

function roundNumber(num) {
  //round num and return it
  //code here
  var rounded = Math.round(num);
  return rounded;
}

function roundUp(num) {
  //round num up and return it
  //code here
  var roundUp = Math.ceil(num);
  return roundUp;
}

function addExclamationPoint(str) {
  //add an exclamation point to the end of str and return the new string
  //'hello world' -> 'hello world!'
  //code here
  var concat = str + '!';
  return concat;
}

function combineNames(firstName, lastName) {
  //return firstName and lastName combined as one string and separated by a space.
  //'Lambda', 'School' -> 'Lambda School'
  //code here
  var fullName = firstName + ' ' + lastName;
  return fullName;
}

function getGreeting(name) {
  //Take the name string and concatenate other strings onto it so it takes the following form:
  //'Sam' -> 'Hello Sam!'
  //code here
  var greeting = 'Hello ' + name + '!';
  return greeting;
}

//If you can't remember these area formulas then head over to Google or look at the test code.

function getRectangleArea(length, width) {
  //return the area of the rectangle by using length and width
  //code here
  var rectangleArea = length * width;
  return rectangleArea;
}

function getTriangleArea(base, height) {
  //return the area of the triangle by using base and height
  //code here
  var triangleArea = (base * height) / 2;
  return triangleArea;
}

function getCircleArea(radius) {
  //return the rounded area of the circle given the radius
  //code here
  var circleArea = Math.round(Math.pow(radius, 2) * Math.PI);
  return circleArea;
}

function getRectangularPrismVolume(length, width, height) {
  //return the area of the 3D rectangular prism given the length, width, and height
  //code here
  var rectangularPrismVolume = length * width * height;
  return rectangularPrismVolume;
}
____________________________
____________________________
____________________________

Control Flow
____________________________
____________________________
____________________________

GitHub Workflow

1) Go to Lambda project and click Fork link to add to my GitHub account

2) Go to repository in my GitHub account and get link from Clone button

3) Run command in PowerShell (right-click in PowerShell to paste):
     git clone <link>

4) Run command in PowerShell to setup tests:
    npm install

5) Update exercises.js as directed

6) Run command to verify all tests are passing:
    npm test

7) Run git commands:
    git add .
    git commit -m "logic added to exercises.js, all tests passing"
    git push origin master

Tips:
- An if statement is like a fork in the road.
- Double equals (==) is a mistake in JavaScript - always use triple equals (===) for comparison.
- Generally, all items in an array are the same type (all strings, all integers, etc.)
- Use the "camel case" naming convention for variables, plural name for arrays.
____________________________

// Basic if statement

if (true) {

} else {

}

// Example if statement

// var food = 'Pizza';
var food = 'Escargot';

if (food === 'Pizza') {
  console.log('Yummy!');
} else {
  console.log('I would rather have pizza...');
}

// Adding another condition

var food = 'Steak';

if (food === 'Pizza') {
  console.log('Yummy!');
} else if (food === 'Steak') {
  console.log('Super yummy!');
} else {
  console.log('I would rather have pizza...');
}
____________________________

// chaining logic with boolean operators

// using the AND operator: &&

var age = 16;
var hasDriversLicense = false;

if (age >= 16 && hasDriversLicense) {
  console.log('You can drive!');
} else {
  console.log('Call your mom to pick you up.');
}

// using the OR operator: ||

var age = 14;
var hasDriversLicense = true;

if (age >= 16 || hasDriversLicense) {
  console.log('You can drive!');
} else {
  console.log('Call your mom to pick you up.');
}

// using the not operator: !
// reverses the truthiness of the statement

var isDrunk = false;

if (!isDrunk) {
  console.log('You appear to be sober - you can drive!');
} else {
  console.log('Call a taxi.');
}
____________________________

// for loops - used 99% of the time

// print 'hi!' ten times

for (var i = 0; i < 10; i++) {
  console.log('hi!');
}

// var++ increments by 1

var x = 0;
x++;
x++;
x++;
console.log(x);  // 3

// print 1 - 10

for (var i = 1; i <= 10; i++) {
  console.log(i);
}
____________________________

// arrays

var favoriteFoods = ['Steak', 'Mango', 'Curry', 'Fried Rice'];

console.log(favoriteFoods);  // list the entire array
console.log(favoriteFoods.length);  // list the number of items in the array
console.log(favoriteFoods[0]);  // access an individual item in the array by index
console.log(favoriteFoods[favoriteFoods.length - 1]); // list the last item in the array

// iterate through array to list all items in the array

for (var i = 0; i < favoriteFoods.length; i++) {
  console.log(favoriteFoods[i]);
}

// conditionally change array item based on value

for (var i = 0; i < favoriteFoods.length; i++) {
  if (favoriteFoods[i] === 'Mango') {
    favoriteFoods[i] = 'Pineapple';
  }
  console.log(favoriteFoods[i]);
}
____________________________

// adding and removing an item to an array

var favoriteFoods = ['Steak', 'Mango', 'Curry', 'Fried Rice'];

favoriteFoods.push('Ice Cream');  // push adds item to the end of the array
console.log(favoriteFoods);  // [ 'Steak', 'Mango', 'Curry', 'Fried Rice', 'Ice Cream' ]
favoriteFoods.pop();  // removes the last item from the array
console.log(favoriteFoods)  // [ 'Steak', 'Mango', 'Curry', 'Fried Rice' ]
____________________________

Lesson 2 Exercises
____________________________

function getBiggest(x, y) {
  //x and y are integers.  Return the larger integer
  //if they are the same return either one
  if (x > y) {
    return x;
  } else if (y > x) {
    return y;
  } else if (x === y) {
    return x;
  }
}

function greeting(language) {
  //return a greeting for three different languages:
  //language: 'German' -> 'Guten Tag!'
  //language: 'English' -> 'Hello!'
  //language: 'Spanish' -> 'Hola!'
  //if language is undefined return 'Hello!'
  if (language === 'German') {
    return 'Guten Tag!';
  } else if (language === 'English') {
    return 'Hello!';
  } else if (language === 'Spanish') {
    return 'Hola!';
  } else {
    return 'Hello!';
  }
}

function isTenOrFive(num) {
  //return true if num is 10 or 5
  //otherwise return false
  if (num === 5 || num === 10) {
    return true;
  }
  return false;
}

function isInRange(num) {
  //return true if num is less than 50 and greater than 20
  if (num > 20 && num < 50) {
    return true;
  }
  return false;
}

function isInteger(num) {
  //return true if num is an integer
  //0.8 -> false
  //1 -> true
  //-10 -> true
  //otherwise return false
  //hint: you can solve this using Math.floor
  num = Math.abs(num);
  if (num - Math.floor(num) === 0) {
    return true;
  }
  return false;
}

function fizzBuzz(num) {
  //if num is divisible by 3 return 'fizz'
  //if num is divisible by 5 return 'buzz'
  //if num is divisible by 3 & 5 return 'fizzbuzz'
  //otherwise return num
  if (num % 3 === 0 && num % 5 === 0) {
    return 'fizzbuzz';
  } else if (num % 3 === 0) {
    return 'fizz';
  } else if (num % 5 === 0) {
    return 'buzz';
  } else {
    return num;
  }
}

function isPrime(num) {
  //return true if num is prime.
  //otherwise return false
  //hint: a prime number is only evenly divisible by itself and 1
  //hint2: you can solve this using a for loop
  //note: 0 and 1 are NOT considered prime numbers
  var evenlyDivisible = 0;
  for (var i = 1; i <= num; i++) {
    if (num % i === 0) {
      evenlyDivisible += 1;
    }
  }
  if (evenlyDivisible === 2) {
    return true;
  }
  return false;
}

function returnFirst(arr) {
  //return the first item from the array
  return arr[0];
}

function returnLast(arr) {
  //return the last item of the array
  return arr[arr.length - 1];
}

function getArrayLength(arr) {
  //return the length of the array
  return arr.length;
}

function incrementByOne(arr) {
  //arr is an array of integers
  //increase each integer by one
  //return the array
  for (var i = 0; i < arr.length; i++) {
    arr[i] = arr[i] + 1;
  }
  return arr;
}

function addItemToArray(arr, item) {
  //add the item to the end of the array
  //return the array
  arr.push(item);
  return arr;
}

function addItemToFront(arr, item) {
  //add the item to the front of the array
  //return the array
  //hint: use the array method .unshift
  arr.unshift(item);
  return arr;
}

function wordsToSentence(words) {
  //words is an array of strings
  //return a string that is all of the words concatenated together
  //spaces need to be between each word
  //example: ['Hello', 'world!'] -> 'Hello world!'
  var sentence = words.join(' ');
  return sentence;
}

function contains(arr, item) {
  //check to see if item is inside of arr
  //return true if it is, otherwise return false
  for (var i = 0; i < arr.length; i++) {
    if (arr[i] === item) {
      return true;
    }
  }
  return false;
}

function addNumbers(numbers) {
  //numbers is an array of integers.
  //add all of the integers and return the value
  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  return sum;
}

function averageTestScore(testScores) {
  //testScores is an array.  Iterate over testScores and compute the average.
  //return the average
  var sum = 0;
  for (var i = 0; i < testScores.length; i++) {
    sum += testScores[i];
  }
  return sum / testScores.length;
}

function largestNumber(numbers) {
  //numbers is an array of integers
  //return the largest integer
  var largest = 0;
  for (var i = 0; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  return largest;
}
____________________________
____________________________
____________________________

JavaScript Objects
____________________________
____________________________
____________________________

JavaScript Objects

var x = 5;
var likesIceCream = true;

// for arrays can use different types, but best practice is to use the same types
var arr = ['hi', 'there', 5, true, null];

Objects are the same as hashes in Ruby and dictionaries in Python.

Can contain different types and functions (called methods when in an object):

var user = {
  username: 'jverbosky',  // string
  password: 'password',
  age: 41,  // numbers
  likesIceCream: true,  // boolean
  sayHi: function() {  //function (method)
    console.log('hello!');
  }
};

Objects allow you to group a number of items together.

Objects (and arrays) are never copied in memory unless you explicitly copy them.
So changes (adding/removing elements) is done to the original object in memory.
Other variables (such as strings) are frequently copied in memory when referenced in different places.
____________________________

Linter Overview

In JavaScript, if you leave off a semi-colon the code will still run and work, but it's messy and not best practice.

A linter can advise on these types of convention "typos" - extra rules that enforce a cleaner coding style.

Other examples:
- variables are defined but never used
- string defined using double quotes

Linters are used everywhere and using them is considered a best practice.

____________________________

var user = {
  username: 'jverbosky',
  password: 'password',
  age: 41,
  likesIceCream: true,
  sayHi: function() {      // method, which is also an anonymous function (no name)
    console.log('hello!');
  }
};

console.log(user.username);  // jverbosky
console.log(user.age);  // 41

user.age++;  // increment age by 1

console.log(user.age);  // 42

console.log(user);  // prints out the entire object:

// { username: 'jverbosky',
//   password: 'password',
//   age: 42,
//   likesIceCream: true,
//   sayHi: [Function: sayHi] }

user.sayHi();  // hello!

// adding a property to the object using dot notation (last item - similar to .push for arrays)
// looks for the "isPremium" key, doesn't find one, so it is added to the object
user.isPremium = true;

console.log(user);  // now includes "isPremium: true"
____________________________

// object using symbol notation
// properties (keys) are actually strings using this format
var coordinates = {
  100:'100',
  200:'350'
};

console.log(coordinates);  // { '100': '100', '200': '350' }
console.log(coordinates[100]); // have to use brackets to access

var squares = {};  // initialize a new empty object

// adding using bracket notation (object[property]) instead of dot notation (object.property)
// be aware that the properties (keys) will become strings with this format - no longer integers
// can't use math functions as-is
squares[2] = 4;
squares[5] = 5;

console.log(squares);  // { '2': 4, '5': 5 }  // note the properties are strings
____________________________

// using a function to add a property

var user = {
  username: 'jverbosky',
  password: 'password',
  age: 41,
  likesIceCream: true,
  sayHi: function() {      // method, which is also an anonymous function (no name)
    console.log('hello!');
  }
};

function addProperty(object, newProperty, newValue) {
  // if we use dot notation, the property will become 'newProperty' instead of 'livesInUS'
  // object.newProperty = newValue;  // will add 'newProperty: false' to the object
  // instead, use bracket notation to dynamically set the property name, so it becomes 'livesInUS'
  object[newProperty] = newValue;
}

addProperty(user, 'livesInUS', false);

console.log(user);

// output with dot notation in addProperty():
// { username: 'jverbosky',
//   password: 'password',
//   age: 41,
//   likesIceCream: true,
//   sayHi: [Function: sayHi],
//   newProperty: false }

// output with bracket notation in addProperty():
// { username: 'jverbosky',
//   password: 'password',
//   age: 41,
//   likesIceCream: true,
//   sayHi: [Function: sayHi],
//   livesInUS: false }
____________________________

// removing a property from an object

var user = {
  username: 'jverbosky',
  password: 'password',
  age: 41,
  likesIceCream: true,
  sayHi: function() {      // method, which is also an anonymous function (no name)
    console.log('hello!');
  }
};

delete user.likesIceCream;

console.log(user);

// { username: 'jverbosky',
//   password: 'password',
//   age: 41,
//   sayHi: [Function: sayHi] }
____________________________

// iterating over an object
// most of the time use dot notation to access values
// but if need to iterate, be sure to use bracket notation

var user = {
  username: 'jverbosky',
  password: 'password',
  age: 41,
  likesIceCream: true,
  sayHi: function() {
    console.log('hello!');
  }
};

// typically only use bracket notiation when you have a variable that has a property name on it
// before the code runs, you don't what that property name is going to be
// for example, to access the value for the 'username' key, can use:  user.username
// but if using a variable (ex: during iteration), then use bracket notation:  user[key]
for (var key in user) {
  console.log('>>>key', key);
  console.log('>>>value', user[key]);
}

// >>>key username
// >>>value jverbosky
// >>>key password
// >>>value password
// >>>key age
// >>>value 41
// >>>key likesIceCream
// >>>value true
// >>>key sayHi
// >>>value function () {
//     console.log('hello!');
//   }

// you can also use bracket notation with method names
// for example, instead of "console.log":

for (var key in user) {
  console['log']('>>>key', key);
  console['log']('>>>value', user[key]);
}

// you could also use a variable for 'log'

for (var key in user) {
  var log = 'log';
  console[log]('>>>key', key);
  console[log]('>>>value', user[key]);
}
____________________________

// accessing object data via a method within the same object that is part of an array of objects
// example - anonymous function that accesses the username proprerty of the same object
// this > references the object that it is a part of

var users = [
{
  username: 'jverbosky',
  password: 'password',
  age: 41,
  likesIceCream: true,
  sayHi: function() {
    var sentence = 'My username is: ' + this.username;  // this references the users[0] object
    console.log(sentence);
  }
},
{}, // other user objects in the array
{},
{}
];

users[0].sayHi();
____________________________

// Review of creating an object

// Use this approach if you're creating your object
// and need to add properties to it later using using functions, etc.
var user = {};
user.username = 'John';
user.email = 'jverbosk@email.com';

// Use this approach if you're defining an object at the top
var user = {
  username: 'John',
  email: 'jverbosk@email.com'
};

// Always use dot notation over bracket notation unless you can't use dot notation
// For example, when using a variable to access/set values
____________________________

// other objects that we've seen

console

// since console is an object, can list all methods (functions) like this:

console.log(console)

// output for console object:

Console {
  log: [Function: bound ],
  info: [Function: bound ],
  warn: [Function: bound ],
  error: [Function: bound ],
  dir: [Function: bound ],
  time: [Function: bound ],
  timeEnd: [Function: bound ],
  trace: [Function: bound trace],
  assert: [Function: bound ],
  Console: [Function: Console] }

// we can also iterate over all of the properties in the Console object

for (var key in console) {
  console.log('>>>key', key);
  console.log('>>>value', console[key]);
}

// output from iterating over console object:

>>>key log
>>>value function () { [native code] }
>>>key info
>>>value function () { [native code] }
>>>key warn
>>>value function () { [native code] }
>>>key error
>>>value function () { [native code] }
>>>key dir
>>>value function () { [native code] }
>>>key time
>>>value function () { [native code] }
>>>key timeEnd
>>>value function () { [native code] }
>>>key trace
>>>value function () { [native code] }
>>>key assert
>>>value function () { [native code] }
>>>key Console
>>>value function Console(stdout, stderr) {
  if (!(this instanceof Console)) {
    return new Console(stdout, stderr);
  }
  if (!stdout || typeof stdout.write !== 'function') {
    throw new TypeError('Console expects a writable stream instance');
  }
  if (!stderr) {
    stderr = stdout;
  } else if (typeof stderr.write !== 'function') {
    throw new TypeError('Console expects writable stream instances');
  }

  var prop = {
    writable: true,
    enumerable: false,
    configurable: true
  };
  prop.value = stdout;
  Object.defineProperty(this, '_stdout', prop);
  prop.value = stderr;
  Object.defineProperty(this, '_stderr', prop);
  prop.value = new Map();
  Object.defineProperty(this, '_times', prop);

  // bind the prototype functions to this Console instance
  var keys = Object.keys(Console.prototype);
  for (var v = 0; v < keys.length; v++) {
    var k = keys[v];
    this[k] = this[k].bind(this);
  }
}
____________________________

// some objects are not enumerable (typically built-in objects)

Math

console.log(Math)  // {}

// use Object.getOwnPropertyNames() for an object, enumerable or not (like Math)
console.log(Object.getOwnPropertyNames(Math));

// [ 'acos', 'asin', 'atan', 'ceil', 'clz32', 'floor', 'fround', 'imul', 'max', 'min', 'round',
//   'sqrt', 'trunc', 'E', 'LN10', 'LN2', 'LOG2E', 'LOG10E', 'PI', 'SQRT1_2', 'SQRT2', 'random',
//   'abs', 'exp', 'log', 'atan2', 'pow', 'sign', 'asinh', 'acosh', 'atanh', 'hypot', 'cbrt',
//   'cos', 'sin', 'tan', 'sinh', 'cosh', 'tanh', 'log10', 'log2', 'log1p', 'expm1' ]

// use filter() to obtain only the methods
console.log(Object.getOwnPropertyNames(Math).filter(function (p) {
  return typeof Math[p] === 'function';
}));

// [ 'acos', 'asin', 'atan', 'ceil', 'clz32', 'floor', 'fround', 'imul', 'max', 'min', 'round',
//   'sqrt', 'trunc', 'random', 'abs', 'exp', 'log', 'atan2', 'pow', 'sign', 'asinh', 'acosh',
//   'atanh', 'hypot', 'cbrt', 'cos', 'sin', 'tan', 'sinh', 'cosh', 'tanh', 'log10', 'log2',
//   'log1p', 'expm1' ]

// can then access the code for a method

console.log(Math.max) // [Function: max]
____________________________

Lesson 3 Exercises
____________________________

function makeCat(name, age) {
  //create a new object with a name property with the value set to the name argument
  //add an age property to the object with the value set to the age argument
  //add a method called meow that returns the string 'Meow!'
  //return the object
  var new_object = { name: name };
  new_object.age = age;
  new_object.meow =  function() { return 'Meow!'; };
  return new_object;
}

function addProperty(object, property) {
  //add the property to the object with a value of null
  //return the object
  //note: the property name is NOT 'property'.  The name is the value of the argument called property (a string)
  object[property] = null;
  return object;
}

function invokeMethod(object, method) {
  //method is a string that contains the name of a method on the object
  //invoke this method
  //nothing needs to be returned
  return object[method]();  // to invoke a method, need to use parentheses
}

function multiplyMysteryNumberByFive(mysteryNumberObject) {
  //mysteryNumberObject has a property called mysteryNumber
  //multiply the mysteryNumber property by 5 and return the product
  return mysteryNumberObject.mysteryNumber * 5;
}

function deleteProperty(object, property) {
  //remove the property from the object
  //return the object
  delete object[property];
  return object;
}

function newUser(name, email, password) {
  //create a new object with properties matching the arguments passed in.
  //return the new object
  var newObject = {};
  newObject.name = name;
  newObject.email = email;
  newObject.password = password;
  return newObject;
}

function hasEmail(user) {
  //return true if the user has a value for the property 'email'
  //otherwise return false
  if (user.email) {
    return true;
  }
  return false;
}

function hasProperty(object, property) {
  //return true if the object has the value of the property argument
  //property is a string
  //otherwise return false
  if (property in object) {
    return true;
  }
  return false;
}

function verifyPassword(user, password) {
  //check to see if the provided password matches the password property on the user object
  //return true if they match
  //otherwise return false
  if (user.password === password) {
    return true;
  }
  return false;
}

function updatePassword(user, newPassword) {
  //replace the existing password on the user object with the value of newPassword
  //return the object
  user.password = newPassword;
  return user;
}

function addFriend(user, newFriend) {
  //user has a property called friends that is an array
  //add newFriend to the end of the friends array
  //return the user object
  user.friends.push(newFriend);
  return user;
}

function setUsersToPremium(users) {
  //users is an array of user objects.
  //each user object has the property 'isPremium'
  //set each user's isPremium property to true
  //return the users array
  for (var i = 0; i < users.length; i++) {
    users[i].isPremium = true;
  }
  return users;
}

function sumUserPostLikes(user) {
  //user has an array property called 'posts'
  //posts is an array of post objects
  //each post object has an integer property called 'likes'
  //sum together the likes from all the post objects
  //return the sum
  var sum = 0;
  for (var i = 0; i < user.posts.length; i++ ) {
    sum += user.posts[i].likes;
  }
  return sum;
}

function addCalculateDiscountPriceMethod(storeItem) {
  //add a method to the storeItem object called 'calculateDiscountPrice'
  //this method should multiply the storeItem's 'price' and 'discountPercentage' to get the discount
  //the method then subtracts the discount from the price and returns the discounted price
  //example:
  //price -> 20
  //discountPercentage -> .2
  //discountPrice = 20 - (20 * .2)
  storeItem.calculateDiscountPrice = function() { var discountPrice = this.price - (this.price * this.discountPercentage); return discountPrice; };
  return storeItem;
}
____________________________

Exercise Research Notes
____________________________

//add a method to the storeItem object called 'calculateDiscountPrice'
//this method should multiply the storeItem's 'price' and 'discountPercentage' to get the discount
//the method then subtracts the discount from the price and returns the discounted price
//example:
//price -> 20
//discountPercentage -> .2
//discountPrice = 20 - (20 * .2)

var storeItem = {
  price: 20,
  discountPercentage: .2,
};

// storeItem.calculateDiscountPrice = function() { var discountPrice = this.price - (this.price * this.discountPercentage); console.log(discountPrice); };

// storeItem.calculateDiscountPrice();  // 16

storeItem.calculateDiscountPrice = function() { var discountPrice = this.price - (this.price * this.discountPercentage); return discountPrice; };
storeItem.calculateDiscountPrice();

console.log(storeItem.calculateDiscountPrice());
____________________________

// var user = {
//   'posts' = [
//       { 'likes' = 7 },
//       { 'likes' = 5 }
//     ],
//     [
//       { 'likes' = 12 },
//       { 'likes' = 3 }
//     ]
//   }

var object_1 = {};
object_1.likes = 12;
var object_2 = {};
object_2.likes = 3;
var object_3 = {};
object_3.likes = 8;
var object_4 = {};
object_4.likes = 4;

var posts = [];
posts.push(object_1)
posts.push(object_2)
posts.push(object_3)
posts.push(object_4)

var user = {}
user.posts = posts

console.log(user);  // { posts: [ { likes: 12 }, { likes: 3 }, { likes: 8 }, { likes: 4 } ] }

console.log(user.posts)

var sum = 0;
for (var i = 0; i < user.posts.length; i++ ) {
  console.log(user.posts[i].likes);
  sum += user.posts[i].likes;
}
console.log(sum);
____________________________
____________________________
____________________________

Advanced JavaScript Concepts
____________________________
____________________________
____________________________

Covering mid-level and senior-level JavaScript interview items

jsbin.com
codepen.com
jsfiddle.com
- different sites where you can test/run your Javascript and see the results
____________________________

// truthiness/falsiness
// every value can be interpreted as either being true or false

if (true) console.log('hi!'); // hi!
if (false) console.log('hi!'); // <nothing>
if (!false) console.log('hi!'); // hi!

if (0) console.log('hi!'); // <nothing>
if (1) console.log('hi!'); // hi!
if (10) console.log('hi!'); // hi!
if (-10) console.log('hi!'); // hi!

if ('') console.log('hi!'); // <nothing>
if ('something') console.log('hi!'); // hi!
if ('12345') console.log('hi!'); // hi!

if ([]) console.log('hi!');  // hi!
if ({}) console.log('hi!');  // hi!
if (function(){}) console.log('hi!');  // hi!

if (null) console.log('hi!'); // <nothing>
____________________________

// truthiness/falsiness uses
// if there isn't an argument, return error

// function myFunction(x, y) {
//   if (!x) return console.log('hi!');
//   if (!y) return 'error!';
// }

function myFunction(options) {
  if (!options.option1) console.log('hi!');
  if (!options.option2) console.log('no option 2');
}

myFunction({ option1: true }) // no option 2
____________________________

// passing in an unlimited number of arguments

// "arguments" is a pseudo-array
//  - doesn't have all of the array methods, but has length so can use in a loop

function sumNumbers() {
  var total = 0;
  for (var i = 0; i < arguments.length; i++) {
    total += arguments[i];
  }
  console.log(total);
}

sumNumbers(1, 2, 3, 4, 5, 6, 7, 8);  // 36
sumNumbers(10, 20); // 30
____________________________

// callback function

// in JavaScript, functions behave a lot like other values
// - can pass them as arguments to other functions
// - can fill an array with functions
// - can put them in objects as methods
// - can return them from functions

// a callback (or higher-order) function is a function
// that is passed to another function as an argument

var numbers = [1, 2, 3, 4, 5];

numbers.push(6);

// passing in a function to the .forEach method (which is another function)
// .forEach will then call the function for each item (num) in the array
// - this is the preferred (best) way to iterate over arrays
// - cleaner and more readable
numbers.forEach(function(num) {
  console.log(num);
});

// the second argument we can pass into the callback function is the index (i)
numbers.forEach(function(num, i) {
  console.log('index: ' + i + ', num: ' + num);
});
____________________________

// callback function example
// - cb is a reference to the function that is being passed in
// - cb provides parentheses to invoke function, so only function name is specified

function invokeCallback(cb) {
  cb();  // invoke callback function here - flexible for multiple functions
}

function sayHi() {
  console.log('hi!');
}

function sayNiHao() {
  console.log('ni hao!');
}

invokeCallback(sayHi);  // hi!
invokeCallback(sayNiHao); // ni hao!
____________________________

// callback function with .reduce to sum an array of numbers

// .reduce is like .forEach since it acts on every item that is passed in
// using the callback function

var numbers = [1, 2, 3, 4, 5];

var sum = numbers.reduce(function(runningTotal, num) {
  return runningTotal += num;
});

console.log(sum);  // 15
____________________________

// another callback function example using .map

// .map also iterates through array items
// outputs a new array based on the callback function's action on each item

var numbers = [1, 2, 3, 4, 5];

// var newNums = numbers.map(function(num) {
//   return 'hi';
// });

// console.log(newNums);  // [ 'hi', 'hi', 'hi', 'hi', 'hi' ]

var squares = numbers.map(function(num) {
  return num * num;
});

console.log(squares);  // [ 1, 4, 9, 16, 25 ]
____________________________

// constructors

// the constructor method is a special method for creating and initializing
// an object created with a class (capital name = Class)

// need to make user objects over and over again, and each user is unique
// pseudo-class instantiation - some differences from regular class instantiation

// in real-world application, each detail would go through validation checks
// username > check to see if it's already being used, format is OK, etc.
// password > would need to verify meets rules, need to salt and encrypt, etc.

function encryptPassword(password) {
  return 'asd0f9823oikj234sdkas';
}

function User(options) {  // use the options object to pass in all of the details for each user
  /* new Object() */
  this.username = options.username;
  this.password = encryptPassword(options.password);
  /* return Object */
}

var john = new User({  // using "new" causes the User function to behave differently (11, 14)
  username: 'jverbosky',
  password: 'I love JS!'
});

console.log(john);  // User { username: 'jverbosky', password: 'asd0f9823oikj234sdkas' }

var luma = new User({  // using "new" causes the User function to behave differently (11, 14)
  username: 'puff',
  password: '12345'
});

console.log(luma);  // User { username: 'puff', password: 'asd0f9823oikj234sdkas' }
____________________________

// using a constructor to add objects to an array

function Cat(options) {
  this.name = options.name;
  this.age = options.age;
}

cats = [];

cats.push(new Cat({
  name: 'Snowball II',
  age: 5
}));

cats.push(new Cat({
  name: 'Fluffy',
  age: 3
}));

cats.push(new Cat({
  name: 'Midnight',
  age: 13
}));

console.log(cats);
// [ Cat { name: 'Snowball II', age: 5 },
//   Cat { name: 'Fluffy', age: 3 },
//   Cat { name: 'Midnight', age: 13 } ]

// accessing the first Cat object
console.log(cats[0].name + " is " + cats[0].age + " years old.");
// Snowball II is 5 years old.

// iterating through all Cat objects
cats.forEach(function(cat) {
  console.log(cat.name + " is " + cat.age + " years old.");
});
// Snowball II is 5 years old.
// Fluffy is 3 years old.
// Midnight is 13 years old.
____________________________

// using a constructor to create an object and calling a function in the object
// function in the object can access other items in the object via "this.____"

function Cat(options) {
  this.name = options.name;
  this.age = options.age;
  this.meow = function() {
    console.log('Meow! My name is ' + this.name + '.');
  }
}

var snowballII = new Cat({
  name: 'Snowball II',
  age: 5
});

var snowballIII = new Cat({
  name: 'Snowball III',
  age: 1
});

console.log(snowballII);  // Cat { name: 'Snowball II', age: 5, meow: [Function] }
console.log(snowballIII);  // Cat { name: 'Snowball III', age: 1, meow: [Function] }

snowballII.meow();  // Meow! My name is Snowball II.
snowballIII.meow();  // Meow! My name is Snowball III.
____________________________

// best practice is to use a constructor prototype to hold functions
// this way we won't always run the function for each object
// - can hit memory hard when 1,000s+ of objects
// all of the objects can access a constructor prototype
// - they are aware of it, but don't use it by default

function Cat(options) {
  this.name = options.name;
  this.age = options.age;
}

// with a prototype there is one function attached to the Cat constructor that all of the Cat
// objects can use, instead of adding the function to all of the Cat objects themselves
// - prototype = same value/function for all objects
// - object properties = different values for each object (i.e. this.name, this.age)
Cat.prototype.meow = function() {
  console.log('Meow! My name is ' + this.name + '.');
};

var snowballII = new Cat({
  name: 'Snowball II',
  age: 5
});

var snowballIII = new Cat({
  name: 'Snowball III',
  age: 1
});

// notice the Cat objects no longer have the function listed
console.log(snowballII);  // Cat { name: 'Snowball II', age: 5 }
console.log(snowballIII);  // Cat { name: 'Snowball III', age: 1 }

// but they can still access the .meow function via the prototype
// - when the function is called, it checks the Cat object first to see if it has the function
// - if the Cat object doesn't have the function, it then checks the prototype for the function
snowballII.meow();  // Meow! My name is Snowball II.
snowballIII.meow();  // Meow! My name is Snowball III.
____________________________

// constructor prototype functions
// - this is how methods are attached to array and string objects in JavaScript
// - the methods are attached to the prototype for each object

Array.prototype.sayHi = function() {
  console.log('I\'m on the array!');
}

var array = [1, 2, 3];

console.log(array.length);  // 3
array.sayHi();  // I'm on the array!
____________________________

// functions can also return other (nested) functions

function outer() {
  return function() {
    console.log('hi there!');
  };
}

// outer() simplifies down to this:
//   var inner = function() { console.log('hi there!') };
var inner = outer();

// then we can invoke it
inner();  // hi there!

// invoking a function assigned to a variable requires parentheses
var dog = function() { console.log('woof!')};  // note that dog syntax color is green (function)
console.log(dog);  // [Function: dog]
dog();  //  woof!
____________________________

// function scope
// - inner function can see out, but outer function can't see in (like a two-way mirror)

var x = 5;  // outside the function - can see x, but not y or z - can only call outer()

function outer() {  // outer() function - can see x & y, but not z - can only call inner()
  x;
  var y = 10;
  function inner() {  // inner() function - can see x, y & z
    x;
    y;
    var z = 15;
    return '; inner: ' + x + ', ' + y + ', ' + z;
  }
  return 'outer: ' + x + ', ' + y + inner();
}

console.log(x);  // 5
console.log(outer());  // outer: 5, 10; inner: 5, 10, 15
____________________________

// closure
// a closure is an inner function that has access to the outer (enclosing) function's variables
// - inner function starts looking inside and works its way out until it finds a match
// - closure has three scope chains:
//   its own scope, the outer function's variables and global variables
// a closure remembers the scope of the function that it was returned from (where it's defined)

var x = 20;  // variable in global scope

function outer1() {
  var x = 10;  // variable in outer function's scope
  return function() {
    var x = 5;  // starts here - finds variable in its own scope and returns it
    console.log(x);
  };
}

var inner1 = outer1();
inner1();  // 5

//////////////////////////

var x = 20;

function outer2() {
  var x = 10;  // checks outer function's scope next - finds variable and returns it
  return function() {  // starts in its own scope - no match
    console.log(x);
  };
}

var inner2 = outer2();
inner2();  // 10

//////////////////////////

var x = 20;  // checks global scope last - finds variable and returns it

function outer3() {  // checks outer function's scope next - no match
  return function() {  // starts in its own scope - no match
    console.log(x);
  };
}

var inner3 = outer3();
inner3();  // 20
____________________________

// another closure example (explained)
// - callback inside a closure inside a function

function limitFunctionCallCount(cb) {
  return function() {
    cb();
  };
}

function sayHi() {
  console.log('hi!');
}

var newSayHi = limitFunctionCallCount(sayHi);

newSayHi();  // hi!

console.log(sayHi);  // [Function: sayHi]
console.log(newSayHi);  // [Function]  >>> anonymous closure function

/////////////////////////////////////////////////////////////////
/////Step 1 - limitFunctionCallCount argument is replaced////////
/////////////////////////////////////////////////////////////////

function limitFunctionCallCountEx1(cb) {
  return function() {
    cb();
  };
}

// function sayHiEx1() {
//   console.log('hey!');
// }

var newSayHiEx1 = limitFunctionCallCountEx1( function sayHiEx1() { console.log('hey!'); } );

newSayHiEx1();  // hey!

/////////////////////////////////////////////////////////////////////////////////////
/////Step 2 - cb resolves to sayHiEx(), newSayHi resolves to closure function////////
/////////////////////////////////////////////////////////////////////////////////////

// function limitFunctionCallCountEx2(cb) {
//   return function() {
//     cb();
//   };
// }

// function sayHiEx2() {
//   console.log('hello!');
// }

var cb = function sayHiEx2() { console.log('hello!'); };  // cb argument resolves to sayHiEx2()
var newSayHiEx2 = function() { cb(); };  // limitFunctionCallCountEx returns the closure function

newSayHiEx2();  // hello!

/////////////////////////////////////////////////////////////////////////////////////////
/////Step 3 - closure's cb() resolves via limitFUnctionCallCount's argument value////////
/////////////////////////////////////////////////////////////////////////////////////////

// function limitFunctionCallCountEx3(cb) {
//   return function() {
//     cb();
//   };
// }

// function sayHiEx3() {
//   console.log('howdy!');
// }

// cb() resolves to cb value and is invoked
// - note the parentheses around the inner sayHiEx3 function
//   and the subsequent invoking parentheses before the last brace
// var cb = function sayHiEx2() { console.log('hello!'); };
var newSayHiEx3 = function() { (function sayHiEx3() { console.log('howdy!'); })(); };

newSayHiEx3();  // howdy!

/////////////////////////////////////////////////////////////////////////////////////////
____________________________

// another closure example
// - callback inside a closure inside a function
// - including a limit for how many times the callback will run

function limitFunctionCallCount(cb, limit) {
  var callCount = 0;
  return function() {
    if (callCount >= limit) return;
    callCount++;
    cb();
  };
}

function sayHi() {
  console.log('hi!');
}

var newSayHi = limitFunctionCallCount(sayHi, 5);

newSayHi();  // hi!
newSayHi();  // hi!
newSayHi();  // hi!
newSayHi();  // hi!
newSayHi();  // hi!
newSayHi();  // nothing from this point on
newSayHi();
newSayHi();
____________________________

// recursion
// - essentially, another way of iterating (looping)
// - can be much simpler to use recursion than a for loop
// - need to have a base case at the top of the function to define when to stop
// - recursion creates more and more copies of the function and increases the call stack
// - anything that can be done via recursion can be done via iteration

function nFibonacci(n) {
  if (n < 3) return 1;  // base case
  return nFibonacci(n - 2) + nFibonacci(n - 1);
}

result = nFibonacci(1)

console.log(result);  // 1
console.log(nFibonacci(2));  // 1
console.log(nFibonacci(3));  // 2
console.log(nFibonacci(4));  // 3
console.log(nFibonacci(5));  // 5
console.log(nFibonacci(6));  // 8
console.log(nFibonacci(7));  // 13
console.log(nFibonacci(8));  // 21

// each number is the sum of the two that preceed it

////////Fibonacci Explained//////////////////
// basically, via recursion, a number breaks down to a zero or a one
// all of the ones are then added up to create the Fibonacci number:
// fibo(4) =   fibo(3)                       +  fibo(2)
//         =  (fibo(2)            + fibo(1)) + (fibo(1) + fibo(0))
//         = ((fibo(1) + fibo(0)) +    1   ) + (   1    +    0   )
//         = (( 1      +    0   ) +    1   ) + (   1    +    0   )
// fibo(4) = 3

var tally = 0

function Fibonacci(n) {
  if (n < 3) {
    tally += 1
  } else {
    if (Fibonacci(n - 2) === 1 && Fibonacci(n - 1) === 1) {
      tally += 1;
    } else if (Fibonacci(n - 1) === 1 && Fibonacci(n - 1) == 0) {
      tally += 1;
    }
  }
}

Fibonacci(9);  // 34
// Fibonacci(10);  // 55 - verified via: http://www.numberempire.com/fibonaccinumbers.php
// nFibonacci(20);  // 6820 - verified via: http://www.numberempire.com/fibonaccinumbers.php
// nFibonacci(40);  // 102334155 - verified via: http://www.numberempire.com/fibonaccinumbers.php

console.log(tally);  // 1, 1, 2, 3, 5, 8, 13, 21...
____________________________

Lesson 4 Exercises
____________________________

function multiplyArguments() {
  //use the arguments keyword to multiply all of the arguments together and return the product
  //if no arguments are passed in return 0
  //if one argument is passed in just return it
  var product = 1;
  if (arguments.length > 1) {
    for (var i = 0; i < arguments.length; i++) {
      product *= arguments[i];
    }
    return product;
  } else if (arguments.length === 1) {
    return arguments[0];
  } else {
    return 0;
  }
}

function invokeCallback(cb) {
  //invoke cb
  cb();
}

function sumArray(numbers, cb) {
  //sum up all of the integers in the numbers array
  //pass the result to cb
  //no return is necessary
  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  cb(sum);
}

function forEach(arr, cb) {
  //iterate over arr and pass its values to cb one by one
  //hint: you will be invoking cb multiple times (once for each value in the array)
  for (var i = 0; i < arr.length; i++) {
    cb(arr[i]);
  }
}

function map(arr, cb) {
  //create a new array
  //iterate over each value in arr, pass it to cb, then place the value returned from cb into the new arr
  //the new array should be the same length as the array argument
  var new_arr = [];
  for (var i = 0; i < arr.length; i++) {
    var num = cb(arr[i]);
    new_arr.push(num);
  }
  if (arr.length === new_arr.length) {
    return new_arr;
  }
}

function getUserConstructor() {
  //create a constructor called User
  //it should accept an options object with username, name, email, and password properties
  //in the constructor set the username, name, email, and password properties
  //the constructor should have a method 'sayHi' on its prototype that returns the string 'Hello, my name is {{name}}'
  //{{name}} should be the name set on each instance
  //return the constructor
  function User(options) {
    this.username = options.username;
    this.name = options.name;
    this.email = options.email;
    this.password = options.password;
  }
  User.prototype.sayHi = function() {
    return 'Hello, my name is ' + this.name;
  };
  return User;
}

function addPrototypeMethod(Constructor) {
  //add a method to the constructor's prototype
  //the method should be called 'sayHi' and should return the string 'Hello World!'
  Constructor.prototype.sayHi = function() {
  return 'Hello World!';
  };
}

function addReverseString() {
  //add a method to the string constructor's prototype that returns a reversed copy of the string
  //name this method reverse
  //hint:
  //you will need to use 'this' inside of reverse
  String.prototype.reverse = function() {  // no argument for function()
    var f_array = this.split('');  // use "this" instead of argument to access string
    var r_array = [];
    f_array.forEach(function(letter) {
      r_array.unshift(letter);
    });
    var reversed = r_array.join('');
    return reversed;
  };
}

function nFactorial(n) {
  //return the factorial for n
  //solve this recursively
  //example:
  //the factorial of 3 is 6 (3 * 2 * 1)
  var range = [];
  function countdown(num) {
    if (num > 0) {
      range.push(num);
      num--;
      countdown(num);
    }
  }
  countdown(n);
  var product = 1;
  range.forEach(function(i) {
    product *= i;
  });
  return product;
}

function cacheFunction(cb) {
  //Extra Credit
  //use closure to create a cache for the cb function
  //the function that you return should accept a single argument and invoke cb with that argument
  //when the function you return is invoked with an argument it should save that argument and its result
  //when the function you return is called again with an argument that it has seen before it should not call cb
  //but should instead directly returned the previous result
  //example:
  //cb -> function(x) { return x * x; }
  //if the function you return is invoked with 5 it would pass 5 to cb(5) and return 25
  //if the function you return is invoked again with 5 it will look on an object in the closure scope
  //and return 25 directly and will not invoke cb again
  var history = {};
  return function(arg) {
    if (arg in history) {
      return history[arg];
    } else {
      history[arg] = cb(arg);
      return history[arg];
    }
  };
}
____________________________

Exercise Research Notes
____________________________

function multiplyArguments() {
  //use the arguments keyword to multiply all of the arguments together and return the product
  //if no arguments are passed in return 0
  //if one argument is passed in just return it
  var product = 1;
  if (arguments.length > 1) {
    for (var i = 0; i < arguments.length; i++) {
      product *= arguments[i];
    }
    return product;
  } else if (arguments.length === 1) {
    return arguments[0];
  } else {
    return 0;
  }
}

console.log(multiplyArguments(2, 3, 4));  // 24
console.log(multiplyArguments(5));  // 5
console.log(multiplyArguments());  // 0
____________________________

function invokeCallback(cb) {
  //invoke cb
  cb();
}

function sayHi() {
  console.log('Hi!');
}

invokeCallback(sayHi);  // Hi!
____________________________

var numbers = [1, 2, 3, 4, 5];

function sumArray(numbers, cb) {
  //sum up all of the integers in the numbers array
  //pass the result to cb
  //no return is necessary
  var sum = 0;
  for (var i = 0; i < numbers.length; i++) {
    sum += numbers[i];
  }
  cb(sum);
}

function returnSum(sum) {
  console.log(sum);
}

sumArray(numbers, returnSum);  // 15
____________________________

var numbers = [1, 2, 3, 4, 5];

function forEach(arr, cb) {
  //iterate over arr and pass its values to cb one by one
  //hint: you will be invoking cb multiple times (once for each value in the array)
  for (var i = 0; i < arr.length; i++) {
    cb(arr[i]);
  }
}

function returnNum(num) {
  console.log(num);
}

forEach(numbers, returnNum)
____________________________

var numbers = [1, 2, 3, 4, 5];

function map(arr, cb) {
  //create a new array
  //iterate over each value in arr, pass it to cb, then place the value returned from cb into the new arr
  //the new array should be the same length as the array argument
  var new_arr = [];
  for (var i = 0; i < arr.length; i++) {
    var num = cb(arr[i]);
    new_arr.push(num);
  }
  if (arr.length === new_arr.length) {
    return new_arr;
  }
}

function returnNum(num) {
  return num;
}

var mapArray = map(numbers, returnNum);
console.log(mapArray);  // [ 1, 2, 3, 4, 5 ]
____________________________

function getUserConstructor() {
  //create a constructor called User
  //it should accept an options object with username, name, email, and password properties
  //in the constructor set the username, name, email, and password properties
  //the constructor should have a method 'sayHi' on its prototype that returns the string 'Hello, my name is {{name}}'
  //{{name}} should be the name set on each instance
  //return the constructor
  function User(options) {
    this.username = options.username;
    this.name = options.name;
    this.email = options.email;
    this.password = options.password;
  }
  User.prototype.sayHi = function() {  // prototype needs to come after constructor
    return 'Hello, my name is ' + this.name;
  };
  return User;  // return constructor after prototype or can't access prototype
}

var user_1 = {
  username: 'jverbosky',
  name: 'John',
  email: 'jverbosky@email.com',
  password: '12345'
};

var user_2 = {
  username: 'puff',
  name: 'Luma',
  email: 'luma@email.com',
  password: 'ferociousPuff'
};

var newUser = getUserConstructor();
var jv = new newUser(user_1);
var lv = new newUser(user_2);

console.log(jv);
// User {
//   username: 'jverbosky',
//   name: 'John',
//   email: 'jverbosky@email.com',
//   password: '12345' }

console.log(lv);
// User {
//   username: 'puff',
//   name: 'Luma',
//   email: 'luma@email.com',
//   password: 'ferociousPuff' }

console.log(jv.name);  // John
console.log(lv.password);  // ferociousPuff

console.log(lv.sayHi());  // Hello, my name is Luma
____________________________

function addPrototypeMethod(Constructor) {
  //add a method to the constructor's prototype
  //the method should be called 'sayHi' and should return the string 'Hello World!'
  Constructor.prototype.sayHi = function() {
    return 'Hello World!';
  };
}

function User(options) {
  this.username = options.username;
  this.name = options.name;
  this.email = options.email;
  this.password = options.password;
}

var user_1 = {
  username: 'jverbosky',
  name: 'John',
  email: 'jverbosky@email.com',
  password: '12345'
};

var user_2 = {
  username: 'puff',
  name: 'Luma',
  email: 'luma@email.com',
  password: 'ferociousPuff'
};

jv = new User(user_1);
lv = new User(user_2);

addPrototypeMethod(User);

console.log(jv.sayHi());  // Hello World!
console.log(lv.sayHi());  // Hello World!
____________________________

console.log(String);  // [Function: String]

var forward = 'forward';  // test string

var f_array = forward.split('');
console.log(f_array);  // [ 'f', 'o', 'r', 'w', 'a', 'r', 'd' ]

var r_array = [];
console.log(r_array);  // []

f_array.forEach(function(letter) {
  r_array.unshift(letter);
});
console.log(r_array);  // [ 'd', 'r', 'a', 'w', 'r', 'o', 'f' ]

var reversed = r_array.join('');
console.log(reversed);  // drawrof

// adding statements to test function
function addReverseStringTest(string) {
  var f_array = string.split('');
  var r_array = [];
  f_array.forEach(function(letter) {
    r_array.unshift(letter);
  });
  var reversed = r_array.join('');
  return reversed;
}

console.log(addReverseStringTest(forward));  // drawrof

function addReverseString() {
  //add a method to the string constructor's prototype that returns a reversed copy of the string
  //name this method reverse
  //hint:
  //you will need to use 'this' inside of reverse
  String.prototype.reverse = function() {  // no argument for function()
    var f_array = this.split('');  // use "this" instead of argument to access string
    var r_array = [];
    f_array.forEach(function(letter) {
      r_array.unshift(letter);
    });
    var reversed = r_array.join('');
    return reversed;
  };
}

addReverseString();  // invoke to add prototype method to String
console.log(forward.reverse());  // drawrof
console.log('.eromyna sdrawkcab ton m\'I'.reverse());  // I'm not backwards anymore.
____________________________

var number = 5;
var range = [];

function countdown(num) {
  if (num > 0) {
    range.push(num);
    num--;
    countdown(num);
  }
}

countdown(number);
console.log(range);  // [ 5, 4, 3, 2, 1 ]

var product = 1;

range.forEach(function(number) {
  product *= number;
});

console.log(product);  // 120

function nFactorial(n) {
  //return the factorial for n
  //solve this recursively
  //example:
  //the factorial of 3 is 6 (3 * 2 * 1)
  var range = [];
  function countdown(num) {
    if (num > 0) {
      range.push(num);
      num--;
      countdown(num);
    }
  }
  countdown(n);
  var product = 1;
  range.forEach(function(i) {
    product *= i;
  });
  return product;
}

var factorialOne = nFactorial(number);
console.log(factorialOne);  // 120

var factorialTwo = nFactorial(10);
console.log(factorialTwo);  // 3628800 (verified via calculator)
____________________________

function cacheFunction(cb) {
  //Extra Credit
  //use closure to create a cache for the cb function
  //the function that you return should accept a single argument and invoke cb with that argument
  //when the function you return is invoked with an argument it should save that argument and its result
  //when the function you return is called again with an argument that it has seen before it should not call cb
  //but should instead directly returned the previous result
  //example:
  //cb -> function(x) { return x * x; }
  //if the function you return is invoked with 5 it would pass 5 to cb(5) and return 25
  //if the function you return is invoked again with 5 it will look on an object in the closure scope
  //and return 25 directly and will not invoke cb again
  var history = {};
  return function(arg) {
    // console.log('top');
    if (arg in history) {
      console.log('Argument is already in the object!');
      // console.log(history[arg]);
      return history[arg];
    } else {
      history[arg] = cb(arg);
      // console.log(history[arg]);
      return history[arg];
    }
  };
}

function square(num) {
  return num * num
}

var initialize = cacheFunction(square);
console.log(initialize(5));  // 25
console.log(initialize(6));  // 36
console.log(initialize(5));  // Argument is already in the object!  25
____________________________
____________________________
____________________________