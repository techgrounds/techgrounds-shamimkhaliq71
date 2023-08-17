# ^^^
# Output should be: 100
# ^^^

foo = 20
bar = '80'

# print(foo = bar) this is not correct

# By converting the string '80' to an integer using int(bar), you get the correct answer.

print(foo + int(bar))
