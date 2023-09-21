# Brieving Product owner

As a team, we wanted to have a clear understanding of the application requirements and had a meeting with the product owner. 

Product Owner - Briefing
Date: 23/08/2023 - 14:00
Topic: PRO-01 CLOUD - V1.0
Team: Code-Snakes

SM:	Sinan Konak
	Marcel Koek
    Tim de Pagter
    Shamim Khaliq	

# General:

Q: What regions allowed for deployment?

A: 2 VNets peered with eachother. 1 region, multiple availability zones

Q: What type of storage for the postDeploymentScripts?

A: Use basic storage, opt for the cheapest options.

# Network:

Q: Only 1 NSG per Virtual Network? or do you want to add extra NSG in the future?

A: Each VNet coupled with a NSG and corresponding rules

Q: IP range for the NSG, /24 seems very big for just one server per NSG.

A: In the future additional changes could be required. For now current design should be sufficient.

Q: Is the NSG sufficient as a firewall?

A: Yes.

Q: Has the peering full access or are there ports blocked by default?

A: reported in project document

Q: Why does the client want the webserver in AvailZone 1 and the Mngmntserver in AvailZone 2?

A: ProjectTeam is free to implement as they like.

# Webserver:

Q: Preferred distribution?

A: SSH/RDP dependant. (linux = SSH) (Windows = RDP)

Q: Preferred size (compute power)?

A: Go for the bigger one if needed. Go for free tier if possible, or one above that if budget allows.

Q: Disk type, ssd/hdd lrs/grs?

A: Minimum, if needed go up in tier.

Q: What is the required uptime for the webserver

A: Free to implement as we like ? Assume 24/7 scenario

Q: What is the reasoning that the Webserver and Management server are put in different regions in the diagram attachment?

A: Same answer as (last network question)

Q: Can the webserver and admin server be deployed in the same resource group?

A: yes

Q: Does the client want to manage disk encryption with platform-managed keys, or his/her own keys?

A: Key-Vault. Azure Managed.

# Adminserver:

Same Questions + Answers as Network/Webserver apply

# RBAC:

Q: What roles are there in the organization?

A: 1 role Admin. -> access (other servers) via Management Server

Q: What is everyone allowed to do?

A: Webserver > public ip ? . Management> only accessible by admin.

# Additional comments

Trusted Locations: Provided later in the project

Azure region: budget dependent ? Assume nearest region.