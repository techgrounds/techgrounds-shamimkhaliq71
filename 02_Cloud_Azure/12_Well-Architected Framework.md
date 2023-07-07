# Well-Architected Framework

De Cloud Providers hebben er baat bij dat hun klanten goede, veilige applicaties op de infrastructuur van de provider draaien. Om klanten een leidraad te geven hoe een goede, veilige applicatie eruit ziet is het Well-Architected Framework in het leven geroepen.
Het is een set van richtlijnen die men kan gebruiken om de kwaliteit van een workload te verbeteren. Het framework bestaat uit vijf pijlers van uitstekende architectuur:

1. Reliability (Betrouwbaarheid):
Een betrouwbare workload is zowel flexibel als beschikbaar. Tolerantie is het vermogen van het systeem om te herstellen van fouten en te blijven functioneren. Het doel van flexibiliteit is ervoor te zorgen dat de toepassing na een storing weer volledig functioneert. Beschikbaarheid is of uw gebruikers toegang hebben tot uw workload wanneer dat nodig is.
De volgende resources bieden richtlijnen voor het ontwerpen en verbeteren van betrouwbare Azure-toepassingen:

- Ontwerpprincipes voor betrouwbaarheid
- Ontwerppatronen voor tolerantie
Best practices:
- Afhandeling van tijdelijke fouten
- Richtlijnen voor opnieuw proberen voor specifieke services

2. Security (Beveiliging): Denk na over beveiliging gedurende de gehele levenscyclus van een toepassing, van ontwerp en implementatie tot implementatie en bewerkingen. Het Azure-platform biedt bescherming tegen verschillende bedreigingen, zoals netwerkinbraak en DDoS-aanvallen. U moet nog steeds beveiliging inbouwen in uw toepassing en in uw DevOps-processen.
Houd rekening met de volgende algemene beveiligingsgebieden:

- Identiteitsbeheer
- Uw infrastructuur beveiligen
- Toepassingsbeveiliging
- Gegevenssoevereiniteit en -versleuteling
- Beveiligingsbronnen

3. Cost Optimization (Kostenoptimalisatie): Wanneer u een cloudoplossing ontwerpt, moet u zich richten op het vroegtijdig genereren van incrementele waarde. Pas de principes van Build-Measure-Learn toe om uw time-to-market te versnellen en tegelijkertijd kapitaalintensieve oplossingen te vermijden.
De volgende resources bieden richtlijnen voor kostenoptimalisatie bij het ontwikkelen van het Well-Architected Framework voor uw workload:

- Raadpleeg de kostenprincipes
- Ontwikkel een kostenmodel
- Maak budgetten en waarschuwingen
- Raadpleeg de controlelijst voor kostenoptimalisatie

4. Operational Excellence (Operationele uitmuntendheid): Operationele uitmuntendheid omvat de bewerkingen en processen die een toepassing in productie houden. Implementaties moeten betrouwbaar en voorspelbaar zijn. Automatiseer implementaties om de kans op menselijke fouten te verkleinen. Snelle en routinematige implementatieprocessen vertragen de release van nieuwe functies of bugfixes niet. Wat net zo belangrijk is, is dat u een update snel kunt terugdraaien of vooruitrollen als deze problemen geeft.
De volgende resources bieden richtlijnen voor het ontwerpen en implementeren van DevOps-procedures voor uw Azure-workload:

- Patronen voor operationele uitmuntendheid
Best practices:
- Richtlijnen voor bewaking en diagnose

5. Performance Efficiency (Prestatie-efficiëntie): Prestatie-efficiëntie is de mogelijkheid van uw workload om op een efficiënte manier te voldoen aan de eisen die gebruikers eraan stellen. De belangrijkste manieren om prestatie-efficiëntie te bereiken, zijn het op de juiste manier schalen en het implementeren van PaaS-aanbiedingen die ingebouwde schaalaanpassing hebben.
De volgende resources bieden richtlijnen voor het ontwerpen en verbeteren van de prestatie-efficiëntiepostuur van uw Azure-workload:

- Prestatie-efficiëntiepatronen
Best practices:
- Automatisch schalen
- Achtergrondtaken
- Caching
- CDN
- Gegevenspartitionering

Een ezelsbruggetje om deze pilaren te kunnen onthouden is ook wel CROPS.

Elke pilaar gaat in op een aspect van je applicatie, en hoe de Cloud kan helpen deze te optimaliseren.

Jij, als cloud engineer, moet met deze Well-Architected Framework een applicatie kunnen bouwen die optimaal gebruik maakt van de mogelijkheden in de Cloud.

![Azure Well-Architected Framework](/00_includes/Cloud/Opdracht%2012/Azure%20Well-Architected%20Framework.jpg)

Hieronder volgt een overzicht van elke pilaar en hoe je deze kunt implementeren met behulp van cloud-diensten van Azure:

1. Betrouwbaarheid:

