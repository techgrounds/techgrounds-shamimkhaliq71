# Create a new script.

# Ask the user of your script for a number. 
# Give them a response based on whether the number is higher than, 
# lower than, or equal to 100.

# Compare the entered number with 100
# Make the game repeat until the user inputs 100.

user_number = int(input("Enter a number please: "))
print(user_number)  

if user_number > 100:
    print('Sorry, thats too high. ')
elif user_number < 100:
    print('Sorry, wrong number. ')
else:
    print("You are a winner.") 
