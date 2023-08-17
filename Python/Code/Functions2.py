# Create a new script.

# Write a custom function myfunction() that prints “Hello, world!” to the terminal. 
# Call myfunction.

# Rewrite your function so that it takes a string as an argument. 
# Then, it should print “Hello, <string>!”.

# create myfunction()
def myfunction():
    print("Hello, World!")

# Call myfunction()
myfunction()   

# String as argument
def myfunction(str):
    print(f"Hello, {str}")

myfunction("Shamim")