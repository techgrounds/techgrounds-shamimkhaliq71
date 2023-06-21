# Symmetric encryption

Encryption is an important tool for securing data. Be it data at rest, or data in motion. A lot of what you do on your computer and the Internet is encrypted.

Throughout history humanity has come up with many ciphers to encode information. Most of these are symmetric ciphers, the most famous one being the Caesar cipher.

In this assignment you will learn about the basics of cryptography, starting with symmetrical encryption.


## Key-terms

- Encryption: Encryption takes plain text, like a text message or email, and scrambles it into an unreadable format — called “cipher text.” This helps protect the confidentiality of digital data either stored on computer systems or transmitted  through a network like the Internet. 

- Decryption: reverse process of encryption, which involves converting ciphertext back into plaintext using a decryption algorithm and a secret key.

- Asymmetric encryption: uses two keys for encryption and decryption. A public key, which is shared among users, encrypts the data. A private key, which is not shared, decrypts the data. 

- Symmetric encryption: uses a single password to encrypt and decrypt data.

- Key:  it locks (encrypts) data so that only someone with the right key can unlock (decrypt) it. It tells you how to arrange the Cipher rules.

- Cipher: also called encryption algorithms, are systems for encrypting and decrypting data. A cipher converts the original message, called plaintext, into ciphertext using a key to determine how it is done.
Ciphers are generally categorized according to how they work and by how their key is used for encryption and decryption.
A ciphir is a set of rules you are using to encode the information.


## Opdracht

Requirments to do this assignment:
The Slack channel you share with your entire cohort.
A peer to send the message too via the public Slack channel.


1. Find one more historic cipher besides the Caesar cipher.

One historic cipher besides the Caesar cipher is the Vigenère cipher. The Vigenère cipher was invented by Blaise de Vigenère in the 16th century and is a polyalphabetic substitution cipher. It is an improvement over the Caesar cipher as it uses a keyword to determine the shift value for each letter in the plaintext.

In the Vigenère cipher, the keyword is repeated until it matches the length of the plaintext. Each letter of the keyword corresponds to a shift value, and the plaintext is shifted by the corresponding amount. This makes it more secure than the Caesar cipher because it introduces variability in the shifting process.

To decrypt the Vigenère cipher, the recipient must know the keyword used by the sender. By applying the reverse shift with the keyword, the original plaintext can be recovered.

The Vigenère cipher was considered unbreakable for several centuries and was widely used for secure communication. However, with the advancement of modern cryptography techniques, the Vigenère cipher can be cracked using statistical analysis and frequency analysis methods. Nonetheless, it holds historical significance as an important step in the development of cryptographic systems.

2. Find two digital ciphers that are being used today.

Two digital ciphers that are widely used today are:

- Advanced Encryption Standard (AES): AES is a symmetric encryption algorithm that has become the de facto standard for secure data transmission and storage. It was selected by the U.S. National Institute of Standards and Technology (NIST) in 2001 to replace the aging Data Encryption Standard (DES). AES operates on blocks of data and supports key sizes of 128, 192, and 256 bits. It is highly secure and efficient, making it suitable for a wide range of applications, including secure communication, file encryption, and securing sensitive data in databases.

- Rivest-Shamir-Adleman (RSA): RSA is an asymmetric encryption algorithm widely used for secure communication and digital signatures. It was invented by Ron Rivest, Adi Shamir, and Leonard Adleman in 1977 and remains one of the most popular public-key encryption schemes. RSA is based on the mathematical complexity of factoring large prime numbers. It uses a public-private key pair, where the sender encrypts the message using the recipient's public key, and the recipient decrypts it using their private key. RSA is commonly used in secure email communication, digital certificates, and secure online transactions.

Both AES and RSA are widely used and trusted ciphers in modern cryptography, offering strong security and playing essential roles in ensuring the confidentiality, integrity, and authenticity of digital data.

3. Send a symmetrically encrypted message to one of your peers via the public Slack channel. They should be able to decrypt the message using a key you share with them. Try to think of a way to share this encryption key without revealing it to everyone. You are not allowed to use any private messages or other communication channels besides the public Slack channel. 

- To perform this task we will be using the Advanced Encryption Standard (AES), because this is a symmetric encryption algorithm. Keep in mind that Symmetric encryption uses a single password to encrypt and decrypt data.
- To understand the way AES works, you first need to learn how it transmits information between multiple steps. Since a single block is 16 bytes, a 4x4 matrix holds the data in a single block, with each cell holding a single byte of information.

![AES_block_16bytes](/00_includes/Security/Sec_4/AES_block_16bytes.jpg)

The matrix shown in the image above is known as a state array. Similarly, the key being used initially is expanded into (n+1) keys, with n being the number of rounds to be followed in the encryption process. So for a 128-bit key, the number of rounds is 16, with no. of keys to be generated being 10+1, which is a total of 11 keys.
However, to make life easy there are online AES generaters, which we will use.
The AES engine requires a plain-text and a secret key for encryption and same secret key is used again to decrypt it.



- Analyse the shortcomings of symmetric encryption for sending messages.




### Gebruikte bronnen

[https://us.norton.com/blog/privacy/what-is-encryption#:~:text=Encryption%20takes%20plain%20text%2C%20like,a%20network%20like%20the%20Internet.]
[https://www.hypr.com/security-encyclopedia/cipher]
[Chatgpt]
[https://www.simplilearn.com/tutorials/cryptography-tutorial/symmetric-encryption]
[https://www.simplilearn.com/tutorials/cryptography-tutorial/aes-encryption]
[https://www.javainuse.com/aesgenerator]


### Ervaren problemen

I found this assignment tricky and hard to understand. It was difficultto create a symmetric encryption, yet very simple using an online AES generator and I thought I had to do it all by myself doing calculations. 
At the end understood that online generators are easy to use, but my luck none of them would work for me.

### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]