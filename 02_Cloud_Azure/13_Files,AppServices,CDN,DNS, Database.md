# Files,AppServices,CDN,DNS,Database

Vanaf dit moment zullen wij, als learning coaches, jullie minder opdrachten geven. We zullen meer beroep doen op je zelfstandig leervaardigheden. Geen zorgen, je bent niet alleen. Je hebt elkaar en de vaste dagelijkse structuur blijft bestaan waarin je ons nog altijd de oren van ons hoofd kan vragen.

Onderwerpen die je onder de kop “Bestudeer” vindt verwachten wij dat je alleen op een theoretisch niveau hoeft te kennen. Van onderwerpen onder de kop “Opdrachten” moet je ook praktische ervaring opbouwen.

## Key-terms

- AppServices
- CDN
- DNS
- Files
- Database

## Opdracht

Bestudeer:
App Service            / Elastic Beanstalk
Content Delivery Network (CDN) 	/ CloudFront
Azure DNS 			    / Route53

Handige vragen die je in gedachten kan (/moet) houden tijdens je onderzoek naar de onderwerpen:

- Waar is X voor?
- Hoe past X / vervangt X in een on-premises setting?
- Hoe kan ik X combineren met andere diensten?
- Wat is het verschil tussen X en andere gelijksoortige diensten?

Benodigdheden:
Je Azure omgeving	/ AWS omgeving
In mijn geval bestudeer ik ook de AWS omgeving, maar zal alleen Azure informatie documenteren.


1. Azure App Service:
Azure App Service is een handige dienst waarmee je web-applicaties en mobiele app back-ends kunt bouwen en uitvoeren zonder dat je je zorgen hoeft te maken over de ingewikkelde technische details. In plaats van zelf servers te beheren on-premisses, kun je gewoon je code uploaden naar Azure en zij zorgen ervoor dat het draait. Het is alsof je je applicatie in een speciale "app-doos" stopt en Azure regelt de rest.

Je kunt Azure App Service ook combineren met andere diensten van Azure om meer krachtige functies toe te voegen aan je applicaties. Bijvoorbeeld, je kunt een database-service toevoegen om je gegevens op te slaan, of een functieservice om extra code uit te voeren. Het mooie is dat alles al goed samenwerkt, dus je hoeft geen ingewikkelde technische kennis te hebben om het te laten werken. Gewoon de bouwstenen kiezen die je nodig hebt en Azure doet de rest!

2. Azure CDN:
Azure Content Delivery Network (CDN) zorgt ervoor dat websites en apps sneller werken. Stel je voor dat je een webpagina wilt bekijken die ver weg wordt gehost. Normaal gesproken zou het even duren voordat de pagina wordt geladen. Maar met Azure CDN wordt de inhoud van de webpagina dichter bij jou in de buurt opgeslagen, zodat het sneller kan worden geladen. Het is als een magische snelweg die ervoor zorgt dat je webinhoud supersnel op je scherm verschijnt.

Als je Azure CDN gebruikt, kun je het combineren met andere coole dingen van Azure. Bijvoorbeeld, je kunt het gebruiken met Azure App Service om je website sneller te maken en je klanten een betere ervaring te bieden. Of je kunt het samen met Azure Front Door gebruiken om ervoor te zorgen dat je website altijd beschikbaar is, zelfs als er veel bezoekers zijn. Het beste van alles is dat je niet veel technische kennis nodig hebt om Azure CDN te gebruiken. Het is een handige tool waarmee je je website beter en sneller kunt maken zonder al te veel gedoe.

3. Azure domein name system:
Azure Domein Name System (DNS) is als een telefoonboek voor het internet. Wanneer je een website bezoekt, typ je een domeinnaam in, zoals www.example.com. Het DNS-systeem vertaalt deze domeinnaam naar een IP-adres, zodat je computer weet welke server hij moet benaderen om de website op te halen. Kortom, Azure DNS helpt bij het verbinden van domeinnamen met de juiste IP-adressen, waardoor je gemakkelijk websites kunt bereiken.

