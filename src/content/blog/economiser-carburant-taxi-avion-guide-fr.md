---
title: "Taxi monomoteur, TaxiBot, gate-holding : comment les avions economisent du carburant au sol"
description: "Guide complet des techniques d'economie de carburant au roulage : taxi monomoteur, TaxiBot, systemes electriques, gate-holding. Jusqu'a 85 % d'economies."
lang: 'fr'
pubDate: 'Apr 08 2026'
heroImage: '../../assets/hero-taxi-fuel-saving.webp'
tags: ["tutorial", "MSFS"]
author: "Virtual Flight"
category: "tutorial"
pilotleagueLink: "https://pilotleague.com/fr/"
---

Un Boeing 747 consomme environ **une tonne de kerosene** pour 15 minutes de roulage. Un A320, entre 100 et 150 kg. A l'echelle mondiale, la phase de taxi represente pres de **1 % de la consommation totale de carburant** de l'aviation — un chiffre en apparence modeste, mais qui se traduit par des millions de tonnes de CO2 et des milliards de dollars depenses chaque annee pour simplement deplacer des avions entre les portes d'embarquement et les pistes. L'industrie aeronautique a developpe des solutions concretes pour reduire ce gaspillage, et les pilotes virtuels exigeants sur [PilotLeague](https://pilotleague.com/fr/fonctionnalites/) le savent bien : la gestion du carburant au sol est un indicateur de competence que la plateforme mesure vol apres vol.

![Boeing 737 KLM tracte par un TaxiBot a l'aeroport de Schiphol](/images/taxi-fuel-saving/taxibot-klm.webp)

## Pourquoi le taxi consomme autant

Les reacteurs d'avion sont concus pour fonctionner a haute altitude, a des regimes de poussee eleves. Au sol, ils operent en mode ralenti — la configuration la moins efficiente possible. Un moteur CFM56 au ralenti au sol consomme environ **5 a 7 kg de carburant par minute**, et un avion bimoteur en fait tourner deux. Pour un gros-porteur quadrimoteur, la facture est quadruplee. Ajoutez les temps d'attente sur les taxiways, les files d'attente devant la piste, les arrets-demarrages imposes par le controle aerien, et le gaspillage s'accumule rapidement.

Le probleme est amplifie dans les grands hubs internationaux. A Heathrow, Atlanta ou Francfort, un roulage typique dure 15 a 30 minutes — parfois davantage aux heures de pointe. Chaque minute de moteur au ralenti represente du carburant brule sans produire aucun deplacement utile lorsque l'avion est a l'arret.

![Avions KLM au parking a l'aeroport de Schiphol — temps d'attente au sol](/images/taxi-fuel-saving/schiphol-gates.webp)

## Technique n°1 : le taxi monomoteur (Single-Engine Taxi)

La methode la plus repandue et la plus simple a mettre en oeuvre. Sur un avion bimoteur, le principe est direct : couper un moteur pendant le roulage et n'utiliser que l'autre.

### Comment ca marche

Au lieu de demarrer les deux moteurs a la porte, l'equipage n'en demarre qu'un seul et commence le roulage. Le second moteur est demarre pendant le roulage, suffisamment tot avant la piste pour qu'il atteigne sa temperature operationnelle et que tous les systemes hydrauliques soient alimentes avant le decollage. La meme logique s'applique a l'arrivee : apres avoir degage la piste, l'equipage coupe un moteur pour le roulage vers la porte.

### Les economies

Le taxi monomoteur reduit la consommation de carburant au roulage de **20 a 40 %** selon le type d'appareil et les conditions. Pour une compagnie operant des centaines de vols quotidiens, cela represente des economies annuelles de plusieurs millions de litres de kerosene.

### Les limites

Le taxi monomoteur n'est pas toujours possible. Les virages serres du cote du moteur eteint peuvent etre difficiles (la poussee asymetrique complique la manoeuvre). Les conditions meteo degradees (verglas, forte pluie) peuvent necessiter les deux moteurs pour maintenir un controle directionnel adequat. Certaines compagnies interdisent le SET sur des taxiways en pente ou dans des configurations aeroportuaires specifiques.

## Technique n°2 : le TaxiBot — le remorquage pilote depuis le cockpit

Le TaxiBot, developpe par la division Lahav d'**Israel Aerospace Industries**, represente une avancee majeure. C'est un vehicule semi-robotise hybride-electrique qui tracte l'avion du terminal a la piste avec **les moteurs completement eteints**.

### Le concept

Contrairement a un pushback classique, le TaxiBot est **controle directement par le pilote depuis le cockpit**. Le vehicule lit l'angle du train avant et suit la direction donnee par le pilote. Le freinage est gere par les freins normaux de l'avion — le TaxiBot detecte le ralentissement et s'adapte. Le pilote conserve donc un controle total de la trajectoire et de la vitesse, exactement comme lors d'un roulage normal.

### Les economies

Les chiffres sont impressionnants : le TaxiBot consomme **95 % moins de carburant** que les moteurs de l'avion lors du roulage. **Airbus** annonce des economies de carburant au sol de **50 a 85 %** selon la distance de roulage. Le systeme existe en version monocouloir (compatible A320, B737) et gros-porteur (compatible A380, B747).

### Deploiement

Le TaxiBot a ete certifie en 2014 et a realise son premier vol commercial avec **Lufthansa** a Francfort (vol LH140). En 2024, **KLM** a realise le premier vol passager avec TaxiBot a **Schiphol**. Airbus poursuit activement les tests dans le cadre du projet HERON.

![Train d'atterrissage d'un avion sur taxiway — le TaxiBot se connecte au train avant](/images/taxi-fuel-saving/airbus-taxibot.webp)

## Technique n°3 : le roulage electrique (Electric Green Taxiing)

Plutot que de remorquer l'avion, pourquoi ne pas installer des moteurs electriques directement dans les roues ?

### Les systemes

**Safran** et **Honeywell** ont developpe l'**EGTS** (Electric Green Taxiing System), qui integre des moteurs electriques de 50 kW dans les roues du train principal. L'energie provient de l'APU (groupe auxiliaire de puissance) de l'avion. L'appareil peut ainsi rouler, manoeuvrer et meme reculer sans demarrer ses reacteurs et sans pushback tractor.

**Green Taxi Solutions** developpe un systeme similaire, promettant des economies annuelles estimees a **306 000 $ par avion**.

### L'economie globale

Le roulage electrique reduit la consommation de carburant d'environ **4 % sur l'ensemble du cycle de vol** — un chiffre qui parait modeste mais qui, multiplie par des milliers de vols quotidiens, represente une economie substantielle. L'avantage supplementaire est l'absence totale de poussee de reacteur au sol, reduisant les nuisances sonores et le risque de souffle pour le personnel au sol.

## Technique n°4 : le gate-holding et l'optimisation ATC

Les solutions les plus immediates ne concernent pas la technologie embarquee, mais la gestion du trafic au sol.

### Gate-holding

Le principe est simple : plutot que de repousser l'avion et de le faire attendre moteurs tournants dans une file d'attente sur le taxiway, la compagnie maintient l'avion a la porte d'embarquement jusqu'a ce qu'un creneau de roulage direct soit disponible. L'avion reste branche a l'alimentation electrique du terminal, ses moteurs eteints. Quand le controle donne le feu vert, le roulage demarre immediatement sans temps d'attente intermediaire.

### Mise en route retardee

Les pilotes retardent le demarrage des moteurs le plus tard possible avant de quitter la porte. Chaque minute gagnee moteurs eteints est du carburant economise. Cette technique est particulierement efficace dans les aeroports congestiones ou les temps d'attente au pushback sont frequents.

### Optimisation des trajectoires

Le controle aerien peut contribuer en minimisant les arrets, en optimisant les trajectoires de roulage (eviter les detours) et en coordonnant les sequences de depart pour reduire le temps moteur au ralenti. Les systemes A-SMGCS (Advanced Surface Movement Guidance and Control Systems) aident a fluidifier le trafic au sol.

![TaxiBot en operation au sol — connexion au train avant de l'avion](/images/taxi-fuel-saving/taxibot-towing.webp)

## Et dans MSFS ? Appliquer ces techniques en simulation

Les pilotes virtuels serieux peuvent reproduire ces pratiques dans Microsoft Flight Simulator 2024 pour un realisme accru :

- **Taxi monomoteur** — Sur les add-ons de niveau etude (PMDG 737, Fenix A320), il est possible de ne demarrer qu'un moteur pour le roulage et de lancer le second pendant le trajet vers la piste
- **Mise en route retardee** — Attendre d'etre pret a rouler avant de demarrer les moteurs, plutot que de les allumer des la mise sous tension de l'avion
- **Gate-holding** — Preparer son vol (FMS, briefing, ATIS) moteurs eteints a la porte avant de demander le pushback

Sur [PilotLeague](https://pilotleague.com/fr/fonctionnalites/), le pilier **Efficience carburant** de votre score mesure precisement votre consommation en kg/nm par phase de vol — y compris le roulage. Un taxi bien gere avec une consommation maitrisee contribue directement a un meilleur score global. L'analyse post-vol detaille votre consommation phase par phase avec des notes de A a D, vous permettant d'identifier exactement ou le carburant a ete gaspille.

## Synthese des techniques

| Technique | Economie carburant taxi | Complexite | Disponibilite |
|-----------|------------------------|------------|---------------|
| Taxi monomoteur | 20-40 % | Faible | Immediat (procedure) |
| TaxiBot | 50-85 % | Elevee | Francfort, Schiphol, tests |
| Roulage electrique (EGTS) | ~4 % cycle total | Elevee | En developpement |
| Gate-holding | Variable | Faible | Immediat (ATC) |
| Mise en route retardee | 5-15 % | Faible | Immediat (procedure) |

## Ce que cela signifie

L'economie de carburant au roulage n'est pas un detail anecdotique — c'est un levier concret que l'industrie actionne deja. Le taxi monomoteur est devenu une procedure standard chez la plupart des grandes compagnies. Le TaxiBot passe du stade experimental a l'exploitation commerciale. Le roulage electrique progresse. Et chaque technique, du plus simple gate-holding au plus technologique EGTS, contribue a reduire l'empreinte carbone d'une industrie sous pression environnementale croissante.

Pour les pilotes virtuels, integrer ces pratiques dans leur routine de vol ajoute une couche de realisme operationnel que peu de simmers exploitent. Et avec des outils comme [PilotLeague](https://pilotleague.com/fr/fonctionnalites/) qui mesurent l'efficience carburant sur chaque vol, il n'a jamais ete aussi facile de quantifier l'impact de ces bonnes pratiques.

Les moteurs peuvent attendre. Votre score, lui, n'attend pas.

---

*Sources : [Eurocontrol](https://www.eurocontrol.int/), [OpenAirlines](https://blog.openairlines.com/engine-out-taxi-in-eoti), [Simple Flying](https://simpleflying.com/klm-taxibot-first-passenger-flght-schiphol-airport/), [Airbus](https://www.airbus.com/en/newsroom/stories/2025-07-taxibots-spool-up-as-project-heron-winds-down), [AEON Project](https://www.aeon-project.eu/engine-off-taxiing-operations/). Images : Smart Airport Systems / KLM / Airbus.*
