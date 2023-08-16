# Create a new script.

# Copy the code below into your script.

# for i in range(10):
	# do something here

# Print the value of i in the for loop. 
# You did not manually assign a value to i. Figure out how its value is determined.
# range is 0 to 9. Counts upwards from 0 till 9, which gives 10 counts.


# Add a variable x with value 5 at the top of your script.

x = 5

for i in range(10):
    print(i)
    

# Using the for loop, print the value of x multiplied by the value of i, for up to 50 iterations.


for i in range(50):
    print(x * i)

# The loop starts with for i in range(50):, 
# which means that the variable i will take on values from 0 to 49 (50 iterations in total).
# Inside the loop, print(x * i) calculates the result of multiplying the value of x by the current value of i 
# and then prints that result.