Implementeer Azure Availability Zones of Azure Availability Sets om de beschikbaarheid van je applicaties te vergroten en Single Points of Failure te voorkomen.
Gebruik Azure Backup om regelmatig back-ups te maken van je gegevens en virtuele machines.
Implementeer Azure Monitor om te zorgen voor continue monitoring en het vroegtijdig detecteren van eventuele problemen.

2. Beveiliging:

Implementeer Identity and Access Management (IAM) met Azure Active Directory om gebruikersidentiteiten te beheren en toegangscontroles te implementeren.
Gebruik Azure Key Vault om gevoelige gegevens en sleutels veilig op te slaan.
Implementeer netwerkbeveiligingsgroepen (NSG's) en beveiligingsgroepen voor virtuele machines om het inkomend en uitgaand verkeer te beheren.

3. Kostenoptimalisatie:

Gebruik Azure Cost Management en facturering om inzicht te krijgen in en controle te hebben over je uitgaven.
Maak gebruik van schaalbaarheid en flexibiliteit van cloud-diensten om resources efficiënt te benutten.
Maak gebruik van Azure Reserved Instances of Spot Instances om kosten te besparen op langdurige workloads.

4. Operationele uitmuntendheid:

Maak gebruik van Azure DevOps of Azure Automation voor het automatiseren van implementaties en beheertaken. Implementeer infrastructuur als code met Azure Resource Manager-templates om herhaalbare en consistente implementaties mogelijk te maken.
Gebruik Azure Advisor en Azure Monitor om inzicht te krijgen in de prestaties, kosten en beveiliging van je cloudomgeving.
Het implementeren van elke pilaar vereist een combinatie van Azure-diensten en best practices die specifiek zijn voor je organisatie en toepassingsbehoeften. Het is belangrijk om de documentatie en richtlijnen van Azure te raadplegen voor gedetailleerde instructies en aanbevelingen voor elke pilaar.

5. Prestaties:

Implementeer schaalbare en elastische resources, zoals Azure Virtual Machines, om te voldoen aan de prestatiebehoeften van je applicaties.
Gebruik Azure Application Gateway of Azure Load Balancer om het inkomende verkeer te verdelen en de prestaties te verbeteren.
Maak gebruik van Azure Cache for Redis of Azure CDN om de laadtijden van je applicaties te verminderen.

## Key-terms

Well-Architected Framework: biedt richtlijnen en best practices voor het ontwerpen, implementeren en beheren van cloudoplossingen.

Build-Measure-Learn: Build-Measure-Learn is een herhaaldelijk proces waarbij je iets bouwt, de resultaten meet en ervan leert. Het wordt gebruikt om producten of oplossingen stap voor stap te ontwikkelen en constant te verbeteren.

In de "Bouwen" fase maak je een basisversie van je product of idee. Het kan een prototype zijn of een eerste versie met de belangrijkste functies.

Daarna komt de "Meten" fase, waarin je kijkt hoe goed je product presteert. Je verzamelt gegevens en meet belangrijke dingen, zoals hoeveel mensen het gebruiken, hoe ze het gebruiken en of het aan hun behoeften voldoet.

Ten slotte is er de "Leren" fase, waarin je de verzamelde gegevens analyseert en begrijpt wat werkt en wat niet. Je leert van de feedback en de resultaten en gebruikt die kennis om verbeteringen aan te brengen in de volgende versie van je product.

Door dit proces te herhalen, kun je stap voor stap betere versies van je product maken. Het draait allemaal om het verzamelen van feedback, leren van de resultaten en steeds betere beslissingen nemen om je product te verbeteren en te laten aansluiten bij de behoeften van gebruikers.

Time-to-market: Time-to-market, ook wel "doorlooptijd naar de markt" genoemd, verwijst naar de tijd die nodig is om een product vanaf het begin van de ontwikkeling tot aan de lancering op de markt te brengen.

In simpele bewoordingen betekent time-to-market hoe lang het duurt voordat een product beschikbaar is voor klanten om te kopen of gebruiken. Het is een belangrijke factor in het bedrijfsleven, omdat een snellere time-to-market kan resulteren in concurrentievoordeel, klanttevredenheid en hogere winst.

Kortom, time-to-market is de tijd die het kost om een product van concept tot markt te brengen. Het draait allemaal om efficiëntie, snelheid en het vermogen om de concurrentie voor te blijven door producten snel en succesvol op de markt te brengen.


## Opdracht

Bestudeer:

1. Well-Architected Framework van Azure
2. Hoe je elke pilaar kan implementeren met cloud-diensten


### Gebruikte bronnen

[ChatGPT]
[https://learn.microsoft.com/nl-nl/azure/well-architected/]
[https://www.youtube.com/watch?v=CzIZ9GqX6KE3]
[https://learn.microsoft.com/en-us/training/paths/azure-well-architected-framework/]


### Ervaren problemen

Geen problemen alleen veel lezen en alles goed begrijpen.

### Resultaat

