# Azure Load Balancer (ALB) & Auto Scaling

Een van de grootste voordelen van de cloud is dat je niet hoeft te gokken hoeveel capaciteit je nodig hebt. Je kan altijd up en down schalen met on-demand services. Een van de services die dit mogelijk maakt heet Autoscaling.

Wanneer je applicaties runt met een spiky workload, kan je een VM Scale Set aanmaken in plaats van een enkele server. Wanneer de vraag naar de applicatie hoog is, kan Autoscaling automatisch VMs toevoegen aan je Scale Set. Wanneer de vraag omlaag gaat, kan het ook weer instances verwijderen.

Om er zeker van te zijn dat alle VMs hetzelfde zijn, moet je een image aanwijzen tijdens het configureren van een VM Scale Set. Je kan deze image later aanpassen met de reimage optie. Auto Scaling maakt gebruik van Azure Monitor om te bepalen of er VMs toegevoegd of verwijderd moeten worden.

In een traditionele architectuur maakt een client verbinding met een enkele server met een enkel publiek IP-adres. Wanneer je een fleet van servers hebt, werkt dit niet meer. Daarom kan je een load balancer gebruiken als endpoint voor de client. De load balancer zal de request forwarden naar een van de servers in je fleet en het antwoord terugsturen naar de client.

Azure heeft twee managed oplossingen voor load balancing naar een fleet van servers:
Azure Load Balancer: Je krijgt deze gratis bij een VM Scale Set. De ALB werkt op laag 4 van de OSI stack (TCP/UDP). Een ALB kan alleen routeren naar Azure resources.
Application Gateway: Deze load balancer werkt op laag 7 van de OSI stack (HTTP/HTTPS). Ook heeft het support voor onder andere SSL termination en Web Application Firewall (WAF) features. Een Application Gateway kan routeren naar elk routable IP address.


## Key-terms

Azure Load Balancer (ALB): 

Auto Scaling

Spiky workload

VM Scale Set: Azure Virtual Machine Scale Sets let you create and manage a group of load balanced VMs. The number of VM instances can automatically increase or decrease in response to demand or a defined schedule. Scale sets provide the following key benefits: Easy to create and manage multiple VMs.

Azure Monitor

Application Gateway

## Opdracht

Benodigdheden:
Je Azure Cloud omgeving

- Maak een Virtual Machine Scale Set met de volgende vereisten:
Ubuntu Server 20.04 LTS - Gen1
Size: Standard_B1ls

Allowed inbound ports:
SSH (22)
HTTP (80)

OS Disk type: Standard SSD
Networking: defaults
Boot diagnostics zijn niet nodig

Custom data:

#!/bin/bash
sudo su
apt update
apt install apache2 -y
ufw allow 'Apache'
systemctl enable apache2
systemctl restart apache2

Initial Instance Count: 2
Scaling Policy: Custom
Aantal VMs: minimaal 1 en maximaal 4
Voeg een VM toe bij 75% CPU gebruik
Verwijder een VM bij 30% CPU gebruik

We discussed the above task and agreed that, to do this assignment you have to create a load balancer first, before creating a VM Scaleset.

![Loadbalancer_scaleset](/00_includes/Cloud/Opdracht%2011/Loadbalancer_scaleset.jpg)

![Scaleset overview](/00_includes/Cloud/Opdracht%2011/Scaleset%20overview.jpg)

![Loadbalancer overview](/00_includes/Cloud/Opdracht%2011/Loadbalancer%20overview.jpg)


Opdracht 2:
Controleer of je via het endpoint van je load balancer bij de webserver kan komen.

![Webserver visible](/00_includes/Cloud/Opdracht%2011/Webserver%20visible.jpg)

Voer een load test uit op je server(s) om auto scaling the activeren. Er kan een delay zitten in het creëren van nieuwe VMs, afhankelijk van de settings in je VM Scale Set.

![Loadtest ongoing](/00_includes/Cloud/Opdracht%2011/Loadtest%20ongoing.jpg)

![Step by step commnads load test](/00_includes/Cloud/Opdracht%2011/Step%20by%20step%20commands%20load%20test.jpg)

Zoal je kan zien in de laatste screenshot dat de load test succesvol is afgerond.

### Gebruikte bronnen

[https://portal.azure.com/#home]
[https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/overview]
[https://learn.microsoft.com/en-us/azure/virtual-machine-scale-sets/quick-create-portal]
[https://learn.microsoft.com/en-us/azure/load-balancer/components]
[https://learn.microsoft.com/en-us/azure/load-balancer/quickstart-load-balancer-standard-public-portal]


### Ervaren problemen
We moesten een Virtual Machine Scale Set aanmaken:

We hadden een discussie betreft: Allowed inbound ports: SSH (22), HTTP (80)
We konden niet achterhalen waar we dat konden kiezen.

Lukte niet om in te loggen op Powershell dus duurde even voordat ik de test kon uitvoeren.


### Resultaat
Zie screenshots