---
title: "Just Flight Fokker F70/F100 Professional pour MSFS"
description: "Just Flight termine la phase de tests finaux de son bundle Fokker F70/F100 Professional pour MSFS 2020 et 2024. On fait le point complet ici."
lang: "fr"
pubDate: "2026-05-09"
heroImage: "../../assets/hero-justflight-fokker-f70-f100-msfs.webp"
---

Après plus de deux années de développement interne, **Just Flight** met la dernière main à son **Fokker F70/F100 Professional Bundle** pour Microsoft Flight Simulator 2020 et 2024. Le journal de développement de mai 2026 confirme que la logique du mode Profile de l'AFCAS a été réécrite, le système de freinage affiné, et que l'équipe est entrée dans la dernière phase de correction de bugs avant la sortie.

![Vue extérieure du Fokker F100 Professional dans Microsoft Flight Simulator](../../assets/hero-justflight-fokker-f70-f100-msfs.webp)

## Un Fokker enfin à la hauteur du simulateur moderne

Le Fokker F100 a été un avion régional discret mais omniprésent à partir de la fin des années 1980 : il a transporté des millions de passagers en Europe, en Asie et en Australie, rejoint en 1995 par son petit frère le F70. KLM Cityhopper, Austrian Airlines, Air France Régional, American Airlines, QantasLink ou Alliance Airlines en ont exploité d'importantes flottes, et l'appareil vole encore aujourd'hui chez Alliance Airlines ou Carpatair. Malgré ce poids historique, la famille Fokker n'avait jamais reçu de version haute fidélité dans MSFS — le bundle de Just Flight est le premier projet sérieux à combler ce manque.

Le pack regroupe **cinq sous-variantes** : un F70 avec escalier intégré et grande porte cargo, plus quatre configurations de F100 couvrant escalier intégré ou porte coulissante, petite ou grande porte cargo, et l'option de la porte L2. Les deux cellules utilisent les turbofans Rolls-Royce Tay — le **Tay 620-15** sur le F70 et le **Tay 650** sur le F100, plus lourd. Just Flight a enregistré les moteurs sur un appareil réel aux Pays-Bas, puis a intégré ces prises au moteur sonore Wwise, avec plus de 500 échantillons individuels selon le développeur.

## Des systèmes codés à la main, pas du MSFS de série

Ce qui distingue le projet d'un payware MSFS classique, c'est la part de code dédié écrite de zéro. Le **FMS** est une implémentation custom à double CDU, avec un véritable LNAV/VNAV, l'alignement IRS chronométré, l'import de plan de vol et toute la hiérarchie de pages d'origine (DIR, MODE, TACT MODE, INIT, REF, F-PLN, TO/APPR, PROG). Au-dessus, l'**Automated Flight Control and Augmentation System (AFCAS)**, lui aussi entièrement codé en interne, gère les modes latéraux et verticaux, dont une descente Profile qui respecte les contraintes d'altitude et de vitesse, et un autoland soigneusement calibré.

Sous l'avionique, la simulation va jusque dans les entrailles de la cellule. Chaque circuit hydraulique est modélisé indépendamment, avec ses pompes électriques ; le réseau électrique sépare les sources moteur, APU, externe et secours, avec gestion des TRU ; la pressurisation, la demande d'air conditionné, le dégivrage et la logique de transfert carburant se comportent comme sur l'avion réel. Le célèbre **aérofrein de queue et les lift dumpers**, le verrouillage rafale, les commandes alternatives de stab et de volets, ainsi que la cinématique du train pression-dépendante, sont tous reproduits individuellement plutôt que cachés derrière des animations MSFS génériques.

