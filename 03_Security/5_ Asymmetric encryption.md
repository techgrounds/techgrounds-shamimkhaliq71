# Asymmetric encryption

The previous assignment introduced you to cryptography and symmetric encryption. In the previous exercise, you shared your encryption key with the recipient of your message. This means that anyone who has the key can decrypt the message.

Asymmetric encryption solves this issue. Instead of 1 key, you get 2: A public key, and a private key


## Key-terms

- Encryption: Encryption takes plain text, like a text message or email, and scrambles it into an unreadable format — called “cipher text.” This helps protect the confidentiality of digital data either stored on computer systems or transmitted  through a network like the Internet. 

- Decryption: reverse process of encryption, which involves converting ciphertext back into plaintext using a decryption algorithm and a secret key.

- Asymmetric encryption: uses two keys for encryption and decryption. A public key, which is shared among users, encrypts the data. A private key, which is not shared, decrypts the data. 

- Symmetric: encryption uses a single password to encrypt and decrypt data.

- Key:  it locks (encrypts) data so that only someone with the right key can unlock (decrypt) it. It tells you how to arrange the Cipher rules.

- Cipher: also called encryption algorithms, are systems for encrypting and decrypting data. A cipher converts the original message, called plaintext, into ciphertext using a key to determine how it is done.
Ciphers are generally categorized according to how they work and by how their key is used for encryption and decryption.
A ciphir is a set of rules you are using to encode the information.

- Rivest-Shamir-Adleman (RSA): RSA is an asymmetric encryption algorithm widely used for secure communication and digital signatures. It was invented by Ron Rivest, Adi Shamir, and Leonard Adleman in 1977 and remains one of the most popular public-key encryption schemes. RSA is based on the mathematical complexity of factoring large prime numbers. It uses a public-private key pair, where the sender encrypts the message using the recipient's public key, and the recipient decrypts it using their private key. RSA is commonly used in secure email communication, digital certificates, and secure online transactions.

## Opdracht

Requirments for this assigment:
- The Slack channel you share with your entire cohort
- A peer to send the message too via the public Slack channel.
- A key pair generator like https://travistidwell.com/jsencrypt/demo/

1. Generate a key pair.

For this assignment we will focus on the asymmetric encryption. This method uses a pair of keys: a public key and a private key. It provides a secure way to communicate and exchange information over untrusted channels, ensuring confidentiality, integrity, and authentication.
In asymmetric encryption, the public key is freely shared and used for encrypting data, while the private key is kept secret and used for decrypting the encrypted data.

![Asymmetric Encryption](/00_includes/Security/Sec_5/Asymmetric%20Encryption.jpg)

For this we will be using the online RSA Key Generator. 

2. Send an asymmetrically encrypted message to one of your peers via the public Slack channel. They should be able to decrypt the message using a key. The recipient should be able to read the message, but it should remain a secret to everyone else. You are not allowed to use any private messages or other communication channels besides the public Slack channel. 

- We first generate a RSA Public and private key that we can use to encrypt and open files.
- I pass my public key on to my peers so they can use it to send me a message.
- They will then write their own message and encrypt it under my public key. There will be an encrypted message that can then be sent to me.
- I copy this message and use a decryptor. together with my private key below. I don't share my private key with anyone. I'm the only one who can see messages encrypted with my public key.
- I paste this into the RSA decryptor with the text above it and my private key below it. and so we get an output that can only be seen by me.

![Generate key pair](/00_includes/Security/Sec_5/Generate%20Key%20pair.jpg)

3. Analyse the difference between this method and symmetric encryption.

- Symmetric encryption uses the same secret key for both encryption and decryption, while asymmetric encryption involves a pair of keys: a public key for encryption and a private key for decryption. With symmetric encryption, the shared key needs to be securely distributed, while asymmetric encryption allows the public key to be freely distributed while keeping the private key secret. Symmetric encryption is faster and more efficient computationally, while asymmetric encryption involves complex mathematical operations and is slower. Symmetric encryption provides confidentiality but lacks non-repudiation and authentication, whereas asymmetric encryption offers these additional security features. Symmetric encryption is suitable for encrypting large amounts of data, while asymmetric encryption is used for secure key exchange, digital signatures, and communication with unknown parties.


### Gebruikte bronnen

[https://travistidwell.com/jsencrypt/demo/]
[https://www.simplilearn.com/tutorials/cryptography-tutorial/asymmetric-encryption]
[https://us.norton.com/blog/privacy/what-is-encryption#:~:text=Encryption%20takes%20plain%20text%2C%20like,a%20network%20like%20the%20Internet.]


### Ervaren problemen
This assignment was easier to do, because I understood the method better and knew how to use a Key generator.

### Resultaat
See screenshots