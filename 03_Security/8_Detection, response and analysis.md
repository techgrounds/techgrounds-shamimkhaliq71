# Detection, response and analysis

So far, we’ve mostly looked at the prevention of attacks. While you want to prevent as many attacks as possible, some attacks will slip through your prevention systems. The most common method of getting malicious software (malware) into a network is through social engineering.

When getting hit with an attack, there are usually three steps to follow: Detection, response, and analysis.

Detecting an (attempted) attack is the first step to stopping it and to preventing future attempts. Tools like Wireshark can help analyse a network to detect anomalies. Intrusion detection systems (IDS) and intrusion prevention systems (IPS) are also used for this purpose.

- The first thing to do in response to a detected attack is trying to contain the damage. Depending on the kind of attack, the way you do this might differ. 
- After the attack is contained, you can try to figure out the root cause of the attack, so that you can stop it. 
- Finally, you enter the recovery phase, where you try to get all systems back online and you take stock of the damage done.

It is vitally important to have a plan in place for how to respond when an attack happens.
In the analysis phase, you document what you learned and harden your systems so that such an attack cannot happen again. Sometimes this can be as simple as updating the OS on a server.

Response, and analysis are part of a disaster recovery plan. This plan is an important part of a bigger business continuity plan. When a disaster strikes and infrastructure goes offline, a business could be done for. There are many strategies when it comes to mitigating a disaster. From just having a cold backup, to a redundant site.
For these strategies it is always important to keep track of the following metrics:
- How much data is lost on incident (Recovery Point Objective; RPO), 
- how long it takes to be back online (Recovery Time Objective; RTO), 
- and how much will it cost.


## Key-terms

- (IDS)Intrusion Detection Systems: a security tool or software that monitors network traffic and system activities to detect and alert potential unauthorized access attempts, malicious activities helping to protect against security breaches and intrusions.

- (IPS)Intrusion Prevention Systems: a security solution that actively monitors network traffic and takes immediate action to prevent potential security threats. It works by analyzing and blocking malicious activities, unauthorized access attempts, and suspicious behavior in real-time, providing an additional layer of defense to protect against network-based attacks.

- Systems hardening: the process of securing a computer system by implementing various measures, such as removing unnecessary services, applying security patches, configuring strict access controls, and implementing best practices, to reduce vulnerabilities and enhance overall system security.

- Recovery Point Objective (RPO): a metric used in disaster recovery planning that defines the maximum acceptable amount of data loss in the event of a system failure or disruption. It specifies the point in time to which data must be recovered to ensure business continuity.

- Recovery Time Objective (RTO): metric used in disaster recovery planning that represents the maximum acceptable downtime or duration within which a system or service should be restored after a disruption or failure.

- Disaster Recovery (in IT): a portfolio of policies, tools, and processes used to recover or continue operations of critical IT infrastructure, software, and systems after a natural or human-made disaster.

- Automatic failover: a resource that allows a system administrator to automatically switch data handling to a standby system in the event of system compromise.

- Hacking: Hacking in cyber security refers to the misuse of devices like computers, smartphones, tablets, and networks to cause damage to or corrupt systems, gather information on users, steal data and documents, or disrupt data-related activity.

## Opdracht

Study the following:
- IDS and IPS.
- Hack response strategies.
- The concept of systems hardening.
- Different types of disaster recovery options.

1. A Company makes daily backups of their database. The database is automatically recovered when a failure happens using the most recent available backup. The recovery happens on a different physical machine than the original database, and the entire process takes about 15 minutes. 

- What is the RPO of the database?

- A RPO (Recovery Point Objective) measures how much data in an IT system can be lost due to a disaster before it affects the business. It is usually measured in hours or days and determines the maximum time you are willing to accept between data backups.
In this case, since the company makes daily backups of their database, the RPO would be equal to the time between the most recent available backup and the occurrence of the failure. 
Given that the entire process of recovering the database on a different physical machine takes about 15 minutes, it means that the RPO would be approximately 15 minutes. This implies that the company can tolerate a maximum data loss of up to 15 minutes worth of data. Any data changes or updates made within the 15-minute interval before the failure would not be included in the recovered database.


2. An automatic failover to a backup web server has been configured for a website. Because the backup has to be powered on first and has to pull the newest version of the website from GitHub, the process takes about 8 minutes. 

- What is the RTO of the website?

RTO (Recovery Time Objective) is an essential metric that will help you calculate the time it takes to restore your system or application after a downtime period with minimal disruption to business operations. Essentially, it's the amount of downtime your company can comfortably handle.

Given that the process of powering on the backup server and pulling the newest version of the website from GitHub takes about 8 minutes, the RTO of the website would be approximately 8 minutes. This means that the company aims to have the website fully functional and accessible within 8 minutes after the failure occurs, ensuring minimal downtime and service disruption for users.


### Gebruikte bronnen

[https://ubuntu.com/blog/what-is-system-hardening-definition-and-best-practices]
[https://www.google.com/search?q=What+is+an+RPO+and+RTO%3F+and+why+you+NEED+to+understand+them+as+a+Solutions+Architect&rlz=1C1YTUH_nlNL998NL998&oq=What+is+an+RPO+and+RTO%3F+and+why+you+NEED+to+understand+them+as+a+Solutions+Architect&aqs=chrome..69i57.934j0j7&sourceid=chrome&ie=UTF-8#fpstate=ive&vld=cid:2b5d3dc2,vid:KesoHnsZWoA]
[https://www.veritas.com/information-center/data-backup-and-recovery]
[https://www.veritas.com/information-center/rpo]
[https://www.veritas.com/information-center/rto]


### Ervaren problemen

None, just a matter of reading a lot and understanding the concepts.


### Resultaat

I understand that these scenarios highlight the importance of establishing specific RPO and RTO objectives as part of a business continuity plan. These objectives ensure that data loss and downtime are minimized, allowing the organization to quickly recover from failures or disruptions and resume normal operations.