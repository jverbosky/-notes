Strings

Put quotes around strings.

Can use echo or print command to generate output.

Make sure to end your line of PHP code with a semicolon.

You might have noticed that our main file is now index.php instead of index.html. This is important! It tells the PHP interpreter that there's PHP code in the file to evaluate.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
	</head>
	<body>
        <p>
          <?php
            echo "My first line of PHP!"; 
          ?>
        </p>
	</body>
</html>

Output:
My first line of PHP!
____________________________________________________

Concatenation Operator

The concatenation operator is just a dot (.). 
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
        <p>
          <?php
            echo "This" . " " . "is" . " " . "a" . " " . "concatenation" . " " . "example.";
          ?>
        </p>
	</body>
</html>

Output:
This is a concatenation example.
____________________________________________________

Calculations

PHP can calculate mathematical expressions.

No quotes around numbers.
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
        <p>
          <?php
            echo 17 * 123;
          ?>
        </p>
	</body>
</html>

Output:
2091
____________________________________________________

Variables

To do more complex coding, we need a way to "save" these values. We can do this using variables. A variable can store a string or a number, and gives it a specific case-senstive name.

Examples:
$myName = "Beyonce";
$myAge = 32;

All variable names in PHP start with a dollar sign ( $ ).
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	</head>
	<body>
	    <p>
	      <?php
	        $myName = "John";
	      ?>
	    </p>
    </body>
</html>
____________________________________________________

Semicolons

You've probably noticed that our lines of PHP code end in semicolons (;). PHP requires semicolons at the end of each statement, which is the shortest unit of standalone code. (For example, echo "Hello!"; or 2 + 2;)

You can think of a statement is a complete PHP thought. 19 + or echo aren't complete thoughts, so you wouldn't put semicolons at the end of them!

<?php echo "Use your semicolons!"; ?>
____________________________________________________

