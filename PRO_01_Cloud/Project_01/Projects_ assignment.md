# Project Assignment:

This project is designed to assist a company in transitioning to the cloud. The company had its infrastructure analyzed by a previous team, and a diagram was created based on the current situation.

See below the digram current situation:

![Alt text](<../../00_includes/PRO_01_Cloud/Current infrastructure.jpg>)

The assignment is to build the Infrastructure as Code app to migrate this design to the cloud. The intention is to use Bicep from Azure for this app.

The following requirements have been identified as necessary:

- All VM disks must be encrypted.
- The web server needs to be backed up daily, with backups retained for 7 days.
- The web server should be installed in an automated manner.
- The admin/management server must be accessible with a public IP.
- The admin/management server should only be accessible from trusted locations (office/admin's home).
- The following IP ranges are used: 10.10.10.0/24 & 10.20.20.0/24.
- All subnets must be protected by subnet-level firewalls.
- SSH or RDP connections to the web server are allowed only from the admin server.

Don't hesitate to propose or implement improvements in the architecture, but make firm decisions to meet the deadline.
In the implementation of the Bicep app, ensure you start small and incrementally add features. Always maintain a commit/branch where you can revert to a working version of your application. 
You can use Git Tags to label commits that are easily identifiable in GitHub.
If your code meets the above requirements, you can use the tag 'v1.0'.

Most participants spend approximately €30-40 for the entire project. There is an absolute maximum of €50 per participant. Exceeding this amount will result in the project being halted.

How are we going to proceed?

The project consists of two phases, v1.0 and v1.1

- The first phase lasts for 5 weeks, during which you will work on v1.0 of the application while also learning Python programming.
- The second phase of the project will introduce a change to your architecture. This simulates a situation where a client introduces new requirements to your project and will be released later.

You will work individually on your own implementation, but you will also work in teams. 

The following agreements apply:

- A sprint is 2 weeks, except for the first sprint, which is 3 weeks.
- Every last Friday, there is a sprint retrospective.
In this retrospective, the team discusses the process of the past week and suggests improvements.
From these improvements, action points will be noted in the retrospective document. These action points become new user stories for the next sprint.
- Every last Friday, there is a sprint demo where teams present their progress to the product owners and explain how/why the sprint was achieved or not achieved. Remember, the goal of a sprint is always to showcase working code. It's better to have 1 fully functional feature than 3 features with errors.
- On the last Friday of the project, everyone presents the entire project to each other and potentially to the career buddies. During this presentation, you share your experience, design decisions, and the architecture of your project.
- Each team has one scrum master.
- The scrum master chosen in the first week retains their role for the entire project.
- The scrum master is the first point of contact for the team. Team members from different teams shouldn't seek help from each other. This disrupts focus.
- Every workday at 16:00, there is a scrum master meeting lasting a maximum of 15 minutes. Scrum masters discuss teams' progress, and help can be requested and offered during this time.
- The scrum master is responsible for raising a concern when it becomes clear that a sprint will not be achieved. This should be communicated to the product owners.
- The product owners are the learning coaches.

For this project, different scrum teams will be formed. Each team will work on the same user stories. If you encounter difficulties within your team, you can reach out to other teams for assistance. While it's understandable that each team wants to focus on their own work, it's also important to keep an eye on what others are doing. Knowledge sharing is crucial for progress in your work process. It's the scrum master's responsibility to maintain an overview of what's happening in other teams. Use each other's knowledge to streamline/accelerate project progress.

What support can be expected from other teams:

- Providing resources to help your team (videos, articles, books, internet, etc.).
- Offering suggestions on how you can potentially solve your problem.
- This should be sufficient. At this point, you can continue with the next step. Support from other teams is about guiding you forward, not solving your problem.

What support cannot be expected from other teams:

- Spending an hour or more in a coding session to address your problem.
- Firing a series of questions and expecting another team to have all the answers.
- Receiving support on unclear questions or problems. If a question is unclear to others, they have the right to reject it.

What to expect from the learning coaches:

- The learning coaches are the product owners of the project.
- The learning coaches are present during standard contact moments (daily opening, Q&A, daily closing).
- For other contact moments, arrangements should be made between scrum masters and learning coaches.
- Make sure your questions are clear and well-formulated.

Definition of Done: 

When is a user story considered complete?

- If the user story has a deliverable: when it's on GitHub.
- If the user story involves a piece of IaC (Infrastructure as Code): when it can be deployed in isolation without errors.
- When the documentation about the user story on GitHub is updated.

When is a version of the app considered complete?

- v1.0: When it meets all the requirements as outlined in this document.
- v1.1: When it meets all the new requirements.

Deliverables:

The following deliverables are expected in your GitHub repository at the end of this project:

- A functional Bicep app of the MVP.
- Design Documentation.
- Decision Documentation.
- Time logs.
- Final presentation.
- Functional MVP application.

The functional application must successfully build and deploy. A version of your MVP should be easily identifiable, either through a tag or a release. Additionally, your repository documentation should explain how to use the application, including how to invoke it, the required arguments, and the permissions it needs in AWS or Azure to deploy.

Design Documentation:

You will use the existing architecture, but there are still details that need further elaboration. This document will fill in the gaps and ultimately provide practical and technical information on GitHub. This document will include information about your chosen (N)SG rules. It will also feature a visualization of what and in what sequence your application deploys in the cloud. In v1.1, you will also place your own diagrams here to support the modifications and enhancements.

Decision Documentation:

While implementing the design, you will make decisions about the services to be used. This document will outline your considerations and substantiate your decisions. It will also encompass all your assumptions and improvements. This serves as the foundation for your design documentation.

Time logs:

This file is where you track your days in a structured manner. You indicate in a single sentence what you worked on that day. In bullet points, you will note the obstacles you encountered and the solutions you found.

You can use the following template:

![Alt text](<../../00_includes/PRO_01_Cloud/Log template.jpg>)

Interim Presentations: 

At the end of each sprint, you will create a presentation of your progress. In this presentation, you will discuss what you have done during the past sprint. Upon completion, you will provide a demonstration of your work.

Progress v1.0 presentation: 15-09-2023
Progress v1.1 presentation: 29-09-2023

Final Presentation: 06-10-2023

On the last Friday of the project, everyone presents the entire project to each other. During this presentation, you share your experience, design decisions, and the architecture of your project.

User Stories:

The Product Owners have already held a meeting and have formulated the following epics and backlog. As a team, you will work on these epics and user stories. If your team identifies user stories that need to be divided into smaller stories, your team is free to do so.

# The following epics apply to the project:

Exploration: 
The exploration epic is meant for making decisions about the project. Once you've completed this epic, ensure that you don't need to revisit it. You have too little time to make significant changes.

v1.0
Epic v1.0 involves delivering the Infrastructure as Code and all required documentation according to the requirements identified during exploration.

v1.1
Version 1.1 involves delivering the Infrastructure as Code and all required documentation according to the requirements that will be available later.


1. As a team, we want to have a clear understanding of the application requirements.

Epic: Exploration

Description:
You've already received a lot of information. Some requirements are already mentioned in this document, but this list might be incomplete or unclear. It's important to clarify all uncertainties before proceeding with significant work.

Deliverable:
A bullet-point description of all requirements

2. As a team, we want a clear overview of the assumptions we have made.

Epic: Exploration

Description:
You have received a lot of information. There might be questions that none of the stakeholders could answer. Your team needs to produce an overview of the assumptions you make as a result.

Deliverable:
A bullet-point overview of all assumptions

3. As a team, we want to have a clear overview of the Cloud Infrastructure required by the application.

Epic: Exploration

Description:
You have received a lot of information and already have a design. However, the design is missing elements like IAM/AD. Identify these additional services you will need and create an overview of all the services.

Deliverable:
An overview of all the services to be used.

4. As a customer, I want a functional application that allows me to deploy a secure network.

Epic: v1.0

Description:
The application needs to build a network that meets all the requirements. An example of a stated requirement is that only traffic from trusted sources should be able to access the management server.

Deliverable:
IaC code for the network and all its components

5. As a customer, I want a functional application that allows me to deploy a functional web server.

Epic: v1.0

Description:
The application needs to start a web server and make it accessible to the general public.

Deliverable:
IaC code for the web server and all the necessary components

6. As a customer, I want a functional application that allows me to deploy a functional management server.

Epic: v1.0

Description:
The application needs to start a management server and make it accessible to a limited audience.

Deliverable:
IaC code for a management server with all the necessary components

7. As a customer, I want a storage solution where bootstrap/post-deployment scripts can be stored.

Epic: v1.0

Description:
A location must be available to store bootstrap scripts. These scripts should not be publicly accessible.

Deliverable:
IaC code for a storage solution for scripts

8. As a customer, I want all my data in the infrastructure to be encrypted.

Epic: v1.0

Description:
Data security at rest and in motion is highly valued. All data must be encrypted.

Deliverable:
IaC code for encryption facilities

9. As a customer, I want a backup every day that is retained for 7 days.

Epic: v1.0

Description:
The customer would like to have a backup available in case it is necessary to revert the servers to a previous state. (Ensure that the backup actually works)

Deliverable:
IaC code for backup facilities

10. As a customer, I want to know how to use the application.

Epic: v1.0
Description:
Ensure that the customer can understand how to use the application. Make it clear what the customer needs to configure before starting the deployment and what arguments the program requires.

Deliverable:
Documentation for using the application

11. As a customer, I want to be able to deploy an MVP for testing.

Epic: v1.0

Description:
The customer wants to internally test your architecture before using the code in production. Provide configuration that allows the customer to deploy an MVP.

Deliverable:
Configuration for an MVP deployment

# Important Dates

- Update progress, Version 1.0: 15-09-2023 (wk 5)
- Update Progress, Version 1.1: 29-09-2023 (wk 7)	
- Final deadline: 06-10-2023 (wk 8)							

# Resources

[https://learn.microsoft.com/nl-nl/azure/azure-resource-manager/bicep/]

[https://learn.microsoft.com/nl-nl/azure/azure-resource-manager/templates/]

[https://learn.microsoft.com/en-us/azure/templates/]

[https://app.diagrams.net/]