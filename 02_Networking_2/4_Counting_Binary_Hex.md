# Counting in Binary and Hex

Counting in binary is a number system that uses only two digits: 0 and 1. Each digit represents a power of 2, starting from the rightmost position. As you count in binary, you increase the value of each digit by 1 until you reach the maximum value for that digit (1). Then, you reset the digit to 0 and carry over the "1" to the next digit on the left. This process continues until you have counted through all the positions. Binary counting is fundamental in computer systems because digital data is represented using binary digits (bits).

Counting in hexadecimal (hex) is a number system that uses 16 digits: 0-9 and A-F. Hexadecimal is commonly used in computing because it provides a more compact representation of binary data. Each digit in hex represents a power of 16, similar to the decimal system. Hex digits from 0 to 9 represent values from 0 to 9, and digits A to F represent values from 10 to 15. Hex counting allows for concise representation of large binary numbers and simplifies the manipulation and conversion of data in computer systems.

## Key-terms

Binary: this is the most basic of counting systems, and the way that computers function. Everything from the pixels you’re reading right now, to complex maths, can be boiled down to a lot of 1’s and 0’s. A lot.

Decimal: this is a counting system comes from the greek prefix ‘dec’ meaning ten. This makes sense to us because humans have 10 fingers to count on, and thus we developed ten digits in which to count: 0, 1, 2, 3, 4, 5, 6, 7, 8, 9.

Hex: is also a counting system, however requires far less digits to represent a number than both binary and decimal, and isn’t overly hard for computers to understand.

## Opdracht

~~~~
Translate the following decimal numbers into binary:

Decimal
Binary
16: 16:2=8 remainder  0
8:2= 4 remainder 0
4:2= 2 remainder 0
2:2= 1 remainder 0
1:2= 0 remainder 1
Binary = 10000

128: 128:2= 64 remainder 0
64:2= 32 remainder 0
32:2= 16 remainder 0
16:2= 8 remainder 0
8:2= 4 remainder 0
4:2= 2 remainder 0
2:2=1 remainder 0
1:2=0 remainder 1
Binary = 10000000

228:2= 114 remainder 0
114:2= 57 remainder 0
57:2= 28 remainder 1
28:2= 14 remainder 0
7:2= 3 remainder 1
3:2= 1 remainder 1
1:2= 0 remainder 1
Binary =1110100

112:2= 56 remainder 0
56:2= 28 remainder 0
28:2= 14 remainder 0
14:2= 7 remainder 0
7:2= 3 remainder 1
3:2= 1 remainder 1
1:2= 0 remainder 1 
Binary = 1110000 

73:2= 36 remainder 1
36:2= 18 remainder 0
18:2= 9 remainder 0
9:2= 4 remainder 1
4:2= 2 remainder 0
2:2= 1 remainder 0
1:2= 0 remainder 1
Binary = 1001001
~~~~

~~~~
Translate the following binary numbers into decimal:

Binary: 1010 1010
(1 * 2^7) + (0 * 2^6) + (1 * 2^5) + (0 * 2^4) + (1 * 2^3) + (0 * 2^2) + (1 * 2^1) + (0 * 2^0)

= (1 * 128) + (0 * 64) + (1 * 32) + (0 * 16) + (1 * 8) + (0 * 4) + (1 * 2) + (0 * 1)

= 128 + 0 + 32 + 0 + 8 + 0 + 2 + 0

= 170

Binary: 1111 0000
(1 * 2^7) + (1 * 2^6) + (1 * 2^5) + (1 * 2^4) + (0 * 2^3) + (0 * 2^2) + (0 * 2^1) + (0 * 2^0)

= (1 * 128) + (1 * 64) + (1 * 32) + (1 * 16) + (0 * 8) + (0 * 4) + (0 * 2) + (0 * 1)

= 128 + 64 + 32 + 16 + 0 + 0 + 0 + 0

= 240 Decimal

Binary: 1101 1011
(1 * 2^7) + (1 * 2^6) + (0 * 2^5) + (1 * 2^4) + (1 * 2^3) + (0 * 2^2) + (1 * 2^1) + (1 * 2^0)

= (1 * 128) + (1 * 64) + (0 * 32) + (1 * 16) + (1 * 8) + (0 * 4) + (1 * 2) + (1 * 1)

= 128 + 64 + 0 + 16 + 8 + 0 + 2 + 1

= 219 Decimal

Binary: 1010 0000
(1 * 2^7) + (0 * 2^6) + (1 * 2^5) + (0 * 2^4) + (0 * 2^3) + (0 * 2^2) + (0 * 2^1) + (0 * 2^0)

= (1 * 128) + (0 * 64) + (1 * 32) + (0 * 16) + (0 * 8) + (0 * 4) + (0 * 2) + (0 * 1)

= 128 + 0 + 32 + 0 + 0 + 0 + 0 + 0

= 160 Decimal

Binary: 0011 1010
(0 * 2^7) + (0 * 2^6) + (1 * 2^5) + (1 * 2^4) + (1 * 2^3) + (0 * 2^2) + (1 * 2^1) + (0 * 2^0)

= (0 * 128) + (0 * 64) + (1 * 32) + (1 * 16) + (1 * 8) + (0 * 4) + (1 * 2) + (0 * 1)

= 0 + 0 + 32 + 16 + 8 + 0 + 2 + 0

= 58 Decimal

~~~~

~~~~
Translate the following decimal numbers into hexadecimal:
Decimal
Hex
15:16=0 remainder 15
0:16=0 remainder 0
Hex of 15 = F

37:16= 2 remainder 5
2:16= 0 remainder 2 
Hex of 37 = 25

246:16= 15 remainder 6
6:16=0 remainder 6
Hex of 246 = 5F6

125:16= 7 remainder 13
7:16= 0 remainder 7
Hex of 125 = 7D

209:16= 13 remainder 1
13:16=0 remainder 13
Hex of 209 = 1D
~~~~

~~~~
Translate the following hexadecimal numbers into decimal:
Hex
Decimal
Hex 88 = (8 * 16^1) + (8 * 16^0) = (8 * 16) + (8 * 1) = 128 + 8 = 136 Decimal

Hex e0 = (14 * 16^1) + (0 * 16^0) = (14 * 16) + (0 * 1) = 224 + 0 = 224 Decimal

Hex cb = (12* 16^1) + (11 * 16^0) = (12 * 16) + (11 * 1) = 192 + 11 = 203 Decimal

Hex 2f = (2 * 16^1) + (15 * 16^0) = (2 * 16) + (15 * 1) = 32 + 15 = 47 Decimal

Hex d8 = (13 * 16^1) + (8 * 16^0) = (13 * 16) + (8 * 1) = 208 + 8 = 216 Decimal
~~~~



### Gebruikte bronnen

[https://core-electronics.com.au/guides/digital-electronics/counting-with-hexadecimal-binary-and-decimal/]


### Ervaren problemen
I didn't know how to calculate, Binary to Decimals or Decimals to Hex or the otherway around. I was finding it very difficult, but after reading the explaination and a lot of practice. I am now able to calculate it all.

### Resultaat
See calculation results and steps taken to reach to end results.