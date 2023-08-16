# Create a new script.

# Copy the code below into your script.
# Find out what datatype each variable is using the function type()

a = 'int'
b = 7
c = False
d = "18.5"

print(type(a))
print(type(b))
print(type(c))
print(type(d))


# Make a new variable x and give it the value b + d. This gave an error, because b is integer and d is a string.
# According to the error we cannot add a class type int and class type str together
# fixed d by converting it to a float

x = b + float(d)

# print value of x
print(x)

