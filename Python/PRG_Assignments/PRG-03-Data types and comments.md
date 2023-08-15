# Data types and comments

Under the hood, a computer can only see strings of zeros and ones. Programming languages make use of data types to tell the computer how to interpret those strings.
For example, when the computer needs to read the binary string 01000001, it will need to know the data type to determine whether it means 65 or “A”.

This is a non-exhaustive list of some of the most important data types in Python:

- boolean
A binary state that is either True or False.
boolean = True

- string
Texual data surrounded by quotes.
Strings are denoted using “ ” double quotes or ‘ ’ single quotes.
string = "This is a string"

- int(integer): Numeric data
An integer is a whole number. Ints can be both positive and negative.
integer = 6

- float (Numeric data)
A floating-point number is a decimal number.
floating_point = 18.5

Comments are lines that do not get processed as code. This can be used for multiple purposes. For example, you can write a short description of what a block of code does. You can also ‘comment out’ some code, so that it is temporarily removed. This can be useful for testing and debugging.

Requirements:
Python
VS Code


## Key-terms

boolean is false or true
string is a serie of characters
integer(int) is a whole number
float is a decimal
floating_point

## Opdracht

Exercise 1:

Create a new script.
Copy the code below into your script.
a = 'int'
b = 7
c = False
d = "18.5"

Determine the data types of all four variables (a, b, c, d) using a built in function.
Make a new variable x and give it the value b + d. Print the value of x. This will raise an error. Fix it so that print(x) prints a float.
Write a comment above every line of code that tells the reader what is going on in your script.

- You can add a comment by adding # infront of your comment and put in your text. The reader can understand what you have done, but Python ignores the text.

![Alt text](<../../00_includes/Python/Data types/Data type1.jpg>)

Exercise 2:

Create a new script.
Use the input() function to get input from the user. Store that input in a variable.
Find out what data type the output of input() is. See if it is different for different kinds of input (numbers, words, etc.).

- Use input funtion() to get input from the user.
- Input function9() is in string form. 
- We can convert string to integer, we use int() function
- We can convert string to float, we use float() function
- We can only convert numeric strings to numbers, otherwise you get an error.

![Alt text](<../../00_includes/Python/Data types/Data type2.jpg>)


### Gebruikte bronnen

[https://www.youtube.com/watch?v=gCCVsvgR2KU]
[https://www.toppr.com/guides/python-guide/references/methods-and-functions/methods/built-in/type/python-type/]
[https://www.youtube.com/watch?v=DRBybZ6hsY0&list=PL98qAXLA6afuh50qD2MdAj3ofYjZR_Phn&index=3]


### Ervaren problemen

No problems, because watched some very clear videos

### Resultaat

See screenshots