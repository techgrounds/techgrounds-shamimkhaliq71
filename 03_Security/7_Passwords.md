# Passwords

In terms of factors of authentication, passwords fall into the ‘something you know’ category.
On the front-end, passwords can be guessed. This can be made harder with the following strategies:
Not using common passwords
Using longer passwords
Using special characters like @,*,%, etc.
Using a mixture of CAPITAL and small letters
Not using easily deducible passwords like birthdates or pet names
Using a different password for every login
Using a passphrase.
Of course, these strategies make it harder to remember your own passwords. Password managers were created to solve this problem.
On the back-end, passwords need to be stored securely. If your database (or /etc/shadow file in Linux) gets leaked or stolen, you don’t want anyone to just be able to read passwords in plaintext. This is why most stored passwords are hashed. Hackers will try to use a Rainbow Table to crack hashed passwords.


## Key-terms

Hashing: Hashing is the process of transforming any given key or a string of characters into another value. 

Rainbow table: A rainbow table is a database that is used to gain authentication by cracking the password hash. It is a precomputed dictionary of plaintext passwords and their corresponding hash values that can be used to find out what plaintext password produces a particular hash. Since more than one text can produce the same hash, it’s not important to know what the original password really was, as long as it produces the same hash.  

MD5 password hashes: (Message Digest Algorithm 5) is a widely used cryptographic hash function that produces a 128-bit (16-byte) hash value. In the context of password hashing, MD5 has been widely used historically but is now considered weak and insecure for this purpose.

Salting: The practice of adding a unique and random string of characters to a password before it is hashed. This additional string is called a salt. The purpose of salting is to make each password hash unique, even if the original passwords are the same.

## Opdracht

Requirements:
- Your Linux machine
- A peer
- An online Rainbow Table like https://crackstation.net/

1. Find out what hashing is and why it is preferred over symmetric encryption for storing passwords.

Hashing is a one-way process of converting input data of any size into a fixed-size string of characters, known as a hash value or hash code. The output hash is unique to the input data, meaning even a small change in the input will result in a significantly different hash.

When it comes to storing passwords, hashing is preferred over symmetric encryption because of its one-way nature. With hashing, the password is transformed into a hash value, but it cannot be easily reversed back to the original password. This provides an added layer of security, as even if the hashed password is obtained by an attacker, they would need to perform a brute-force or dictionary attack to find a matching input that produces the same hash.

2. Find out how a Rainbow Table can be used to crack hashed passwords.

A Rainbow Table is a precomputed table of hash values and their corresponding input values (usually passwords) for a specific hashing algorithm. It is used as a time-memory trade-off technique to speed up the process of cracking hashed passwords. Instead of performing brute-force or dictionary attacks by hashing and comparing each possible input value, a Rainbow Table allows an attacker to quickly look up the precomputed hash values and retrieve the corresponding original input values. This significantly reduces the time required to crack hashed passwords, as the attacker doesn't need to repeatedly hash and compare values. However, the effectiveness of a Rainbow Table is dependent on the size and coverage of the table, as well as the security measures such as salting and strong hashing algorithms employed to defend against it. To mitigate the risk of Rainbow Table attacks, it is essential to use strong and unique salts for each password and employ secure hashing algorithms that are resistant to precomputation attacks.

3. Below are two MD5 password hashes. One is a weak password, the other is a string of 16 randomly generated characters. 
Try to look up both hashes in a Rainbow Table.
03F6D7D1D9AAE7160C05F71CE485AD31
03D086C9B98F90D628F2D1BD84CFA6CA

We used the Crackstation to answer this above question.

![MD5 password strong](/00_includes/Security/Sec_7/MD5%20password%20strong.jpg)

![MD5 password not found](/00_includes/Security/Sec_7/MD5%20password%20not%20found.jpg)


4. Create a new user in Linux with the password 12345. Look up the hash in a Rainbow Table.
Despite the bad password, and the fact that Linux uses common hashing algorithms, you won’t get a match in the Rainbow Table. This is because the password is salted. 

![Add new user](/00_includes/Security/Sec_7/Add%20new%20user.jpg)

5. To understand how salting works, find a peer who has the same password in /etc/shadow, and compare hashes.

<Sinan>
$6$YUCZcsZfVOA3cyvt$K0OXmhet0EJEYK929ORQK85NNZ6fskbcT4vvZsVUsvni7oIifEfm4bURxCEJj8aO8cE./.Q5Z2z6hm5fKKP2r0

<Shamim>
$6$tx7nIrWg5Z/UdAtS$w1L8LGPKpMkOI/kau/eeOMjd6crHcOewV1HQY6/RrVYP6HT1eLAHPYtuv42fDx.aUJt0htTD3M8EwXsXcGzPq/:19531:0:99999:7:::

We can see that the two hashes are different.
After thouroughly analyzing the strings. The only similarity we discovered are the first three characters $6$

This is because "Salt" is added when creating the password. Nearly all distributions and variations of Unix, Linux, including our VM which runs on Ubuntu, use hashes with salts so that the risk of getting a password breach is minimized. Ubuntu uses the FIPS 140-2 level 1 security standard for its cryptographic modules and is certified.


### Gebruikte bronnen

[https://crackstation.net/]
[https://www.beyondidentity.com/glossary/rainbow-table-attack]
[https://www.geeksforgeeks.org/understanding-rainbow-table-attack/]


### Ervaren problemen

I need to read the questions properly, so that I don have to waist unneccery time searching for things which are already given.

### Resultaat
See screenshots