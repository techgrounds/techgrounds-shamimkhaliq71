# Azure Load Balancer (ALB) & Auto Scaling

Een van de grootste voordelen van de cloud is dat je niet hoeft te gokken hoeveel capaciteit je nodig hebt. Je kan altijd up en down schalen met on-demand services. Een van de services die dit mogelijk maakt heet Autoscaling.

Wanneer je applicaties runt met een spiky workload, kan je een VM Scale Set aanmaken in plaats van een enkele server. Wanneer de vraag naar de applicatie hoog is, kan Autoscaling automatisch VMs toevoegen aan je Scale Set. Wanneer de vraag omlaag gaat, kan het ook weer instances verwijderen.

Om er zeker van te zijn dat alle VMs hetzelfde zijn, moet je een image aanwijzen tijdens het configureren van een VM Scale Set. Je kan deze image later aanpassen met de reimage optie. Auto Scaling maakt gebruik van Azure Monitor om te bepalen of er VMs toegevoegd of verwijderd moeten worden.

In een traditionele architectuur maakt een client verbinding met een enkele server met een enkel publiek IP-adres. Wanneer je een fleet van servers hebt, werkt dit niet meer. Daarom kan je een load balancer gebruiken als endpoint voor de client. De load balancer zal de request forwarden naar een van de servers in je fleet en het antwoord terugsturen naar de client.

Azure heeft twee managed oplossingen voor load balancing naar een fleet van servers:

1. Azure Load Balancer: Je krijgt deze gratis bij een VM Scale Set. De ALB werkt op laag 4 van de OSI stack (TCP/UDP). Een ALB kan alleen routeren naar Azure resources.

2. Application Gateway: Deze load balancer werkt op laag 7 van de OSI stack (HTTP/HTTPS). Ook heeft het support voor onder andere SSL termination en Web Application Firewall (WAF) features. Een Application Gateway kan routeren naar elk routable IP address.


## Key-terms

Azure Load Balancer (ALB): is een netwerkdienst in Azure die het verkeer tussen meerdere virtuele machines (VM's) of services verdeelt om de beschikbaarheid en schaalbaarheid van applicaties te verbeteren. Het fungeert als een verkeersbeheercomponent die inkomend verkeer verdeelt over meerdere backend-instanties, waardoor de belasting op individuele VM's wordt verminderd en de prestaties worden geoptimaliseerd.

Auto Scaling: ook wel bekend als autoscaling, is een functie die beschikbaar is in cloud computing-omgevingen, zoals Azure, waarmee automatisch het aantal resources kan worden aangepast op basis van de vraag naar applicaties of services. Met Auto Scaling kan de capaciteit van een applicatie dynamisch worden opgeschaald of afgeschaald om te voldoen aan de veranderende werklastvereisten, zonder dat handmatige tussenkomst nodig is.

Spiky workload: Een spiky workload verwijst naar een type werklast of belasting op een systeem waarbij er zich plotselinge en tijdelijke pieken of verhoogde activiteit voordoen, gevolgd door periodes van verminderde activiteit. Het wordt vaak gebruikt om de onvoorspelbaarheid en variabiliteit van de vraag naar resources of diensten in een bepaalde periode te beschrijven.

VM Scale Set: Een VM Scale Set (Virtual Machine Scale Set) is een Azure-service waarmee je een groep identieke virtuele machines (VM's) kunt maken en beheren. Het biedt de mogelijkheid om automatisch te schalen op basis van de vraag naar resources. Met een VM Scale Set kun je een set VM's maken die samenwerken als een groep, waarbij ze gezamenlijk een applicatie of service kunnen ondersteunen.

Azure Monitor: Azure Monitor is een service van Microsoft Azure waarmee je de prestaties en beschikbaarheid van je applicaties en infrastructuur in de gaten kunt houden. Het biedt uitgebreide monitoringmogelijkheden en helpt bij het identificeren en oplossen van problemen in real-time.

Application Gateway: Azure Application Gateway is een service van Microsoft Azure die fungeert als een load balancer en webverkeersbeheerder voor webtoepassingen. Het biedt geavanceerde functies voor het beheren van inkomend verkeer, het verbeteren van de prestaties, het verhogen van de beveiliging en het bieden van hoge beschikbaarheid voor webtoepassingen.

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
Controleer of je via het endpoint van je load balancer(de IP adres) bij de webserver kan komen.

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
Probleem oplossing:
**De belangrijkste aanpassing**
Selecteer de VM en kies voor ```networking``` en "add inbound port rule" -> destination port rule: 22 en 80 en "allow"
Dit zal toegang tot de VM mogelijk maken.

Lukte niet om in te loggen op Powershell dus duurde even voordat ik de test kon uitvoeren.


### Resultaat
Zie screenshots