In een on-premises omgeving zou je normaal gesproken je eigen DNS-server moeten beheren om de domeinnaamresolutie te regelen. Maar met Azure DNS kun je deze taak uitbesteden aan Microsoft. Je kunt Azure DNS gebruiken om je domeinnamen te beheren en te laten vertalen naar de juiste IP-adressen, zonder dat je je zorgen hoeft te maken over het onderhouden van je eigen DNS-server.

Azure DNS kan worden gecombineerd met andere Azure-diensten om je applicaties en websites te verbeteren. Bijvoorbeeld, je kunt het gebruiken in combinatie met Azure App Service om je website live te zetten met je eigen domeinnaam. Je kunt ook Azure DNS integreren met Azure Traffic Manager om verkeer naar verschillende regio's te sturen op basis van de beschikbaarheid en prestaties van je services. Het verschil tussen Azure DNS en andere vergelijkbare diensten is dat het naadloos integreert met het Azure-ecosysteem en je de mogelijkheid biedt om je domeinnamen te beheren binnen hetzelfde platform waar je je andere Azure-services beheert. Dit maakt het eenvoudiger en efficiënter om je infrastructuur en applicaties te beheren.

Opdracht:
Azure Files			/ EFS				
Azure Database (+ managed instance) / RDS, Aurora

Azure Files:
Azure Files is een opslagdienst in de cloud die speciaal is ontworpen voor het delen van bestanden. Het stelt je in staat om bestanden op te slaan en er gelijktijdig toegang toe te hebben vanaf meerdere apparaten en locaties. Met Azure Files kun je bestanden delen tussen verschillende virtuele machines, waardoor samenwerking en het delen van gegevens binnen je organisatie gemakkelijker wordt.

In een on-premises omgeving zou je normaal gesproken gebruik maken van een file server om bestanden te delen en te beheren. Azure Files vervangt deze fysieke file server door een cloudgebaseerde oplossing. Hierdoor hoef je geen hardware of infrastructuur te onderhouden en kun je eenvoudig schalen op basis van je behoeften. Je kunt Azure Files naadloos integreren met je on-premises omgeving, zodat je bestanden kunt delen tussen je lokale infrastructuur en de cloud.

Azure Files kan worden gecombineerd met andere diensten in Azure om een complete oplossing te bieden. Bijvoorbeeld, je kunt Azure Files gebruiken in combinatie met Azure Virtual Machines om bestanden op te slaan die nodig zijn voor de werking van je virtuele machines. Je kunt het ook integreren met Azure Active Directory voor beheer en beveiliging van toegangscontroles. Het verschil tussen Azure Files en andere vergelijkbare diensten is dat het specifiek is ontworpen voor het delen van bestanden in een cloudomgeving. Het biedt schaalbaarheid, betrouwbaarheid en flexibiliteit, waardoor je gemakkelijk bestanden kunt delen en beheren in de cloud.

Azure Database (+ managed instance):
Azure Database is een service die wordt aangeboden in de cloud en waarmee je databases kunt maken en beheren zonder je zorgen te hoeven maken over de onderliggende infrastructuur. Het stelt je in staat om gestructureerde gegevens op te slaan en te beheren, zoals klantinformatie, productgegevens en transactiegegevens. Met Azure Database kun je eenvoudig schalen op basis van je behoeften en profiteren van de betrouwbaarheid en beveiliging van de cloud.

In een on-premises setting zou je normaal gesproken verantwoordelijk zijn voor het beheer en onderhoud van je eigen databaseservers. Azure Database vervangt deze fysieke servers door een volledig beheerde service in de cloud. Je hoeft je geen zorgen te maken over het installeren van software, het beheren van hardware of het uitvoeren van back-ups, omdat dit allemaal automatisch wordt afgehandeld. Het biedt een gemakkelijke manier om je databases naar de cloud te verplaatsen en te profiteren van de schaalbaarheid en flexibiliteit die de cloud biedt.

