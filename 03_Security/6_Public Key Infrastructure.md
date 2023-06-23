# Public Key Infrastructure

Public Key Infrastructure (PKI) is a framework that enables secure communication and authentication in the digital world. It's a set of roles, policies, hardware, software and procedures needed to create, manage, distribute, use, store and revoke digital certificates and manage public-key encryption.
It consists of three entities that assure you can communicate securely over an insecure network like the public internet. 
Public key infrastructure uses asymmetric encryption methods to ensure that messages remain private and also to authenticate the device or user sending the transmission. Asymmetric encryption involves the use of a public and private key.
The core of a public key infrastructure is trust. It is important for a recipient entity to know without a doubt that the sender of the digital certificate is exactly who they claim to be. 
Trusted third-party CAs can vouch for the sender and help to prove that they are indeed who they say they are. Digital certificates are used to verify digital identities. 

Digital certificates are also called PKI certificates or X.509 certificates. A PKI certificate offers proof of identity to a requesting entity, which is verified by a third party and works like a digital passport or driver’s license. 
X.509 is the standard which defines the process in which a PKI should function. There are many ways of implementing a PKI, not all of them comply with the X.509 standard.

The PKI certificate will contain the following:

Distinguished name (DN) of the owner
Owner’s public key
Date of issuance
Expiration date
DN of the issuing CA
Issuing CA’s digital signature

## Key-term

- Public Key Infrastructure (PKI): is a set of roles, policies, hardware, software and procedures needed to create, manage, distribute, use, store and revoke digital certificates and manage public-key encryption.
- openssl: This is the basic command line tool for creating and managing OpenSSL certificates, keys, and other files.
- req: This subcommand specifies that we want to use X.509 certificate signing request (CSR) management. The “X.509” is a public key infrastructure standard that SSL and TLS adheres to for its key and certificate management. We want to create a new X.509 cert, so we are using this subcommand.
- x509: This further modifies the previous subcommand by telling the utility that we want to make a self-signed certificate instead of generating a certificate signing request, as would normally happen.
- nodes: This tells OpenSSL to skip the option to secure our certificate with a passphrase. We need Apache to be able to read the file, without user intervention, when the server starts up. A passphrase would prevent this from happening because we would have to enter it after every restart.
- days 365: This option sets the length of time that the certificate will be considered valid. We set it for one year here.
- newkey rsa:2048: This specifies that we want to generate a new certificate and a new key at the same time. We did not create the key that is required to sign the certificate in a previous step, so we need to create it along with the certificate. The rsa:2048 portion tells it to make an RSA key that is 2048 bits long.
- keyout: This line tells OpenSSL where to place the generated private key file that we are creating.
- out: This tells OpenSSL where to place the certificate that we are creating.

## Opdracht

Requirements:
Your Linux machine
An internet browser

1. Create a self-signed certificate on your VM.

In order to generated a self-signed key we will use openssl by entering the following command:

- req:specifies that I want to use the X.509 standard for creating a certificate 
- x509:This tells that I want to make a self-signed certificate (so no csr)
- nodes:No passphrase for the certificate
- days 365:validity length
- newkey rsa:2048:Generates a new key + certificate at the same time. RSA key 2048bits long
- keyout:location to place the key file
- out:location to place the certificate 

Type in command as followes:

sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt

![Self signed certificate](/00_includes/Security/Self%20signed%20certificate.jpg)

2. Analyze some certification paths of known websites (ex. techgrounds.nl / google.com / ing.nl).

- Open chosen website in brouwser
- By clicking on the security lock next to the address bar we can discover the certificate path:

![Cert Path Techgrounds](/00_includes/Security/Sec_6/Cert%20path%20Techgrounds.jpg)

3. Find the list of trusted certificate roots on your system (bonus points if you also find it in your VM).

To find the list of trusted certificates, I took the following steps:

Launch the certification manager:
On my laptop type: Windows-key + R  and type in "certmgr.msc" after hitting enter you see the the list and than I expanded the Trusted root certification (Vertrouwde uitgevers) folder.

Inside I found the list the following listin the screenshot.

![Trusted cert root_Windows](/00_includes/Security/Sec_6/Trusted%20cert%20root_Windows.jpg)


Bonus: List of trusted certificate roots in VM




### Gebruikte bronnen

[https://en.wikipedia.org/wiki/Public_key_infrastructure]
[https://www.okta.com/identity-101/public-key-infrastructure/#:~:text=It%20is%20the%20set%20of,user%20sending%20the%20digital%20communication.]
[https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-apache-in-ubuntu-16-04]


### Ervaren problemen

The second question the padlock on the website brouwer wasn't working, ut the next morning it worked again. 

### Resultaat

See screenshots