# Create a new script.

# Use the input() function to ask the user of your script for their name. 
# If the name they input is your name, print a personalized welcome message. 
# If not, print a different personalized message.

user_name = input('Please enter your name: ')


if user_name == "Shamim":
    print("Hello, "+ user_name +", Welcome!")
else:
    print("Hello, "+ user_name +", How can I help you?")