Azure Database kan worden gecombineerd met andere Azure-diensten om een complete oplossing te bieden. Bijvoorbeeld, je kunt Azure Database combineren met Azure App Service om een webtoepassing te bouwen die verbinding maakt met je database. Je kunt ook Azure Database integreren met Azure Functions om serverloze applicaties te bouwen die gebruikmaken van je database. Het verschil tussen Azure Database en andere vergelijkbare diensten is dat het een volledig beheerde service is die specifiek is ontworpen voor het hosten en beheren van databases in de cloud. Het biedt hoge beschikbaarheid, automatische schaalbaarheid en ingebouwde beveiligingsfuncties, waardoor je je kunt concentreren op je applicaties en gegevens zonder je zorgen te hoeven maken over de infrastructuur.

Opdracht deel 2: Azure Files en Database:

1. Waar kan ik deze dienst vinden in de console?
2. Hoe zet ik deze dienst aan?
3. Hoe kan ik deze dienst koppelen aan andere resources?

1. Waar kan ik deze dienst vinden in de console?
Azure Files volledig beheerde bestandsshares in de cloud die toegankelijk zijn via het industriestandaard SMB-protocol (Server Message Block) en het NFS-protocol (Network File System)
Azure Files is te vinden in de Azure-portal onder de sectie "Opslagaccounts".

2. Hoe zet ik deze dienst aan?
Om Azure Files in te schakelen, moet je een opslagaccount maken. Ga naar de sectie "Opslagaccounts" in de Azure-portal, klik op "Nieuw opslagaccount" en volg de stappen om het account te maken. Vervolgens selecteer je
- File shares and create File share en geef het een naam en selecteer create.

3. Hoe kan ik deze dienst koppelen aan andere resources?
Nadat je het opslagaccount hebt gemaakt en Azure Files hebt ingeschakeld, kun je het koppelen aan andere resources in Azure. Bijvoorbeeld, je kunt Azure Files koppelen aan virtuele machines om gedeelde bestandsopslag voor meerdere VM's te bieden. Dit kan worden gedaan tijdens het maken van een nieuwe VM of door een bestaande VM te bewerken. Je kunt ook Azure Files gebruiken als een gedeelde opslaglocatie voor Azure App Services of Azure Functions. Door Azure Files te koppelen aan andere resources, kunnen verschillende services binnen Azure samenwerken en gegevens delen, wat flexibiliteit en efficiëntie biedt in je infrastructuur.

1. Waar kan ik deze dienst vinden in de console?
Azure Database is te vinden in de Azure-portal onder de sectie "Databases".

2. Hoe zet ik deze dienst aan?
Om Azure Database in te schakelen, moet je een database maken binnen de gewenste database-engine, zoals Azure SQL Database of Azure Database for MySQL. Ga naar de sectie "Databases" in de Azure-portal, klik op "Nieuwe database" en volg de stappen om de database te maken. Tijdens het creatieproces kun je de gewenste instellingen en configuraties specificeren.

3. Hoe kan ik deze dienst koppelen aan andere resources?
Nadat je de database hebt gemaakt, kun je deze koppelen aan andere resources in Azure. Bijvoorbeeld, je kunt Azure Database koppelen aan een virtuele machine waarop je applicatie draait, zodat de applicatie toegang heeft tot de database. Dit kan worden gedaan door de verbindingsinformatie van de database te gebruiken in de applicatieconfiguratie. Je kunt ook Azure Database koppelen aan andere Azure-services, zoals Azure App Services of Azure Functions, om gegevensopslag en verwerking mogelijk te maken. Door Azure Database te koppelen aan andere resources, kunnen verschillende services binnen Azure samenwerken en gegevens delen, waardoor je een complete end-to-endoplossing kunt bouwen.


### Gebruikte bronnen

[ChatGPT]
[https://portal.azure.com/#home]



### Ervaren problemen
[Geef een korte beschrijving van de problemen waar je tegenaan bent gelopen met je gevonden oplossing.]

### Resultaat
[Omschrijf hoe je weet dat je opdracht gelukt is (gebruik screenshots waar nodig).]