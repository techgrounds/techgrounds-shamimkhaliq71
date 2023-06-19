# Networking case study

Case studies are a little different from the regular exercises you do here at Techgrounds. Up until now every exercise has introduced a new topic, where you had to figure out how to make it work. In a case study we combine your previously learned knowledge with a real life example (or a fictional example closely resembling a real life situation).

In this case study you take the role of a network administrator setting up a network in the new office of a small e-commerce company. Of course there are multiple ways to go about this problem, but this company has specifically said that network security is extremely important to them.

The office contains the following devices:

A web server where our webshop is hosted:

- Implement strong access controls to restrict access to the web server, allowing only authorized personnel to manage and update the webshop. 
- Regularly update and patch the web server software to address any known vulnerabilities.
- Utilize secure communication protocols, such as HTTPS, to encrypt data transmitted between the web server and clients.
- Implement intrusion detection and prevention systems to monitor and protect against potential attacks.
- Implement web application firewalls (WAF) to filter and block malicious traffic targeting the web server.

A database with login credentials for users on the webshop:

- Implement user authentication mechanisms, such as strong passwords or multi-factor authentication (MFA), to prevent unauthorized access.
- Regularly update and patch the operating systems and applications installed on the workstations to address security vulnerabilities.
- Utilize anti-malware and antivirus software to detect and remove malicious software.
- Educate office workers about security best practices, such as avoiding suspicious email attachments or links, and being cautious of phishing attempts.
- Enable firewalls on the workstations to control inbound and outbound network traffic.

5 workstations for the office workers:
-all of the above.
- Security is a collective effort, and it's important to foster a culture of security within the organization. 
- Regularly review and update security policies, perform security audits, and stay informed about the latest threats and security best practices to ensure the ongoing protection of the workstations and the data they handle.

A printer:

- Change default login credentials and implement access controls to restrict printer administration to authorized personnel.
- Regularly update the printer firmware to address security vulnerabilities.
- Securely configure network settings on the printer, such as disabling unnecessary services and enabling encryption for print jobs.
- Protect sensitive documents by using secure printing features that require user authentication at the printer before printing.


An AD server:

- Implement strong access controls and authentication mechanisms for the AD server to prevent unauthorized access and privilege escalation.
- Regularly update and patch the AD server software to address security vulnerabilities.
- Implement secure configurations for the AD server, such as strong password policies and account lockout policies.
-Monitor and log AD server activities to detect any suspicious or unauthorized actions.

A file server containing internal documents:

- Implement access controls and permissions on the file server to ensure that only authorized users can access sensitive internal documents.
- Regularly back up the files on the server to prevent data loss in case of incidents.
- Encrypt sensitive files or folders to protect them from unauthorized access or theft.
- Implement file integrity monitoring to detect any unauthorized changes or modifications to the files.

As a network administrator you get to choose which networking devices get used.

Network security is very important, so keep following thins in mind;
When web security is important, there are several key considerations to keep in mind:

- Encryption: Use secure protocols such as HTTPS (HTTP over SSL/TLS) to encrypt the communication between web browsers and your web servers. This helps protect sensitive data from eavesdropping and tampering.

- Input Validation: Validate and sanitize all user input to prevent common web vulnerabilities such as cross-site scripting (XSS) and SQL injection attacks. Implement strict validation rules to ensure that only expected and safe data is accepted by your web applications.

- Access Control: Implement proper access control mechanisms to ensure that users can only access the resources they are authorized to access. Apply the principle of least privilege, granting users the minimum privileges necessary to perform their tasks.

- Security Updates: Regularly update and patch your web servers, content management systems, and other web applications to address known security vulnerabilities. Keep track of security advisories and promptly apply patches to mitigate potential risks.

- Secure Coding Practices: Follow secure coding practices and guidelines when developing web applications. This includes avoiding insecure coding practices such as hardcoded passwords, using prepared statements or parameterized queries to prevent SQL injection, and using secure APIs and libraries.

- Security Testing: Conduct regular security assessments and penetration testing of your web applications to identify and address vulnerabilities. Perform vulnerability scans, code reviews, and security audits to ensure that your web applications are secure.

- User Education: Educate your users about good security practices, such as using strong and unique passwords, being cautious of phishing attacks, and regularly updating their devices and software. Encourage them to report any suspicious activities or potential security breaches.

By considering these factors and implementing appropriate security measures, you can enhance the security of your web applications and protect them from potential threats and attacks.

- 
## Key-terms

Web server
Database
Login Credentials
Printer
AD server
File Server
Switch
Firewall
Network architecture
Network Diagram


## Opdracht

- Design a network architecture for the above use case.

![Networking_case_study](/00_includes/Networking_case_study_7.PNG)

- Explain your design decisions.

1. The internet connection is the external network through which the company's webshop will be accessible to customers and other online services. It is connected to the firewall for secure access.
2. The firewall acts as the first line of defense for the network, controlling and monitoring incoming and outgoing network traffic. It helps protect the network from unauthorized access, malicious attacks, and other security threats.
3. The web server hosts the company's webshop, which is a critical component of their e-commerce operations. It is placed behind the firewall to ensure that external access to the webshop is controlled and secure.
4. The database server stores the login credentials for users accessing the webshop. Placing it behind the firewall adds an extra layer of protection to the sensitive user data.
5. The switch provides network connectivity and facilitates communication between all the devices in the office, including the workstations, printer, AD server, and file server. It acts as a central point for network connections. Providdes extra security.
6. The workstations are used by office workers for their daily tasks. They are connected to the switch to access the network resources securely.
7. The printer is connected to the switch to allow printing capabilities for the office workers. It can be accessed securely within the local network.
8. The Active Directory (AD) server manages user accounts, permissions, and network resources within the organization. It is placed behind the firewall for secure management and access control.
9. The file server stores internal documents and files shared among the office workers. It is placed behind the firewall to ensure that only authorized users can access and retrieve sensitive company data.

Overall, this network setup prioritizes network security by placing critical components such as the web server, database server, AD server, and file server behind the firewall. Workstations and other devices are connected to the network through the switch to ensure secure communication and access to resources.



### Gebruikte bronnen

[https://app.diagrams.net/]
[Chatgpt]
[https://www.google.com/search?client=firefox-b-d&q=how+to+use+diagrams.net]


### Ervaren problemen
This was a difficult assignment for me, had to go over my past assignmnets to understand the place and purpose of divices.

### Resultaat
Please see screenshot