# Project v1.1

In the past weeks, you've been working on the first version of your application. You delivered it last Friday. You've learned how to work with CDK or Bicep, built an application, and considered how to inform the customer about using your application.

You might not have completed everything, and that's okay. In a real scenario, you would communicate with your supervisor and discuss needing more time, but since this is a simulation, it's not necessary. The focus is on learning the concepts you'll need to contribute to your future team, and any learning is time well spent.

Regardless of the status of your v1.0 application, this isn't the end of the project. Customers often change their minds and want more features. Developing these additional features typically involves discussions with the product owner beforehand.

# Assignment

The customer is satisfied with the delivery of your application, but it's not the end. The customer wants to make more use of cloud capabilities. Additionally, the customer has some security concerns about the application.

User stories haven't been written for these new features yet because the product owner was away for an extended weekend and hasn't had time for them. So, you'll need to write the user stories yourself.

# New Requirements

The customer wants to make more use of cloud capabilities and adhere to more security best practices that weren't implemented in the current version. Together with the consultant, the customer has outlined the following:

The webserver should no longer be directly accessible on the internet ("naked"). The customer prefers to have a proxy in between. Additionally, the server should no longer have a public IP address.
If a user makes an HTTP connection to the load balancer, that connection should automatically be upgraded to HTTPS.
The connection must be secured with at least TLS 1.2 or higher.
The webserver should undergo periodic health checks.
If the webserver fails this health check, it should be automatically restored.
If the webserver experiences sustained high load, a temporary additional server should be started. The customer believes that a total of no more than 3 servers will be needed based on historical user numbers.
Note:

Because we don't want to purchase a domain name for everyone, establishing an HTTPS connection in the correct way can be challenging. You may use a self-signed certificate for this purpose. You'll receive a warning in your browser, but the connection will still be encrypted.

# Deliverables:
The following items must be delivered for v1.1 of your application:
Updated versions of the following documents:

# Architecture drawing
Justification for the new services used in the design document
An MVP (Minimum Viable Product) for v1.1

# Ongoing:
Your daily log with your findings
Interim presentations
The final presentation



