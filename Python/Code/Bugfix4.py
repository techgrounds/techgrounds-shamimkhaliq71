# '''
# The output should be:
# there are 0 kids on the street
# there are 1 kids on the street
# there are 2 kids on the street
# there are 3 kids on the street
# there are 4 kids on the street
# '''

foo = 0
while foo < 5:
	# we iterate from 0 to 5, and not till 5
    # while foo <= 5: ( the = was extra), take it out and write as above, 
    # than you get the right output.

	print('there are', foo, 'kids on the street')
	foo += 1



