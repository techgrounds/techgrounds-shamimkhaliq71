# Identity and Access Management

Security goes in two steps: authentication and authorization. Both are two different actions that happen whenever you log in.

Multi-factor authentication (MFA) is a common way to improve security.
It is best practice to follow the principle of least privilege for authorization.


## Key-terms

Authentication(AuthN): Authentication verifies the identity of a user or service. It's a process that verifies that someone or something is who they say they are. (eg. login detail check)

Authorization: Authorization determines their access rights. It's the security process that determines a user or service's level of access. (eg.Access Control Lists (ACLs) determine which users or services can access a particular digital environment, which data they have access to.)

Multi-factor authentication (MFA): Multi-factor Authentication (MFA) is an authentication method that requires the user to provide two or more verification factors to gain access to a resource such as an application, online account, or a VPN. MFA is a core component of a strong identity and access management (IAM) policy. Rather than just asking for a username and password, MFA requires one or more additional verification factors, which decreases the likelihood of a successful cyber attack.

Principle of least privilege (PoLP): It's an information security concept which maintains that a user or entity should only have access to the specific data, resources and applications needed to complete a required task.

## Opdracht

Study:
- The difference between authentication and authorization.
Authentication and authorization are two vital information security processes that administrators use to protect systems and information. Authentication verifies the identity of a user or service, and authorization determines their access rights.
Understanding the difference is crucial. Combined, they determine the security of a system. You cannot have a secure solution unless you have configured both authentication and authorization correctly.
Which comes first? As you cannot authorize a user or service before identifying them, authentication always comes before authorization

- The three factors of authentication and how MFA improves security.

MFA authentication methodology is based on one of three types of additional information:

Things you know (knowledge), such as a password or PIN
Things you have (possession), such as a badge or smartphone
Things you are (inherence), such as a biometric like fingerprints or voice recognition

MFA is a core component of a strong identity and access management (IAM) policy. Rather than just asking for a username and password, MFA requires one or more additional verification factors, which decreases the likelihood of a successful cyber attack.
![MFA](/00_includes/Sec_3/MFA.jpg)

- What the principle of least privilege is and how it improves security.

The principle of least privilege (PoLP) is an information security concept which maintains that a user or entity should only have access to the specific data, resources and applications needed to complete a required task.
By implementing the principle of least privilege, organizations can improve security in several ways:

Reducing Attack Surface: By limiting access rights and permissions, the potential attack surface is minimized. Attackers have fewer opportunities to exploit unnecessary privileges and gain unauthorized access.

Limiting Malicious Actions: If a user or process is compromised or intentionally malicious, the principle of least privilege ensures that their actions are restricted to only the authorized tasks. This helps prevent unauthorized data access, system modifications, or malicious activities.

Containing Breaches: In the event of a security breach or compromise, the principle of least privilege helps contain the impact. The compromised entity has limited access and cannot escalate privileges or move laterally within the network easily.

Preventing Human Errors: Human errors, such as accidental misconfigurations or unintended actions, can have serious security implications. By enforcing the principle of least privilege, the potential impact of such errors is minimized as users have restricted access to critical resources.

Overall, the principle of least privilege promotes the concept of providing access on a "need-to-know" and "need-to-do" basis, enhancing security by reducing vulnerabilities and limiting the potential damage that can be caused by malicious actors or mistakes.

### Gebruikte bronnen

[https://www.onelogin.com/learn/authentication-vs-authorization#:~:text=Authentication%20and%20authorization%20are%20two,authorization%20determines%20their%20access%20rights.]
[https://www.onelogin.com/learn/what-is-mfa]
[https://www.paloaltonetworks.com/cyberpedia/what-is-the-principle-of-least-privilege#:~:text=The%20principle%20of%20least%20privilege%20(PoLP)%20is%20an%20information%20security,to%20complete%20a%20required%20task.]
[Chatgpt]

### Ervaren problemen

Was very straight forward, just needed to understand the key terms.

### Resultaat
See screenshot and answers to the questions. And the fact that I have a much better understanding of, Authentication, Authorization  and MFA.