![Cockpit du Fokker F100 avec écrans CRT et double CDU](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_COCKPIT_010526_1_s0BFOYFCr.png)
*Crédit : [Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

## Ce que ça change pour les pilotes virtuels

Pour qui pilote déjà un FlyByWire A320, un iniBuilds A310 ou un PMDG 737, le F70/F100 ressemblera à une plongée dans un cockpit d'une autre génération — instruments analogiques de secours, écrans CRT incurvés, interrupteurs classiques — mais avec la profondeur système qui a fait la réputation de ces add-ons modernes. Les postes commandant, copilote et observateur sont entièrement modélisés, switches et disjoncteurs animés, et Just Flight a ajouté des clickspots cachés (TOGA, calage standard) pour que l'utilisation reste fluide en vol.

Les Tay ont un caractère bien à eux. Réactifs au niveau de la mer, ils peinent à la montée quand le F100 est lourd : le journal de développement parle d'environ trente minutes et 156 nautiques pour atteindre le FL350 à la masse maximale en conditions ISA. C'est précisément ce genre de contrainte qui transforme les courts-courriers européens — Amsterdam-Munich, Paris-Faro, Vienne-Bucarest — en vols procéduraux complets plutôt qu'en exercices d'avance rapide. Avec une autonomie maximale d'environ 1 500 nautiques, le bundle est taillé pour les réseaux régionaux où le Fokker s'est vraiment épanoui.

## Cabine, EFB et finitions

La cabine passagers complète est accessible et interactive. Éclairages, portes, interphones et galleys s'utilisent ; les annonces cabine, le lecteur de musique numérique et la logique Auto Cabin Crew sont fournis ; les LODs ont été calibrés pour qu'une déambulation dans l'avion ne fasse pas chuter le framerate. Chaque livrée embarque ses textures de cabine personnalisées, et les **30 livrées incluses** — 11 pour le F70 et 19 pour le F100, de KLM Cityhopper à Austrian Airlines en passant par American Airlines, TAM ou le Service de Vol du Gouvernement Slovaque — couvrent l'essentiel des appareils que l'on a envie de piloter.

![Cabine passagers du Fokker F100 dans MSFS](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_CABIN_010526_1_L2gHiqeFA.png)
*Crédit : [Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

L'EFB couvre tout l'aspect opérationnel : états cold-and-dark ou turnaround, gestion carburant et masse-centrage avec contrôle par réservoir, embarquement et avitaillement à des cadences réalistes, GPU et cales, calculs de performance décollage et atterrissage, **import OFP SimBrief**, METAR, suivi cartographique en direct et **support des cartes Navigraph** via abonnement séparé. La compatibilité GSX, le mode walkaround de MSFS 2024 et le système de checklist interactif natif — près de 300 items, dont plus de 250 avant le décollage — complètent l'ensemble.

## Comment en tirer le meilleur parti

Le meilleur moyen de prendre l'appareil en main est de commencer par **une rotation courte en Europe** — KLM Cityhopper Amsterdam-London City, ou Austrian Vienne-Francfort — à masse modérée, de façon à ce que l'avion ait la marge de montée pour atteindre un FL raisonnable. Une fois les pages FMS, les modes AFCAS et la logique aérofrein/lift dumpers maîtrisés, des étapes plus longues sur le réseau australien d'Alliance Airlines ou QantasLink mettront le mode Profile et l'autoland à l'épreuve. La compatibilité avec la checklist interactive de MSFS est confirmée : les pilotes attachés à l'UI native bénéficieront du flux complet sans add-on tiers.

La [page du produit en développement chez Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle) reste l'endroit à surveiller pour la prochaine mise à jour — l'entrée de mai 2026 évoque les derniers tests en vol et la chasse aux bugs, ce qui annonce généralement une fenêtre de sortie en semaines plutôt qu'en mois.

## Conclusion

Si le projet tient les promesses des journaux de développement, le Fokker F70/F100 Professional Bundle pourrait devenir le biréacteur régional de référence dans MSFS — l'avion qui comble le vide entre les turboprops et les gros A320 et 737. Nous publierons un test complet sur Virtual Flight dès la mise à disposition de la version finale. En attendant, la [page d'actualités de Just Flight](https://www.justflight.com/) reste le meilleur endroit pour guetter l'annonce officielle.
