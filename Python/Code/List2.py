# Create a new script.

# Create a list of five integers.
# Use a for loop to do the following for every item in the list:
# Print the value of that item added to the value of the next item in the list. 
# If it is the last item, add it to the value of the first item instead (since there is no next item).


numbers = ['15', '25','35', '45','55']

for i in range(len(numbers)):
    current_item = numbers[i]
    if i == len(numbers) -1:
        next_item = numbers[0]

    else: 
        next_item = numbers [i + 1]

        result = current_item + next_item
        print(f"Sum of {current_item} and {next_item}: {result}")