Comments
Just like we sometimes put comments in our CSS (using /* this syntax */) or in our HTML (using <!-- this syntax -->), we can also put comments in our PHP code! We do that using two forward slashes (//), like so:

<?php
    echo "I get printed!";
    // I don't! I'm a comment.
?>
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
		<title>Oh No!</title>
	</head>
	<body>
        <p><?php
            // This statement will output the specified string.
            echo "Oh, the humanity!";
          ?></p>
    </body>
</html>

Output:
Oh, the humanity!
____________________________________________________

Declaring variables and echoing values
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
        <link type='text/css' rel='stylesheet' href='style.css'/>
		<title>PHP FTW!</title>
	</head>
	<body>
        <!-- Write your PHP code below!-->
        <p>
            <?php
                $myName = "John";
                $myAge = 39;
                echo $myName;
                echo $myAge;
            ?>
        </p>   
	</body>
</html>

Output:
John39
____________________________________________________

Comparisons
So far we've seen:

strings (e.g. "dogs go woof!")
numbers (e.g. 4, 10)
Now let's learn about comparison operators.

List of comparison operators:

> Greater than
< Less than
<= Less than or equal to
>= Greater than or equal to
== Equal to
!= Not equal to
____________________________________________________

If statements
Nice work on comparisons! Now let's see how we can use comparisons to ask yes or no questions.

Say we want to write a program that asks whether your name is longer than 7 letters. If the answer is yes, we can respond with "You have a long name!" We can do this with an if statement:

<?php
  $age = 17;

  if( $age > 16 ) {
    echo "You can drive!";
  }
?>

An if statement is made up of the if keyword, a condition like we've seen before, and a pair of curly braces { }. If the answer to the condition is yes, the code inside the curly braces will run.
____________________________________________________

<html>
  <head>
  </head>
  <body>
    <p>
      <?php
        $items =  8;   // Set this to a number greater than 5!
        
        if($items > 5) {
          echo "You get a 10% discount!";
        }
      ?>
    </p>
  </body>
</html>

Output:
You get a 10% discount!
____________________________________________________

Adding an Else
Great! We used an if statement to do something if the answer to the condition was yes, or true as we say in PHP.

In addition to doing something when the condition is true, we can do something else if the condition is false. We can do this using an if / else statement:

<?php
  $name = "Edgar";

  if ($name == "Simon") {
    print "I know you!";
  }
  else {
    print "Who are you?";
  }
?>

Just like before, if the condition is true, then only the code inside the first pair of curly braces will run. Otherwise, the condition is false, so only the code inside the second pair of curly braces after the else keyword will run.

In the example above the condition $name == "Simon" evaluates to false since $name is Edgar. Since the condition is false, only the code inside the curly braces after the else keyword runs, and prints out Who are you?
____________________________________________________

<html>
  <head>
  </head>
  <body>
    <p>
      <?php
        $items = 3;
        
        if($items > 5) {
          echo "You get a 10% discount!";
        }
        else {
            echo "No discount for you!";
        }        
      ?>
    </p>
  </body>
</html>

Output:
No discount for you!
____________________________________________________

<html>
  <head>
  </head>
  <body>
    <p>
      <?php
        // Write your if/elseif/else statement here!
        if (5 < 3) {
                echo "The condition is true";
        }
        else {
                echo "The condition is false";
        }
      ?>
    </p>
  </body>
</html>

Output:
The condition is false
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title></title>
	</head>
	<body>
    <?php
    $today = "Saturday";
    if ($today == "Sunday") {
        echo "It's not Saturday.";
    }
    elseif ($today == "Monday") {
        echo "It's still not Saturday.";
    }
    else {
        echo "Today is Saturday!";
    }
    ?>
    </body>
</html>

Output:
Today is Saturday!
____________________________________________________

Dipping Your Toe into Switch statements

In the editor you see a simple switch statement. A switch statement comes in handy when you have a series of if/elseif/else statements with multiple expressions that depend on the same value. The switch statement also provides a bit of efficiency and readability. Switches work like if statements, if a condition is true, it executes a block of code.
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
    <?php
    switch (2) {
        case 0:
            echo 'The value is 0';
            break;
        case 1:
            echo 'The value is 1';
            break;
        case 2:
            echo 'The value is 2';
            break;
        default:
            echo "The value isn't 0, 1 or 2";
    }
    ?>
    </body>
</html>

Output:
The value is 2
____________________________________________________

Switch Syntax

A switch statement is similar to an if / elif / else statement in that you can check multiple conditions. Here's what it looks like:

$myNum = 2;

switch ($myNum) {
    case 1:
        echo "1";
        break;
    case 2:
        echo "2";
        break;
    case 3:
        echo "3";
        break;
    default:
        echo "None of the above";
}

A switch statement is made up of the switch keyword, a variable to check, and a pair of curly braces { }. Here we check the value of $myNum.

Then we have a case block for each comparison. For example case 1: echo "1"; break; checks whether $myNum is equal to 1. If yes, it echos "1", and uses break to exit the switch statement.
Otherwise, the next case block runs.

If all cases return false, the default case gets executed.
____________________________________________________
<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
    <?php
    $fruit = "Apple";
    
    switch ($fruit) {
        case "Apple":
            echo "Yummy.";
            break;
        case "Pear":
            echo "Tasty.";
            break;
        default:
            echo "I don't know what this is.";
    }
    
    ?>
    </body>
</html>

Output:
Yummy.
____________________________________________________

Multiple Cases. Falling Through!

You sometimes want to make multiple expressions, all of which have the same result. Consider the following if statement:

if ($i == 1 ||
    $i == 2 ||
    $i == 3) {
 echo '$i is somewhere between 1 and 3.';
}

With a switch statement, you can do this by adding cases right after another without a break. This is called falling through. The following code works exactly like the above if statement:

case 1:
case 2:
case 3:
    echo '$i is somewhere between 1 and 3.';
    break;
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
    <?php
    $i = 5;
    
    switch ($i) {
        case 0:
            echo '$i is 0.';
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            echo '$i is somewhere between 1 and 5.';
            break;
        case 6:
        case 7:
            echo '$i is either 6 or 7.';
            break;
        default:
            echo "I don't know how much \$i is.";
    }
    ?>
    </body>
</html>

Output:
$i is somewhere between 1 and 5.
____________________________________________________

Using "Endswitch". Syntactic Sugar!

You have two ways of creating a switch. First, there's the way we have made all the past exercises:

switch ($i) { 

}

But we can also make it this way:

switch ($i):

endswitch;

This is called alternative syntax. It exists to provide syntactic sugar

There's no difference when using either the curly brace syntax (first example) or alternative syntax (second example), it only provides readability, thus it's usually used when mixing HTML and PHP code in the same file.
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<body>
    <?php
    $i = 5;
    
    switch ($i):
        case 0:
            echo '$i is 0.';
            break;
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
            echo '$i is somewhere between 1 and 5.';
            break;
        case 6:
        case 7:
            echo '$i is either 6 or 7.';
            break;
        default:
            echo "I don't know how much \$i is.";
    endswitch;
    ?>
    </body>
</html>

Output:
$i is somewhere between1 and 5.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title></title>
	</head>
	<body>
    <?php
     $today = "Saturday";
     
     switch ($today):
         case "Friday":
             echo "Tomorrow is Saturday.";
             break;
        case "Saturday":
            echo "That's today!";
            break;
        case "Sunday":
            echo "Yesterday was Saturday.";
            break;
        default:
            echo "Can't wait for the weekend...";
     endswitch;
    ?>
	</body>
</html>

Output:
That's today!
____________________________________________________

What's an Array?

An array is a list of items, a bit like a shopping list. It allows you to store more than one item in only one variable.

Think of it like this. When writing your shopping list, you could use a separate piece of paper for each item you need to buy (a variable). However this is silly and unneeded—could you imagine how hard it would be to carry all that paper around with you? So, you use one piece of paper for all of your items. This one piece of paper is your array.

In the editor do you see the bit of text that starts with $array =? That is our array. Don't worry about all the details just yet, we will explain in more detail later. For now, just see if you can work out what is happening.

<?php
   $array = array("Egg", "Tomato", "Beans");
?>    
____________________________________________________

Array Syntax

Have you noticed something familiar at the start of our array? That's right, it starts in the same way as a variable, with the $ sign, and then a name, followed by =.

However, this is when things start to get different. When declaring an array, we have to use array(). This basically tells PHP that $array is an array and not something else, such as a regular old variable.

By now, I am sure you have noticed the text inside the ( and ). This is just the items in our array. So, currently, our array has the items "Egg," "Tomato," and "Beans" in it. You can add any type of information to an array, and you do it in much the same way as when declaring variables. Use "" when adding strings, and just enter the number when adding integers.

You must always remember, however, that each item in an array must be separated by a comma: ,.
____________________________________________________

<html>
  <head>
    <title>Woot, More Arrays!</title>
  </head>
  <body>
    <p>
      <?php
        // Add your array elements after
        // "Beans" and before the final ")"
        $array = array("Egg", "Tomato", "Beans", "Chips", "Sausage" );        
      ?>
    </p>
  </body>
</html>
____________________________________________________

<html>
  <head>
    <title>My First Array</title>
  </head>
  <body>
    <p>
      <?php
        $friends = array("Me", "Myself", "I");
      ?>
    </p>
  </body>
</html>
____________________________________________________

Access by Offset with [ ]

Each item in an array is numbered starting from 0. For example, when we create an array:

<?php
$myArray = array("do", "re", "mi");
?>

Each item is numbered starting from 0, like this:

+------+------+------+
| "do" | "re" | "mi" |
+------+------+------+
   0      1      2      

The item "do" is in position 0, the item "re" is in position 1, and so on.

Therefore, we can access a particular item of the array using its position, like this:

<?php
$myArray = array("do", "re", "mi");

echo $myArray[0]
// outputs "do"
?>

First we create an array named $myArray
Then we use echo to output the first item in $myArray. Since items are numbered starting from 0, "do" is at position 0.
____________________________________________________

<html>
  <head>
    <title>Accessing Elements</title>
  </head>
  <body>
    <p>
      <?php
        $tens = array(10, 20, 30, 40, 50);
        
        echo $tens[2];
      ?>
    </p>
  </body>
</html>

Output:
30
____________________________________________________

Access by Offset with { }

PHP is a very flexible language. When accessing arrays by offset, you can actually use two different types of syntax: the [] syntax we've covered, or you can use curly braces ({}). You use the curly braces just like you use the square brackets:

<?php
 $myArray = array("do", "re", "mi");
 print $myArray{2};
 // prints "mi";
?>

Both forms are equivalent, and using one or the other is totally up to you!
____________________________________________________

<html>
  <head>
    <title>Accessing Elements</title>
  </head>
  <body>
    <p>
      <?php
        $tens = array(10, 20, 30, 40, 50);
        
        echo $tens{2};
      ?>
    </p>
  </body>
</html>

Output:
30
____________________________________________________

Modifying Array Elements

An item in an array can be changed by specifying its position and providing a new value, like this:

<?php
$myArray = array("red", "blue", "yellow");

echo $myArray[1];
// outputs "blue"

$myArray[1] = "green";

echo $myArray[1];
// outputs "green"
?>

First we create a new array $myArray with a list of colors.
Then we output the item at position 1. Since items are numbered starting from 0, "blue" is at position 1
Next we change the item at position 1 to "green".
Now when we output the item at position 1, we get "green".
____________________________________________________
<html>
  <head>
    <title>Modifying Elements</title>
  </head>
  <body>
    <p>
      <?php
        $languages = array("HTML/CSS",
        "JavaScript", "PHP", "Python", "Ruby");
          
        $languages[4] = "Basic";
        
        echo $languages[4];
      ?>
    </p>
  </body>
</html>

Output:
Basic
____________________________________________________

Deleting Array Elements

Finally, you can remove elements using unset:

<?php
  $array = array("red", "blue", "green");
  unset($array[2]);
?>

You can even delete the whole array:

<?php
  unset($array);
?>

____________________________________________________

<html>
  <head>
    <title>Modifying Elements</title>
  </head>
  <body>
    <p>
      <?php
        $languages = array("HTML/CSS",
        "JavaScript", "PHP", "Python", "Ruby");
        // Write the code to remove Python here!
                
        unset($languages[3]);
        // Write your code above this line. Don't
        // worry about the code below just yet; we're
        // using it to print the new array out for you!
        
        foreach($languages as $lang) {
          print "<p>$lang</p>";
        }
      ?>
    </p>
  </body>
</html>

Output:
HTML/CSS
JavaScript
PHP
Ruby
____________________________________________________

What's a Loop?
Programming can be tough work, and sometimes it's made tougher by having to do the same thing over and over. Let's say we want to echo a list of leap years in the editor. You might think we'd have to type:

<?php
    echo 2004;
    echo 2008;
    echo 2012;
    // And so on
?>

But there's a better way!

A loop is a useful bit of code that repeats a series of instructions for you. For instance, instead of typing echo many times like we did above, we can simply use the code in the editor to the right!
____________________________________________________

<html>
  <head>
    <title>Leap Years</title>
  </head>
  <body>
    <?php
      for ($leap = 2004; $leap < 2050; $leap = $leap + 4) {
        echo "<p>$leap</p>";
      }
    ?>
  </body>
</html>

Output:
2004
2008
2012
2016
2020
2024
2028
2032
2036
2040
2044
2408
____________________________________________________

'For' Loop Syntax

Cool, right? Let's go through the syntax slowly, step-by-step. Here's an example that just echos the numbers 0 to 9:

<?php
for ($i = 0; $i < 10; $i++) {
    echo $i;
}
// echoes 0123456789
?>

It breaks down like this:

A for loop starts with the for keyword. This tells PHP to get ready to loop!

Next comes a set of parentheses (()). Inside the parentheses, we tell PHP three things, separated by semicolons (;): where to start the loop; where to end the loop; and what to do to get to the next iteration of the loop (for instance, count up by one).

After the part in parentheses, the part in curly braces ({}) tells PHP what code to run for each iteration of the loop.

So the above example says: "Start looping with $i at 0, stop the loop before $i gets to 10, count up by 1 each time, and for each iteration, echo the current value of $i."

($i++ is shorthand for $i = $i + 1. You'll see this a lot!)
____________________________________________________

<html>
  <head>
    <title>For Loops</title>
  </head>
  <body>
    <p>
      <?php
        // Echoes the first five even numbers
        for ($i = 2; $i < 11; $i = $i + 2) {
          echo $i;
        }
      ?>
    </p>
  </body>
</html>
____________________________________________________

Writing Your First 'For' Loop
Great work! Now let's put together our first for loop from start to finish.

A for loop that prints out the numbers 1 through 10 might look something like this:

for ($i = 0; $i < 11; $i++) {
    echo $i;
}

This for loop counts up by 1 each time, all the way to 10.

You could change the third part of the for loop so that it counts up by 5 instead, like this:

for ($i = 0; $i < 11; $i = $i + 5) {
    echo $i;
}

Instead of $i++, we have $i = i + 5 to count up by 5, all the way to 10.
____________________________________________________

<html>
  <head>
    <title>Solo For Loop!</title>
  </head>
  <body>
    <p>
      <?php
      // Write your for loop below!
      for ($i = 10; $i < 101; $i = $i + 10) {
          echo $i;
      }
      ?>
    </p>
  </body>
</html>

Output:
102030405060708090100
____________________________________________________

When to Use 'For'

Great job! for loops are great for running the same code over and over, especially when you know ahead of time how many times you'll need to loop. (There are other kinds, such as while and do/while loops, that we can use when we don't know ahead of time how many times we'll need to loop, but we'll cover those in a later lesson.)

There's also a special kind of loop called a foreach loop that we can use to update or print out every element in a list—for example, an array. Let's cover foreach next!
____________________________________________________

Loops + Arrays = ForEach

The foreach loop is used to iterate over each element of an object—which makes it perfect for use with arrays!

You can think of foreach as jumping from element to element in the array and running the code between {}s for each of those elements.

Check out the code in the editor. See how the $lang variable takes on the value of each of the elements in $langs, one by one, then echos that element to the page?
____________________________________________________

<html>
  <head>
    <link rel="stylesheet" href="stylesheet.css" />
    <title>Codecademy Languages</title>
  </head>
  <body>
    <h1>Languages you can learn on Codecademy:</h1>
    <div class="wrapper">
      <ul>
        <?php
          $langs = array("JavaScript",
          "HTML/CSS", "PHP",
          "Python", "Ruby");
        
          foreach ($langs as $lang) {
              echo "<li>$lang</li>";
          }
        
          unset($lang);
        ?>
      </ul>
    </div>
  </body>
</html>
____________________________________________________

Practicing with ForEach
Let's walk through the foreach syntax step-by-step. First, here's a foreach loop that iterates over an array and prints out each element it finds:

<?php
  $numbers = array(1, 2, 3);

  foreach($numbers as $item) {
      echo $item;
  }
?>

First, we create our array using the array() syntax we learned in the last lesson.

Next, we use the foreach keyword to start the loop, followed by parentheses. (This is very similar to what we've done with for loops.)

Between the parentheses, we use the $numbers as $item) syntax to tell PHP: "For each thing in $numbers, assign that thing temporarily to the variable $item." (We don't have to use the name $item—just as with for loops, we can call our temporary variable anything we want.)

Finally, we put the code we want to execute between the curly braces. In this case, we just echo each element in turn.
____________________________________________________

<html>
  <head>
    <title></title>
  </head>
  <body>
    <p>
      <?php
        $sentence = array("I'm ", "learning ", "PHP!");
        
        foreach ($sentence as $word) {
          echo $word;
        }
      ?>
    </p>
  </body>
</html>

Output:
I'm leraning PHP!
____________________________________________________

<html>
  <head>
    <title></title>
  </head>
  <body>
    <p>
      <?php
        $yardlines = array("The 50... ", "the 40... ",
        "the 30... ", "the 20... ", "the 10... ");
        // Write your foreach loop below this line
        
        foreach ($yardlines as $yardline) {
            echo $yardline;
        }
        // Write your foreach loop above this line
        echo "touchdown!";
      ?>
    </p>
  </body>
</html>

Output:
The 50... the 40... the 30... the 20... the 10... touchdown!
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>Using Line Breaks</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <?php
        $array = array("orange","banana","apple","raspberry");

        foreach ($array as $fruit) {
            echo $fruit."<br/>";
        }
    ?>
    </body>
</html>

* The "." before "<br/>" is the concatenation operator.

Output:
orange
banana
apple
raspberry
____________________________________________________

Looping the Loop

A loop is a structure that tells a computer to execute a set of statements multiple times. If you have a process that you want repeated hundreds of times, it pays to put it in a loop so you don't need to write hundreds of lines of code.

If you are working on these courses in order, you have already seen how a for loop can allow for a set number of loop iterations. But what about a situation where (due to randomness, perhaps) you don't know how many times the loop should repeat? In that case, you can use a while loop.

A while loop will execute as long as a certain condition is true. For example, the loop in the editor will simulate coin flips as long as the number of consecutive heads is less than 3.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
    	<link type='text/css' rel='stylesheet' href='style.css'/>
		<title>Coin Flips</title>
	</head>
	<body>
	<p>We are going to flip a coin until we get three heads in a row!</p>
	<?php
	$headCount = 0;
	$flipCount = 0;
	while ($headCount < 3) {
		$flip = rand(0,1);
		$flipCount ++;
		if ($flip){
			$headCount ++;
			echo "<div class=\"coin\">H</div>";
		}
		else {
			$headCount = 0;
			echo "<div class=\"coin\">T</div>";
		}
	}
	echo "<p>It took {$flipCount} flips!</p>";
	?>
    </body>
</html>
____________________________________________________

Before the loop, variables are defined to count the number of consecutive heads, $headCount, and the total number of flips, $flipCount.

The loop executes as long as $headCount is less than 3. Inside the loop rand(0,1) randomly outputs either a 0 or 1 representing tails and heads respectively, and $flipCount increases by one. If the result is heads (1 evaluates as true) $headCount increases by one and the heads <div> is echoed to the page. If not, $headCount becomes 0 and the tails <div> is echoed to the page.

When the loop is done, $flipCount is echoed to the page within a paragraph.
____________________________________________________

Playing around on my own - output values of $flip and $flipCount:

	<?php
	$headCount = 0;
	$flipCount = 0;

	$flip = rand(0,1);
	$flipCount ++;
	
	echo $flip;
	echo "<p> $flipCount </p>";
		
	?>

Output (varies due to rand):
1
1

Q&A - what does this mean?

if ($flip)

In PHP
	if ($flip)
is the same as
	if ($flip==1)
or
	if ($flip==true)

True and false can also be represented with integers where 1 is true and 0 is false. If we create a variable that is assigned an integer of either 1 or 0 (as in the case of the $flip code), PHP can evaluate the variable as either "true" or "false".

In a loop, the code inside the curly brackets is executed depending on whether the calculation inside the parenthesis evaluates to true or false. When your code shows ($flip < 10), it compares the value of $flip against 10 and returns "true" if $flip is less than 10 or "false" if greater than or equal to 10 and then proceeds accordingly.

In the case of ($flip), the code checks to see if the value of $flip is 1 or 0 and then returns "true" or "false" accordingly. Make sense?

On a side note, when using a number variable as a boolean (true/false), ANY number other than 0 returns as TRUE.
____________________________________________________

While Loop Syntax

In the last exercise, you saw how a while loop can be used to repeat a set of commands an unknown number of times. That loop used the following syntax:

while(cond) {
   // looped statements go here
}

where the statements in side the curly braces { and } are executed as long as the condition cond is evaluated as true. In the last exercise, cond was the condition that the number of consecutive heads was less than 3: $headCount < 3.

It is important when writing loops to make sure that the loop will exit at some point. The loop

while(2 > 1){
   // Code
}

will never exit and is an example of an infinite loop. Avoid infinite loops like the plague! This is why we need to include $loopCond = false; in line 12. If you submit an infinite loop in one of these exercises, you will need to reload the page to stop it.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>Your First PHP while loop!</title>
	</head>
	<body>
    <?php
	$loopCond = true;
	while ($loopCond){
		//Echo your message that the loop is running below
		echo "<p>The loop is running.</p>";
		$loopCond = false;
	}
	echo "<p>And now it's done.</p>";
    ?>
    </body>
</html>
____________________________________________________

Your First While Loop

Now it is time for you to write your own while loop from scratch. Maybe you could reproduce the behavior of one of your for loops from the previous course, or you could try to write your own coin flip program. The beauty of programming is that you can do whatever you want!

Unless you want to write an infinite loop on purpose (which you don't!), do not write infinite loops! And if you find you have submitted one, refresh the page to stop it.
____________________________________________________

To break down an array for use in a while statement:

<?php
    while (list($var, $val) = each($array)) {
        print "$var is $val\n";
    }
?>
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>A loop of your own</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <?php
	//Add while loop below
    $days = array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    
    while (list($array_element, $value) = each($days)) {
        echo "<p>Today is $value.  It's place in the array is $array_element.</p>";
    }
        
    ?>
    </body>
</html>

Output:
Today is Sunday. It's place in the array is 0.
Today is Monday. It's place in the array is 1.
Today is Tuesday. It's place in the array is 2.
Today is Wednesday. It's place in the array is 3.
Today is Thursday. It's place in the array is 4.
Today is Friday. It's place in the array is 5.
Today is Saturday. It's place in the array is 6.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>A loop of your own</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <?php
	//Add while loop below
    $days = array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    
    while (list($array_element, $value) = each($days)) {
        if(startsWith($value, "S")) {
        echo "<p>Today is $value.  Gotta love the weekend!</p>";
        }
    }
    function startsWith($haystack, $needle) {
        $length = strlen($needle);
        return (substr($haystack, 0, $length) === $needle);
    }  
    ?>
    </body>
</html>

* Using a function to compare the first character of the string.

Output:
Today is Sunday. Gotta love the weekend!
Today is Saturday. Gotta love the weekend!
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>A loop of your own</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <?php
	//Add while loop below
    $days = array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    
    while (list($array_element, $value) = each($days)) {
        if (substr($value, 0, 1) === "S") {
        echo "<p>Today is $value.  Gotta love the weekend!</p>";
        }
    }   
    ?>
    </body>
</html>

* Using the built-in substr function to specify the string, starting character and substring length:
if (substr($value, 0, 1) === "S")

Output:
Today is Sunday. Gotta love the weekend!
Today is Saturday. Gotta love the weekend!
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>A loop of your own</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <?php
	//Add while loop below
    $days = array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    
    while (list($array_element, $value) = each($days)) {
        if ($value[0] === "S") {
        echo "<p>Today is $value.  Gotta love the weekend!</p>";
        }
    } 
    ?>
    </body>
</html>

* Can also treat strings as an array and compare an individual letter:
if($value[0] === "S"

Output:
Today is Sunday. Gotta love the weekend!
Today is Saturday. Gotta love the weekend!
____________________________________________________

Using Endwhile

PHP offers the following alternative syntax for while loops:

while(cond):
   // looped statements go here
endwhile;

Note the colon after the end parenthesis and the semicolon after the endwhile statement.

When they are embedded in HTML, loops that use this endwhile syntax can be more readable than the equivalent syntax involving curly braces.

    while(cond) {
       // looped statements go here
    }

Feel free to use whichever syntax you prefer... except on this exercise!
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>A loop of your own</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <?php
	//Add while loop below
    $days = array("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday");
    
    while (list($array_element, $value) = each($days)):
        if($value[0] === "S") {
        echo "<p>Today is $value.  Gotta love the weekend!</p>";
        }
    endwhile;
        
    ?>
    </body>
</html>

Output:
Today is Sunday. Gotta love the weekend!
Today is Saturday. Gotta love the weekend!
____________________________________________________

How Do You Do-While?

You may have noticed that a while loop checks the loop condition before each iteration of the code inside. A logical alternative is to check the condition after each iteration before looping back. A do/while loop does just that. One consequence of this difference is that the code inside a while loop can be bypassed entirely whereas the code inside a do/while loop will execute at least once.

This means that the loop condition can depend exclusively on code within the loop's body. This is the case for the code in the editor where each iteration represents a coin flip, and any time the result of the coin flip is tails, the loop stops.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
    	<link type='text/css' rel='stylesheet' href='style.css'/>
		<title>More Coin Flips</title>
	</head>
	<body>
	<p>We will keep flipping a coin as long as the result is heads!</p>
	<?php
	$flipCount = 0;
	do {
		$flip = rand(0,1);
		$flipCount ++;
		if ($flip){
			echo "<div class=\"coin\">H</div>";
		}
		else {
			echo "<div class=\"coin\">T</div>";
		}
	} while ($flip);
	$verb = "were";
	$last = "flips";
	if ($flipCount == 1) {
		$verb = "was";
		$last = "flip";
	}
	echo "<p>There {$verb} {$flipCount} {$last}!</p>";
	?>
    </body>
</html>
____________________________________________________

Completing the Loop

In the previous exercise, you saw how a do/while could be used to ensure that the code in a loop executed at least once. For example:

<?php
$i = 0;
do {
    echo $i;
} while ($i > 0);
?>
This do / while loop only runs once and then exits:

First we set $i equal to 0.

Second, the loop runs once and outputs $i, which is 0.

Then the condition while ($i > 0); is checked. Since $i is not greater than 0, the condition evaluates to false, and thedo/while` loop stops.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>Much a do-while</title>
	</head>
	<body>
    <?php
		$loopCond = false;
		do {
			echo "<p>The loop ran even though the loop condition is false.</p>";
		} while ($loopCond);
	
		echo "<p>Now the loop is done running.</p>";
    ?>
    </body>
</html>

Output:
The loop ran even though the loop condition is false.
Now the loop is done running.
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
		<title>Your own do-while</title>
        <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
    <p>Preparing to shake the Magic 8 Ball until we get a Yes...</p>
    <?php
        //write your do-while loop below

	$shakecount = 0;
	$magic8ball = array("It is certain", "It is decidedly so", "Without a doubt", "Yes definitely", "You may rely on it", "As I see it, yes", "Most likely", "Outlook good", "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later", "Better not tell you now", "Cannot predict now", "Concentrate and ask again", "Don't count on it", "My reply is no", "My sources say no", "Outlook not so good", "Very doubtful");

	do {
		$shake = rand(0,19);
		$shakecount++;
		if ($shake != 8) {
		echo $magic8ball[$shake] . " - that's not the answer we want... let's try that again...<br/>";
		
		}
		else {
		echo "<p>Success!!!</p>";
		}
	} while ($shake != 8);

	$verb = "shakes";
	if ($shakecount == 1) {
		$verb = "shake";
	}

	echo "It took $shakecount $verb to get a simple $magic8ball[8].";
    ?>
    </body>
</html>

Example Output:
Preparing to shake the Magic 8 Ball until we get a Yes...

Outlook not so good - that's not the answer we want... let's try that again...
It is decidedly so - that's not the answer we want... let's try that again...
As I see it, yes - that's not the answer we want... let's try that again...
My reply is no - that's not the answer we want... let's try that again...
My reply is no - that's not the answer we want... let's try that again...
It is decidedly so - that's not the answer we want... let's try that again...
Success!!!

It took 7 shakes to get a simple Yes.
____________________________________________________

Introducing Functions

Functions are reusable pieces of code that you can use throughout an application, saving you lots of copying and pasting.

PHP has lots of built-in functions, and we'll learn some of them in these exercises. The first set of functions we'll learn about are string manipulation functions.

strlen() is one of the most common String functions in PHP. You pass it a string, or variable containing a string, and it returns the number of characters in that string. An example might be:

<?php
  // get the length of a string and
  // print it to the screen
  $length = strlen("david");
  print $length;
?>

Instructions
Use the index.php tab to write your own code.

Get the length of your own name, as I did for mine, and print it to the screen.
____________________________________________________

<html>
  <p>
    <?php
    // Get the length of your own name
    // and print it to the screen!
    $length = strlen("something");
    print $length;
    ?>
  </p>
</html>

Output:
9
____________________________________________________

String Functions I

Another very common string function is substr(). This function allows you to return a substring (piece of) of your string.

You pass this function the string you want to get a substring of, the character in your string to start at, and how many characters you want after your starting point. An example might be:

$myname = "David";

// you can manipulate strings easily
// with built-in funtions too
$partial = substr($myname, 0, 3);
print $partial;
// prints "dav"

NOTE: the second parameter (the starting character) is based on a zero-indexed array (i.e. the first character in your string is number 0, not number 1).

Two other very useful string functions are strtoupper() and strtolower(), which make your entire string UPPERCASE or lowercase. Here is an example of each:

$uppercase = strtoupper($myname);
print $uppercase;
// prints "DAVID"

$lowercase = strtolower($uppercase);
print $lowercase;
// prints "david"

You can also call these functions on a string directly, like so:

print strtolower("David");
// prints "david"
____________________________________________________

<html>
  <p>
    <?php
    // Get a partial string from within your own name
    // and print it to the screen!
    echo ("Something", 2, 2);
    ?>
  </p>
  <p>
    <?php
    // Make your name upper case and print it to the screen:
    echo strtoupper("Something");
    ?>
  </p>
  <p>
    <?php
    // Make your name lower case and print it to the screen:
    echo strtolower("Something");
    ?>
  </p>
</html>

Output:
me
SOMETHING
something
____________________________________________________

String Functions II

strpos() find the position of the first occurrence of a substring in a string.

strpos("emily", "e");   // 0
strpos("emily", "i");   // 2
strpos("emily", "ily"); // 2
strpos("emily", "zxc"); // false

The parameters passed to strpos() are the haystack and the needle. The function tries to find the needle in the haystack.

It returns either the index of the first character, or false if the needle cannot be found.

if (strpos("david","h") === false) {
  print "Sorry, no 'h' in 'david'";
}
// prints the "Sorry" message

Use the editor to create your own haystack and needle combinations. You can use variables for both haystack and needle.
____________________________________________________

<html>
    <p>
    <?php
    // Print out the position of a letter that is in
    // your own name
    $name = "Something";
    $partial = "me";
    $letter = "v";
    
    $position = strpos($name, $partial);
    echo $position;
    ?>
    </p>
    <p>
    <?php
    // Check for a false value of a letter that is not
    // in your own name and print out an error message
    if (strpos($name, $letter) === false) {
        echo "Sorry, no \"$letter\" in \"$name\".";
    }
    ?>
    </p>
</html>

Output:
2
Sorry, no "v" in "Something".
____________________________________________________

Math Functions I

Let's move on to a bit of arithmetic. The most common Math function you'll use is round(). This function rounds floating point numbers (numbers with decimal points in them) up or down.

You can use round() to round your number to an integer, or to round off complex floating point numbers to a specific number of decimal places. This is accomplished by passing a second, optional parameter to round(), telling it how many decimal places you want the number rounded to.

Here's an example:

// Round pi down from 3.1416...
$round = round(M_PI);
print $round;  // prints 3

// This time, round pi to 4 places
$round_decimal = round(M_PI, 4);
print $round_decimal; // prints 3.1416

NOTE: M_PI is a PHP constant that is equal to pi.
____________________________________________________

<html>
    <p>
    <?php
    // Try rounding a floating point number to an integer
    // and print it to the screen
    $numbers = array(53.2893, 382.3820, 8312.38293);
    foreach($numbers as $number) {
    $round = round($number);
    print $round."<br/>";
    }
    ?>
    </p>
    <p>
    <?php
    // Try rounding a floating point number to 3 decimal places
    // and print it to the screen
    foreach($numbers as $number) {
    $round_decimal = round($number, 3);
    print $round_decimal."<br/>";
    }
    ?>
    </p>
</html>

Output:
53
382
8312

53.289
382.382
8312.383
____________________________________________________

Math Functions II

A very common and useful function is rand(). This function returns a random number between two numbers. Optionally, you can provide your min and max numbers as parameters, like this:

// prints a number between 0 and 32767
print rand();

// prints a number between 1 and 10
print rand(1,10);
____________________________________________________

<html>
    <p>
    <?php
    // Use rand() to print a random number to the screen
    print rand();
    ?>
    </p>
    <p>
    <?php
    // Use your knowledge of strlen(), substr(), and rand() to
    // print a random character from your name to the screen.
    // Remember that substr() treats characters in a string 
    // as a zero-indexed array (first letter is at position zero). 
    // This means that the last character in the string will be at position length - 1.
    $name = "Something";
    $length = strlen($name);
    $letter = substr($name, rand(1, $length - 1), 1);
    print $letter;
    ?>
    </p>
</html>

Example output:
509652293
h
____________________________________________________

Array Functions I

Arrays are a very common thing to use in programming. In fact, array() is actually a function! Good job, you have already used an array function.

Aside from the array() function itself, array_push() is arguably the most common and useful function for manipulating arrays.

array_push() takes two arguments: an array, and an element to add to the end of that array. Here's an example:

$fav_bands = array();
array_push($fav_bands, "Maroon 5");
array_push($fav_bands, "Bruno Mars");
array_push($fav_bands, "Nickelback");
array_push($fav_bands, "Katy Perry");
array_push($fav_bands, "Macklemore");

Another cool array function is count(). Passing an array to count() will return the number of elements in that array. Like this:

print count($fav_bands); // prints 5
____________________________________________________

<html>
    <p>
	<?php
	// Create an array and push 5 elements on to it, then 
    // print the number of elements in your array to the screen
    $animals = array("dog", "cat", "fish");
    
    array_push($animals, "bat");
    array_push($animals, "turtle");
    array_push($animals, "lizard");
    array_push($animals, "shrimp");
    array_push($animals, "squirrel");
    
    // sort array while maintaining keys
    asort($animals);
    
    foreach($animals as $animal) {
        print $animal."<br/>";
    }
    
    print "<br/>".count($animals);
    
	?>
	</p>
</html>

Output:
bat
cat
dog
fish
lizard
shrimp
squirrel
turtle

8
____________________________________________________

Array Functions II

Another common thing to do with arrays is sort them. Handily enough, PHP has a sort() function for just such an occasion!

$array = array(5, 3, 7, 1);
sort($array);
print join(", ", $array);
// prints "1, 3, 5, 7"
PHP also has the opposite function: rsort().

$array = array(5, 3, 7 ,1);
rsort($array);
print join(":", $array);
// prints "7:5:3:1"

Lastly, we use join(glue, array) so we can easily print out the representations of our sorted arrays in this exercise.

For this exercise, we'll use a comma (,) as the glue.
____________________________________________________

<html>
    <p>
	<?php
	// Create an array with several elements in it,
	// then sort it and print the joined elements to the screen
    $the_array = array("dog", "cat", "bat", "turtle", "fish", "squirrel");
    sort($the_array);
    print join(", ", $the_array);
	?>
	</p>
	<p>
	<?php
	// Reverse sort your array and print the joined elements to the screen
    rsort($the_array);
    print join(", ", $the_array);
	?>
	</p>
</html>

Output:
bat, cat, dog, fish, squirrel, turtle
turtle, squirrel, fish, dog, cat, bat
____________________________________________________

Show What You Know!

Let's take what we've learned about strings, math, and arrays and create a game. In our game, we'll make a list of our closest family and friends and have a lottery. We will "spin the wheel" and randomly select one of our family and friends from the list.

Because winning is a big deal, we'll have to display the winner's name to the public in ALL CAPS. Let's go!

Instructions

Create an array() with the names of your closest family and friends. The more names in your array, the more fun your game will be!

After you've created your list, sort it and randomly select a name from the list.

When you have your winning name, print it to the screen in caps so everyone knows how awesome the winner is.

Functions we'll use here: array(), array_push(), sort(), count(), rand(), and strtoupper(). Play around with some of the other functions you've learned as well.
____________________________________________________

<html>
    <p>
	<?php
	// Create an array and push on the names
    // of your closest family and friends
    $players = array();
    array_push($players, "Yuriko");
    array_push($players, "Kuon");
    array_push($players, "Vivian");
    array_push($players, "Tan-chan");
    array_push($players, "Luma");
	// Sort the list
    sort($players);
    $ordinal = array("first", "second", "third", "fourth", "fifth");
    $i = 0;
    foreach($players as $player) {
        print "Our $ordinal[$i] player today is $player.<br/>";
        $i++;
    }
	// Randomly select a winner!
	print "<br/>Now let's spin the wheel and see who our winner is...<br/><br/>";
    $winner = rand(0, count($players) - 1);
	// Print the winner's name in ALL CAPS
	print strtoupper($players[$winner])." IS THE WINNER!!!";
	?>
	</p>
</html>

Example output:
Our first player today is Kuon.
Our second player today is Luma.
Our third player today is Tan-chan.
Our fourth player today is Vivian.
Our fifth player today is Yuriko.

Now let's spin the wheel and see who our winner is...

TAN-CHAN is the winner!
____________________________________________________

Function Refresher

Don’t Repeat Yourself! This is a very simple, yet fundamental principle in programming.

Whenever you feel the need to rewrite a block of code, remember that it can probably be written as a function instead. You've seen some of PHP's built-in functions, but you can also define your own!

By using one function instead of several blocks of the same code, you can reduce the amount of clutter in your document and keep your code neat and tidy.
____________________________________________________

<html>
    <head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
          echo strlen("Something");
        ?>
      </p>
    </body>
</html>

Output:
9
____________________________________________________

Function Syntax

The typical structure of a function is as follows:

function name(parameters) {
  statement;
}

The keyword function indicates that the code following it will be a user-defined function.

name indicates the name of a function, which is case insensitive. The name of a function can contain numbers, letters, underscores or dashes.

The arguments, or parameters, will be the optional input a function uses to perform calculations.

And of course, the statements themselves will be the code the function executes when it is called.
____________________________________________________

<html>
    <head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
          // Here we define the function...
          function helloWorld() {
            echo "Hello world!";
          }
          
          // ...and here we call it!
          helloWorld();
        ?>
      </p>
    </body>
</html>

Output:
Hello world!
____________________________________________________

Your First Function

Writing our name can be a dull task when we don't have fun functions to help out. In this exercise, we'll be writing our very first user-defined PHP function that will do just that for us!
____________________________________________________

<html>
	<head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
        // Write your function below!
        function displayName() {
            echo "Something";
        }
        
        ?>
      </p>
    </body>
</html>
____________________________________________________

Calling Your Function

Defining our function makes it available for us to use, but we aren't using it until we call it.

To call a function, simply type the name of the function followed by any parameters:

functionName(parameters);
____________________________________________________

<html>
	<head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
        // Write your function below!
        function displayName() {
            echo "Something";
        }
        
        displayName();        
        
        ?>
      </p>
    </body>
</html>

Output:
Something
____________________________________________________

The Return Keyword

Instead of printing something to the screen, what if you want to make it the value that the function outputs so it can be used elsewhere in your program? In PHP, the return keyword does just that. It returns to us a value that we can work with. The difference between this and echo or print is that it doesn't actually display the value.

Think of it like a calculator solving a mathematical problem that takes several steps to complete. The value from each step is computed, but we don't see the result until we get the final answer. In other words, each value is returned and the final answer is echoed on screen for us.
____________________________________________________

<html>
	<head>
		<title></title>
	</head>
	<body>
      <?php
        function returnName() {
            return "Something";
        }
      ?>
    </body>
</html>
____________________________________________________

Parameters and Arguments

Functions wouldn't be nearly as useful if they weren't able to take in some input. This is where parameters or arguments come in. These are the variables or inputs that a function uses to perform calculations.

function squareValue($number) {
  echo $number * $number;
} 

$n = 6;
squareValue($n); // echos 36

The function squareValue, above, takes one parameter, which it multiplies by itself and then echos the result. The names of the parameters themselves are used internally within the function, so they should be named something helpful.

You can also use multiple parameters as long as they are separated by commas.
____________________________________________________

<html>
	<head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
            function squareValue($number) {
                echo $number * $number."<br/>";
            }
            
            $i = 1;
            
            while($i <= 10) {
                squarevalue($i);
                $i++;
            }
        ?>
      </p>
    </body>
</html>

Output:
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
____________________________________________________

<html>
	<head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
            function greetings($name) {
                echo "Greetings, " . $name . "!";
            }
            
            $myName = "Something";
            
            greetings($myName);
        ?>
      </p>
    </body>
</html>

Output:
Greetings, Something!
____________________________________________________

<html>
	<head>
		<title></title>
	</head>
	<body>
      <p>
        <?php
            function aboutMe($name, $age) {
                echo "Hello! My name is $name, and I am $age years old.";
            }
            
            $name = "Something";
            $age = 547;
            
            aboutMe($name, $age);
        ?>
      </p>
    </body>
</html>

Output:
Hello! My name is Something, and I am 547 years old.
____________________________________________________

What's Object-Oriented Programming?

PHP is an object-oriented programming language, which means that you can create objects, which can contain variables and functions.

When talking about objects, you refer to variables belonging to these objects as properties (or attributes or fields), and functions are called methods.

These objects are essential when dealing with PHP, as almost everything is an object: for example, functions or arrays are objects, too!
And this shows why we use objects: we can bundle our functions and data in one place, we can create objects easily using classes (object constructors), so we can create lots of instances (objects, which have been constructed via a class), which contain mostly the same data, except some little nuances.

On the right, there is a Person class and one instance stored in $me on line 32. Then the greet() method of the $me object is called and the result is echod on line 35.

Then the stylesheet adds some color to the result. :-)
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
      <title> Introduction to Object-Oriented Programming </title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
    </head>
	<body>
      <p>
      <?php
        // The code below creates the class
        class Person {
            // Creating some properties (variables tied to an object)
            public $isAlive = true;
            public $firstname;
            public $lastname;
            public $age;
            
            // Assigning the values
            public function __construct($firstname, $lastname, $age) {
              $this->firstname = $firstname;
              $this->lastname = $lastname;
              $this->age = $age;
            }
            
            // Creating a method (function tied to an object)
            public function greet() {
              return "Hello, my name is " . $this->firstname . " " . $this->lastname . ". Nice to meet you! :-)";
            }
          }
          
        // Creating a new person called "boring 12345", who is 12345 years old ;-)
        $me = new Person('boring', '12345', 12345);
        
        // Printing out, what the greet method returns
        echo $me->greet(); 
        ?>
        </p>
    </body>
</html>

Output:
Hello, my name is boring 12345. Nice to meet you! :-)
____________________________________________________

Objects in Real Life

How object-oriented programming is used in real life can be shown with a forum as an example:

Every forum user (object) has the same rights: he can log in and write (methods), can contain some settings (properties), but every user has a different name (another property).

Every user is created easily, as you create a new instance of a User class when you sign up. And as we've seen, there are some properties and methods that every instance has in common (such as logging in and writing), and there are some which are unique (such as each user's name).

And without object-oriented programming—OOP for short—this could not be done that easily. ;-)

Another example: on the right, there is a Person class, so every new Person has some properties, like $isAlive or $firstname, and a method greet().

Right now there is only one instance of the Person class: $me. But we'll reconstruct this class and you'll even create another instance of the class, so your name will be echod, too.

In the next exercises we are going to create some classes, so let's start coding. :-)
____________________________________________________

Building Your First Class

Great, now you know the technical terms. :-)
Let's start coding by reconstructing the Person class.

The basic class syntax looks like the following:

class Classname {

}

The class keyword means that you create a new class; the syntax is quite similar to the function syntax.

And you can create new instances of this class using the following syntax:

$obj1 = new Classname();

The new keyword means that you create a new object and ensures that your arguments are added as properties, so it initializes the constructor (which we are going to deal with later).

We don't need to pass in any arguments, as we haven't added any properties (which can store different values depending on the instance) quite yet.

Create a Person class.
Create two instances of the Person class: $teacher and $student.
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	  <title>Reconstructing the Person Class</title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <!-- Your code here -->
        <?php
        
        class Person {
            
        }
        
        $teacher = new Person();
        $student = new Person();
        
        ?>
      </p>
    </body>
</html>
____________________________________________________

Property Panic (1)

Great work, now we can add some properties to our class.

As you remember, properties are pieces of data bound to an object, and you can imagine an object as a bundle of information and actions.

class Fruit {
  public $count = 3;
  public $type;
}

$apple = new Fruit();
$apple->type = "apple";
print $apple->count; // 3
print $apple->type;  // apple

In the example above, we first create a new class called Fruit.

Then we add a property, $count, and set its value to 3.

Next, we add a property, $type, but don't store anything in it yet.

After the class definition, we create new instance of Fruit and store it in $apple.

Then we set the $type property of $apple to the string "apple".

Finally, we print out the two properties of $apple.

Let's try this out!
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	  <title>Reconstructing the Person Class</title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <!-- Your code here -->
        <?php
        
        class Person {
            public $isAlive = true;
            public $firstname;
            public $lastname;
            public $age;
        }
        
        $teacher = new Person();
        $student = new Person();
        
        echo $teacher->isAlive;
        
        ?>
      </p>
    </body>
</html>

Output:
1
____________________________________________________

Property Panic (2)

Good job, now we have some properties.
But right now $teacher and $student are the same, which should be changed immediately, correct? :-)

The solution: we have to create a constructor to create different objects. This constructor is also a method, but you don't need to worry about this fact just yet.

The syntax:

public function __construct($prop1, $prop2) {
  $this->prop1 = $prop1;
  $this->prop2 = $prop2;
}

So you should remember the public keyword and the arrow notation.

Some new things:

You're creating a function bound to a class (a method).

The constructor method has to be called __construct().

Finally, the weird way to assign the values: $this->prop1 = $prop1 means that the value you pass in the __construct() function via the new keyword is assigned to $this, which represents the object you are dealing with, and ->prop1 is the actual property of the object.

By creating a new instance using the new keyword, you actually call this __construct() method, which constructs the object. And that's why we have to pass in some arguments when we create an instance of a class, since this is how the properties get set!
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	  <title>Reconstructing the Person Class</title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <!-- Your code here -->
        <?php
        
        class Person {
            public $isAlive = true;
            public $firstname;
            public $lastname;
            public $age;
            
            public function __construct($firstname, $lastname, $age) {
                $this->firstname = $firstname;
                $this->lastname = $lastname;
                $this->age = $age; 
            }
        }
        
        $teacher = new Person("boring", "12345", 12345);
        $student = new Person("Something", "Else", 427);
        
        echo $student->age;
        
        ?>
      </p>
    </body>
</html>

Output:
427
____________________________________________________

A Method to the Madness

Great work, now the hardest and longest part is behind us. :-)

As you've seen, methods—functions bundled into objects—have the following syntax:

public function funcname($optionalParameter) {
  // Do something
}

And now we know the __construct function is a special one, which is called when a new object is created using a new keyword.
Furthermore, we've learnt we have to use the $this keyword, if we want to access some properties in a class.

So if we want a method to return a sentence containing the firstname, we would have to use $this->firstname. (As you see, there is no $ when you access a property [variable] in a class.)

Calling a method [function] is similar to accessing a property, you just have to add the parentheses:

$obj1 -> meth1();
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	  <title>Reconstructing the Person Class</title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <!-- Your code here -->
        <?php
        
        class Person {
            public $isAlive = true;
            public $firstname;
            public $lastname;
            public $age;
            
            public function __construct($firstname, $lastname, $age) {
                $this->firstname = $firstname;
                $this->lastname = $lastname;
                $this->age = $age; 
            }
            
            public function greet() {
                return "Hello, my name is " . $this->firstname . " " . $this->lastname . ".  Nice to meet you! :-)<br>";
            }
        }
        
        $teacher = new Person("boring", "12345", 12345);
        $student = new Person("Something", "Else", 427);
        
        echo $teacher->greet();
        echo $student->greet();
                
        ?>
      </p>
    </body>
</html>

Output:
Hello, my name is boring 12345. Nice to meet you! :-)
Hello, my name is Something Else. Nice to meet you! :-)
____________________________________________________

Putting It All Together, Part I

Well done! You've reconstructed the Person class.

Let's create another class: a Dog class. It should have a public property $numLegs, which stores the value 4. Furthermore, there should be the possibility to give every dog a $name using a __constructor.

Of course we also need some methods, as a dog is able to bark(). Our dogs are also able to introduce themselves, to greet(), so we'll also need a method for this.

At last we'll need two cute dogs. :-)

That's it. Let's start!

Note: You'll find the basic syntax for the tasks in the hints, so don't worry. :-)
And although this looks like a huge task, it's actually quite easy. :-)

So this time let's create our class and add the properties.
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	  <title> Practice makes perfect! </title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <!-- Your code here -->
        <?php
        
        class Dog {
            public $numLegs = 4;
            public $name;
            
            public function __construct($name) {
                $this->name = $name;
            }
            
            public function bark() {
                
            }
            
            public function greet() {
                
            }
            
        }
        
        $tanchan = new Dog("Tan-chan");
        $luma = new Dog("Luma");
        
        ?>
      </p>
    </body>
</html>
____________________________________________________

<!DOCTYPE html>
<html>
	<head>
	  <title> Practice makes perfect! </title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <!-- Your code here -->
        <?php
        
        class Dog {
            public $numLegs = 4;
            public $name;
            
            public function __construct($name) {
                $this->name = $name;
            }
            
            public function bark() {
                return "Woof!<br>";
            }
            
            public function greet() {
                return "Greetings, I am known as " . $this->name . ".<br>";
            }
            
        }
        
        $dog1 = new Dog("Tan-chan");
        $dog2 = new Dog("Luma");
        
        echo $dog1->bark();
        echo $dog2->greet();
        
        ?>
      </p>
    </body>
</html>

Output:
Woof!
Greetings, I am known as Luma.
____________________________________________________

Challenge Time

Awesome! Now let's try the same without the training wheels. :-P

Let's create a Cat class, which has two public properties: an $isAlive property storing the value true and a $numLegs property containing the value 4.

There should be a public $name property, which should get a value when a new object is created, so assign the value to $name via the __construct() method.

Then I also want these Cats to be able to meow, so add a meow() method, which returns "Meow meow".

Finally, create an instance of the Cat class, which has the $name "CodeCat" and store it in the variable $cat1. Then call the meow() method on this cat.

Sounds doable? Then let's start the challenge. :-)
____________________________________________________

<!DOCTYPE html>
<html>
    <head>
	  <title> Challenge Time! </title>
      <link type='text/css' rel='stylesheet' href='style.css'/>
	</head>
	<body>
      <p>
        <?php
          // Your code here
          class Cat {
             public $isAlive = true;
             public $numLegs = 4;
             public $name;
             
             public function __construct($name) {
                $this->name = $name;
             }
             
             public function meow() {
                 return "Meow meow";
             }
          }
          
          $cat1 = new Cat("CodeCat");
          
          echo $cat1->meow();
          
        ?>
      </p>
    </body>
</html>

Output:
Meow meow
____________________________________________________

Review

Well done, mission accomplished. :-)

In this course you've learnt the basics of object-oriented programming, or OOP for short:

You know what a class is.

You know what an object is.

You know that you create objects using classes, as you simply create an instance of a class to create a new object.

You know how to create classes and objects.

You know how to add properties to a class.

You know how to add methods to a class.

You know how to use the __construct() method and the new keyword.

You know the arrow notation.

Actually you know quite a lot. :-)

The next course even dives deeper in OOP and you'll learn some nice concepts like inheritance or what constants are.
If you want to, you may have a look at the hint. :-)
____________________________________________________

Class and Object Refresher

Object-Oriented PHP helps your code stay flexible by allowing it to be only defined once but used in many places.

class ClassName {
}

$className = new ClassName();

We've already learned how to create objects from the classes we define, so let's run through a little refresher. Remember, we use the class keyword to define our classes.
____________________________________________________

<html>
  <head>
    <title>OOP Review</title>
  </head>
  <body>
    <p>
      <?php
      // Create a Person class here:
      class Person {
      }
      
      // And create a Person instance called $me here:
      $me = new Person();
      ?>
    </p>
  </body>
</html>
____________________________________________________

Class and Object Methods

Remember when we covered built-in functions in PHP? Well, we can combine that idea with our knowledge of classes and objects: that is, there are built-in PHP functions that tell us interesting information about the classes and objects we've created!

Check out the example in the editor to the right. We're demoing three useful built-in methods: is_a(), which we use to find out if a particular object is an instance of a given class; property_exists(), to see if an object has a given property; and method_exists(), to see if an object has a given method.

Note that the first argument is the object we're checking, and the second is the class, property, or method name as a "string".
____________________________________________________

<html>
  <head>
    <title>Class and Object Methods</title>
  </head>
  <body>
    <p>
      <?php
        class Person {
          public $isAlive = true;
          
          function __construct($name) {
              $this->name = $name;
          }
          
          public function dance() {
            return "I'm dancing!";
          }
        }
        
        $me = new Person("Shane");

        if (is_a($me, "Person")) {
          echo "I'm a person, ";
        }
        if (property_exists($me, "name")) {
          echo "I have a name, ";
        }
        if (method_exists($me, "dance")) {
          echo "and I know how to dance!";
        }
      ?>
    </p>
  </body>
</html>
____________________________________________________

Inheritance

As you've been thinking about classes and objects, you might have realized that one class might actually be a specialized type of another class. For instance, you might have a Vehicle class and a Truck class, and it would probably save you an awful lot of typing if you could somehow specify that Truck instances should automatically have many of the same properties and methods as Vehicle instances.

PHP allows us to accomplish this through a process called inheritance. Inheritance is a way for one class to take on the properties or methods of another class. You could say that the one class extends the other. This is used to express an "is-a" relationship—for example, a Truck "is-a" Vehicle, so it could inherit from Vehicle, but a Motorcycle isn't a Truck, so it shouldn't inherit from Truck (though both could inherit from Vehicle).

We can cause one PHP class to inherit from another with the extends keyword.
____________________________________________________

<html>
  <head>
    <title>The Shape of Things to Come</title>
  </head>
  <body>
    <p>
      <?php
        class Shape {
          public $hasSides = true;
        }
        
        class Square extends Shape {
        
        }
        
        $square = new Square();
        // Add your code below!
        if (property_exists($square, "hasSides")) {
          echo "I have sides!";
        }
      ?>
    </p>
  </body>
</html>

Output:
I have sides!
____________________________________________________

Overriding Parent Methods

Nice work!

Sometimes we want a child class (or subclass) to be able to override a property or method of its parent class (or superclass).

For instance, we might have a Shape class with a $sides property set to true, but we might want Square to override this property and set $sides to 4 (since a square always has four sides). That would look something like this:

class Shape {
  $sides = true;
}

class Square extends Shape {
  $sides = 4;
}

It's pretty easy—you just create a new property or method in the child class with the same name as the one in the parent class, and the child's version will always take precedence over the inherited version.
____________________________________________________

<html>
  <head>
    <title>Override!</title>
  </head>
  <body>
    <p>
      <?php
        class Vehicle {
          public function honk() {
            return "HONK HONK!";
          }
        }
        // Add your code below!
        
        class Bicycle extends Vehicle {
            public function honk() {
                return "Beep beep!";
            }
        }
        
        $bicycle = new Bicycle();
        
        echo $bicycle->honk();       
        
      ?>
    </p>
  </body>
</html>
____________________________________________________

The Final Word

When you were a kid, one of your parents might have told you: "You're not doing that, and that's final!"

In PHP, a parent class can prevent its methods from being overridden by its children with—you guessed it—the final keyword.

You'd want to use the final keyword in your code to control what methods can be modified by a class' subclasses. For instance, you might want all Vehicles to have the same drive() method no matter what, so you would prefix its method definition with final, like so:

class Vehicle {
  final public function drive() {
    return "I'm drivin' here!";
  }
}
____________________________________________________

<html>
  <head>
    <title>Override!</title>
  </head>
  <body>
    <p>
      <?php
        class Vehicle {
          final public function honk() {
            return "HONK HONK!";
          }
        }
        // Add your code below!
        
        class Bicycle extends Vehicle {
            public function honk() {
                return "Beep beep!";
            }
        }
        
        $bicycle = new Bicycle();
        
        echo $bicycle->honk();       
        
      ?>
    </p>
  </body>
</html>

Output:
Fatal error: Cannot override final method Vehicle::honk() on line 19
____________________________________________________

Class Constants and Scope Resolution

We've talked a lot about changing variables in PHP, but sometimes we want variables that don't change. These are prefixed with the const keyword (short for constant).

PHP lets us set constants on a class-by-class basis! Each class has its own scope, which is the context in which its variables can be used.

class Immortal extends Person {
  // Immortals never die!
  const alive = true;
}

// If true...
if (Immortal::alive) {
  echo "I live forever!";
}
// echoes "I live forever!"
In the example above, we use :: to access the alive constant inside the Immortal class.

Note that constants do not start with $.
____________________________________________________

We've created the Ninja class for you in the editor.

Set a stealth constant to the string "MAXIMUM".

Then echo it to the page using Ninja::stealth.

That :: is the scope resolution operator.
____________________________________________________

<html>
  <head>
    <title>Scope it Out!</title>
  </head>
  <body>
    <p>
      <?php
      class Person {
          
      }
      class Ninja extends Person {
        // Add your code here...
        const stealth = "MAXIMUM";
      }
      // ...and here!
      echo Ninja::stealth;    
      
      ?>
    </p>
  </body>
</html>

Output:
MAXIMUM
____________________________________________________

The Static Keyword

Nice work!

You probably noticed that we could access the Ninja class constant without actually creating an instance of Ninja, and if you're particularly precocious, you might be wondering whether it's possible to access class properties or methods without creating an instance of the class. The answer: yes!

The static keyword lets you use a class' property or method without having to create an instance of that class. It works like this:

class Person {
  public static $isAlive = "Yep!"
  public static function greet() {
    echo "Hello there!";
  }
}

echo Person::$isAlive;
// prints "Yep!"
Person::greet();
// prints "Hello there!"

When combined with the scope resolution operator, this lets us access class information without having to instantiate anything. Neat, right?
____________________________________________________

<html>
  <head>
    <title></title>
  </head>
  <body>
    <p>
      <?php
        class King {
          // Modify the code on line 10...
          public static function proclaim() {
            echo "A kingly proclamation!";
          }
        }
        // ...and call the method below!
        echo King::proclaim();
      ?>
    </p>
  </body>
</html>

Output:
A kingly proclamation!
____________________________________________________

Putting It All Together

Great work! You've learned a lot so far, including:

Useful object and class methods, like property_exists() and method_exists();
Inheritance;
How child classes can override the behavior of their parents;
How parent classes can prevent this with the final keyword;
What class constants are and how to reach them using the scope resolution operator, ::;
How to access class methods and properties without creating an instance of the class by using the static keyword and the scope resolution operator together.

Let's put all our newfound knowledge to work in one final (pun intended) exercise!
____________________________________________________

<html>
  <head>
    <title></title>
  </head>
  <body>
    <p>
      <?php
      
      class Person {
        public static function say() {
           echo "Here are my thoughts!";
        }
      }
      
      class Blogger extends Person {
          const cats = 50;
      }
      
      echo Blogger::say()."<br>";
      echo Blogger::cats;
            
      ?>
    </p>
  </body>
</html>

Output:
Here are my thoughst!50
____________________________________________________

Review of Arrays

Arrays are a useful way to store multiple values, like numbers, strings, and even other arrays:

$myArray = array(1, 2, 3);

Here we create an array of three numbers. Remember that array positions start from 0; therefore to access the third item in this array, we type:

$myArray[2];
____________________________________________________

<html>
  <head>
    <title>Array Review</title>
  </head>
  <body>
    <p>
      <?php
        $fruits = array('bananas', 'apples', 'pears');
        echo 'I love eating ' . $fruits[1] . ' too!';
      ?>
    </p>
  </body>
</html>

Output:
I love eating apples too!
____________________________________________________

Associative Arrays

So far, you have been accessing the values of an array using integers. This is all well and good, but if you want to be more descriptive of your data, you can make use of something called an associative array.

An associative array makes use of (key => value) pairs. Some languages may separate arrays from associative arrays, but PHP treats both as the same.

In the editor, you will see I have declared two variables as arrays. Have a look at the first array and see if you can guess what item those values may refer to?

Now have a look at the array below it. This is an associative array. It's defined as an array like the first one, but see how I have specified keys for each of the values?

Both arrays contain the same values, but in the associative array, we can access the value using a specified "key".
____________________________________________________

<html>
  <head>
    <title>Associate Arrays</title>
  </head>
  <body>
    <p>
      <?php
        // This is an array using integers as the indices...
        $myArray = array(2012, 'blue', 5);

        // ...and this is an associative array:
        $myAssocArray = array('year' => 2012,
                        'colour' => 'blue',
                        'doors' => 5);
            
        // This code will output "blue"...
        echo $myArray[1];
        echo '<br />';
            
        // ... and this will also output "blue"!
        echo $myAssocArray['colour'];
      ?>
    </p>
  </body>
</html>

Output:
blue
blue
____________________________________________________

Using Arrays as Maps

You can think of an associative array (also called a map) as being the same as a normal array, but instead of using an integer to refer to the value, you use a defined key.

While numeric indices may be fine for looping through an array and listing all of the values, what if we need to change a certain value from an array?
____________________________________________________

<html>
  <head>
    <title>Making the Connection</title>
  </head>
  <body>
    <p>
      <?php
        // This is an array using integers as the indices.
        // Add 'BMW' as the last element in the array!
        $car = array(2012, 'blue', 5, 'BMW');

        // This is an associative array.
        // Add the make => 'BMW' key/value pair!
        $assocCar = array('year' => 2012,
                   'colour' => 'blue',
                   'doors' => 5,
                   'make' => 'BMW');
            
        // This code should output "BMW"...
        echo $car[3];
        echo '<br />';
            
        // ...and so should this!
        echo $assocCar['make'];
      ?>
    </p>
  </body>
</html>

Output:
BMW
BMW
____________________________________________________

Accessing Associative Arrays

When accessing the values from either type of array, the only difference is whether you use an integer, or a specified key:

echo $car[1];
// prints 2012

echo $assocCar['year'];
// prints 2012
This exercise will demonstrate how useful specified keys in an array can be.
____________________________________________________

<html>
  <head>
    <title>Accessing Associative Arrays</title>
  </head>
  <body>
    <p>
      <?php
        // This is an array using integers as the indices...
        $myArray = array(2012, 'blue', 5, 'BMW');

        // ...and this is an associative array:
        $myAssocArray = array('year' => 2012,
                        'colour' => 'blue',
                        'doors' => 5,
                        'make' => 'BMW');
            
        // This code will output "blue".
        echo $myArray[1];
        echo '<br />';
            
        // Add your code here!
        echo "My car is a ".$myArray[1]." ".$myArray[0]." ".$myArray[3]." that has ".$myArray[2]." doors.<br>";
        
        echo "My car is a ".$myAssocArray['colour']." ".$myAssocArray['year']." ".$myAssocArray['make']." that has ".$myAssocArray['doors']." doors.";
        
      ?>
    </p>
  </body>
</html>

Output:
blue
My car is a blue 2012 BMW that has 5 doors.
My car is a blue 2012 BMW that has 5 doors.
____________________________________________________

Iterating Over Associative Arrays

Looping through an associative array is just as easy as looping through a normal array, but you obtain the value from a specified key, not an integer. Just like in the previous exercises!

If we only need to loop through the values of an array, we can use for. Have a look at the editor to see an example of this being used.

Remember, when using a for loop, calculate the length of the array first!

Then have a look at the foreach loop to see how we can get the key and value of each pair in the array.
____________________________________________________

<html>
  <head>
    <title>Iteration Nation</title>
  </head>
  <body>
    <p>
      <?php    
        $food = array('pizza', 'salad', 'burger');
        $salad = array('lettuce' => 'with',
                   'tomato' => 'without',
                   'onions' => 'with');
    
      // Looping through an array using "for".
      // First, let's get the length of the array!
      $length = count($food);
    
      // Remember, arrays in PHP are zero-based:
      for ($i = 0; $i < $length; $i++) {
        echo $food[$i] . '<br />';
      }
    
      echo '<br />I want my salad:<br />';
    
      // Loop through an associative array using "foreach":
      foreach ($salad as $ingredient=>$include) {
        echo $include . ' ' . $ingredient . '<br />';
      }
    
      echo '<br />';
    
      // Create your own array here and loop
      // through it using foreach!
      $burger = array('bacon' => 'with',
                    'cheese' => 'and',
                    'lettuce' => 'and',
                    'tomato' => 'and',
                    'pickles.' => 'but without');
    
      $assocLength = count($burger);
      echo count($burger).'<br><br>';
      
      for ($a = 0; $a < $assocLength; $a++) {
            echo $burger[$a].'<br>';
      }
      
      echo '<br>I want my burger ';
      
      foreach ($burger as $toppings=>$include) {
          echo $include.' '.$toppings.' ';
      }

      ?>
    </p>
  </body>
</html>

Output:
pizza
salad
burger

I want my salad:
with lettuce
without tomato
with onions

5

Undefined offset: 0 (line 43)
Undefined offset: 1 (line 43)
Undefined offset: 2 (line 43)
Undefined offset: 3 (line 43)
Undefined offset: 4 (line 43)

I want my burger with bacon and cheese and lettuce and tomato but without pickles.
____________________________________________________

Multidimensional Arrays

Not only can you store integers and strings in arrays, you can also store... other arrays! This is called a multidimensional array.

How do we do this? Well, just like a normal array with comma-separated values, but you would put comma-separated arrays instead—just like the code in the editor.

$deck is an array which contains 3 rows, each being a playing card. Within each row, it has the name of the card, along with the value.

To retrieve a card, we would first get the row for that card, then get the value we require (either to display the card, or calculate the player's total).

If we access $deck[2], we would get the third row (remember, arrays start from 0 in PHP!)

That will return another array containing 2 values: the first (0) which is a string that has the value "7 of Diamonds", and the second (1) which is an integer that has the value 7.

If we want the "7 of Diamonds" string, we would simply use $deck[2][0];.

Simple!
____________________________________________________

<html>
  <head>
    <title>Blackjack!</title>
  </head>
  <body>
    <p>
      <?php
        $deck = array(array('2 of Diamonds', 2),
                      array('5 of Diamonds', 5),
                      array('7 of Diamonds', 7),
                      array('3 of Diamonds', 3));
        
      // Imagine the first chosen card was the 7 of Diamonds.
      // This is how we would show the user what they have:
      echo 'You have the ' . $deck[2][0] . '!';
      ?>
    </p>
  </body>
</html>

Output:
You have the 7 of Diamonds!
____________________________________________________

Putting it All Together

This is the time to practice everything you've learned so far about associative arrays. Here's some quick reminders:

Arrays in PHP are zero-based (this means the numeric ID of the first value in the array will always be 0, not 1).

An array can contain values ("val1", "val2", etc... )

As an associative array, it can contain keys and values ("key1" => "val1", "key2" => "val2", etc... )

A multidimensional array can contain arrays within arrays!

To loop through an array containing values only, you can use the for loop. For an array containing keys and values, you can use the foreach loop.
____________________________________________________

<html>
  <head>
    <title>I am the King of Arrays!</title>
  </head>
  <body>
    <p>
      <?php
      // On the line below, create your own associative array:
        $myArray = array('dog', 'cat', 'fish', 'lizard', 'bird');

      // On the line below, output one of the values to the page:
        echo $myArray[0].'<br><br>';
          
      // On the line below, loop through the array and output
      // *all* of the values to the page:
        foreach ($myArray as $animals) {
            echo $animals.'<br>';
        }
     
      ?>
    </p>
  </body>
</html>

Output:
dog
dog
cat
fish
lizard
bird
____________________________________________________

<html>
  <head>
    <title>I am the King of Arrays!</title>
  </head>
  <body>
    <p>
      <?php
      // On the line below, create your own associative array:
        $myArray = array('dog', 'cat', 'fish', 'lizard', 'bird');

        $myAsArray = array('dog' => 'black',
                            'cat' => 'white',
                            'fish' => 'blue',
                            'lizard' => 'green',
                            'bird' => 'yellow');    
               
        $myMultArray = array(array('pug', 'chihuahua', 'terrier'),
                             array('calico', 'manx', 'siamese'),
                             array('cichlid', 'tetra', 'loach'),
                             array('chameleon', 'gecko', 'skink'),
                             array('cardinal', 'finch', 'nuthatch'));

      // On the line below, output one of the values to the page:
        echo $myArray[0].'<br>';
        echo $myAsArray['dog'].'<br>';
        echo $myMultArray[2][0].'<br><br>';

      // On the line below, loop through the array and output
      // *all* of the values to the page:
        foreach ($myArray as $animals) {
            echo $animals.'<br>';
        }
        echo '<br>';

        foreach ($myAsArray as $animal=>$color) {
            echo $animal.' - '.$color.'<br>';
        }
        echo '<br>';

        foreach ($myMultArray as $species) {
            foreach ($species as $breed) {
            echo $breed.'<br>';
            }
        }
      ?>
    </p>
  </body>
</html>

Output:
dog
black
cichlid

dog
cat
fish
lizard
bird

dog - black
cat - white
fish - blue
lizard - green
bird - yellow

pug
chihuahua
terrier
calico
manx
siamese
cichlid
tetra
loach
chameleon
gecko
skink
cardinal
finch
nuthatch
____________________________________________________

Another student's example:

<html>
  <head>
    <title>Array Review</title>
  </head>
  <body>
    <p>
      <?php
         $myArray = array(array("Japaneseclass",1),
                    array("Englishclass" ,3));

      // On the line below, output one of the values to the page:
     print "The number of students in ".$myArray[0][0]. " is " . $myArray[0][1] .'<br/>';
     print   "The number of students in " .$myArray[1][0]. " is " .$myArray[1][1].'<br/>';
      
      // On the line below, loop through the array and output
      // *all* of the values to the page:
      $length = count($myArray);
     for ($i=0;$i<$length;$i++) {
         print "The number of students in " .$myArray[$i][0]. " is " .$myArray[$i][1];
         print '<br/>';
     }
      ?>
    </p>
  </body>
</html>

Output:
The number of students in Japaneseclass is 1
The number of students in Englishclass is 3
The number of students in Japaneseclass is 1
The number of students in Englishclass is 3
____________________________________________________


____________________________________________________


____________________________________________________