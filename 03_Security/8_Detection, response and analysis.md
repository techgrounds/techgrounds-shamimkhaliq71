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

## Opdracht

Study the following:
- IDS and IPS.
- Hack response strategies.
- The concept of systems hardening.
- Different types of disaster recovery options.

1. A Company makes daily backups of their database. The database is automatically recovered when a failure happens using the most recent available backup. The recovery happens on a different physical machine than the original database, and the entire process takes about 15 minutes. What is the RPO of the database?
An automatic failover to a backup web server has been configured for a website. Because the backup has to be powered on first and has to pull the newest version of the website from GitHub, the process takes about 8 minutes. What is the RTO of the website?



### Gebruikte bronnen

[What is an RPO and RTO? and why you NEED to understand them as a Solutions Architect]



### Ervaren problemen
[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.]


### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]