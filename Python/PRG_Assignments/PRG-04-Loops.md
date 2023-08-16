# Loops


You can use loops when you want to run a block of code multiple times. For example, you might want to do an operation on every item in a (large) list, or you want to write an algorithm that follows the same set of instructions for multiple iterations.
There are two types of loops in Python: the while loop and the for loop.

The while loop runs while a condition is true. They can run indefinitely if that condition never changes. If your code is stuck in an infinite loop, just press ctrl-c (or command-c on MacOS) to force quit the running code.

The for loop runs for a predetermined number of iterations. This number can be hard coded using the range() function, or dynamically assigned (using a variable, the size of a list, or the number of lines in a document). It is also possible to accidentally create an infinite for loop. You can use the same command (ctrl/cmd+c) to exit your program.

Requirements:
Python
VS Code

## Key-terms

Sequence: In Python it's a collection of items in an order.
Eg. Python is a string of 7 characters.  It can also be a list,including few items separated by comma's and enclosed between square brackets. ["","",""]

loops: When you want to run a block of code multiple times. There are two types of loops.

While loop: runs while a condition is true. Also known as infinit loop, it will run untill the memory is full., however, when the statement becomes false, the loop will stop.

For loop: runs for a predetermined number of iterations.
In Python, a for loop is used to iterate over sequences such as lists, tuples, string, etc.

## Opdracht

Exercise 1:

Create a new script.
Create a variable x and give it the value 0.
Use a while loop to print the value of x in every iteration of the loop. After printing, the value of x should increase by 1. The loop should run as long as x is smaller than or equal to 10.

Example output:

![Alt text](../../00_includes/Python/Loops/Loops1.jpg)


Exercise 2: 

Create a new script.
Copy the code below into your script.

for i in range(10):

	# do something here

- Print the value of i in the for loop. You did not manually assign a value to i. Figure out how its value is determined.
- The range is 0 to 9. Counts upwards from 0 till 9, which gives 10 counts.

![Alt text](../../00_includes/Python/Loops/Loops1.jpg)

![Alt text](<../../00_includes/Python/Loops/While loops2.jpg>)

- Add a variable x with value 5 at the top of your script.
Using the for loop, print the value of x multiplied by the value of i, for up to 50 iterations.

![Alt text](../../00_includes/Python/Loops/Loops_Range50.jpg)


Exercise 3: 

Create a new script.
Copy the array below into your script.
arr = ["Coen", "Casper", "Joshua", "Abdessamad", "Saskia"]
Use a for loop to loop over the array. Print every name individually.

Example output:

![Alt text](../../00_includes/Python/Loops/Loops2.jpg)





### Gebruikte bronnen

[https://www.youtube.com/watch?v=5AOfDuV6X30&list=PL98qAXLA6afuh50qD2MdAj3ofYjZR_Phn&index=8]
[https://www.youtube.com/watch?v=yaqMSBr_NCU&list=PL98qAXLA6afuh50qD2MdAj3ofYjZR_Phn&index=10]


### Ervaren problemen
Needed to understand properly what a while loop was and after wathing a good video, I understood how to do the assignment.

### Resultaat
See screenshots