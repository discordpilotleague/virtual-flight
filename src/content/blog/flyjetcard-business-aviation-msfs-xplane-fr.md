---
title: "FlyJetCard : sim d'aviation d'affaires pour MSFS et X-Plane"
description: "FlyJetCard transforme MSFS et X-Plane 12 en véritable opération charter Part 91/135 avec 5 000+ missions IA et économie owner-operator complète."
lang: "fr"
pubDate: "2026-05-10"
heroImage: "../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp"
---

Une nouvelle application compagnon baptisée **FlyJetCard** (souvent abrégée en JetCard) se positionne comme le premier écosystème dédié à l'aviation d'affaires pour **Microsoft Flight Simulator** et **X-Plane 12** sous Windows. Au lieu d'un système générique de cargo ou de routing compagnie, JetCard simule des opérations de charter Part 91 et Part 135 — vols corporate, missions médicales, charters sportifs, trips owner-operator — avec leur propre briefing, leur fenêtre horaire et leur grille de paie.

![Interface de dispatch FlyJetCard pour MSFS et X-Plane 12](../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp)

## Ce que fait réellement FlyJetCard

JetCard tourne en parallèle du simulateur et lui fournit du travail. L'application génère en continu plus de **5 000 charters IA** répartis sur **50 catégories de missions** — évacuations sanitaires, logistique d'équipes sportives, transport d'exécutifs, vols loisirs, mouvements gouvernementaux et plus encore — depuis un réseau de **plus de 960 aéroports** orientés aviation d'affaires sur six continents. Les charters expirent selon des compteurs réalistes : une urgence médicale tient quatre heures, une réservation loisirs cinq jours, et le board se renouvelle selon le type de mission.

En arrière-plan, la plateforme modélise la réalité financière d'une compagnie de charter. Le pilote démarre **freelance** à 10 % de la valeur du charter pour des opérateurs fictifs, peut passer **employé** d'une compagnie créée par un autre joueur, puis atteindre le statut **owner-operator** avec sa propre flotte, sa masse salariale, ses réserves de maintenance et un système bancaire à paliers de prêt. Le choix avion est imposé : un light jet ne peut pas accepter une mission transatlantique, et les coûts d'exploitation suivent une économie réaliste, pas une simplification arcade.

## Un contexte de vol écrit, pas du routing aléatoire

Ce qui distingue JetCard d'un simple tracker de carrière, c'est le **récit IA** attaché à chaque vol. Chaque charter livre un dossier de mission — qui est à bord, pourquoi il faut être à destination, quel horaire compte — et les trips multi-legs enchaînent ces dossiers en une histoire continue. La synchronisation avec le monde réel fait partie du concept : le board réagit aux calendriers sportifs, aux courses de F1 et aux événements culturels, donc un samedi à Monaco fait remonter des charters F1, et un week-end de playoffs NBA produit des transferts d'équipe.

Le système **jPhone** gère la communication contextuelle entre dispatcher, FBO et clients, ce qui transforme le vol en opération plutôt qu'en simple leg. Le tracking est en direct avec affichage de la télémétrie, et la plateforme intègre **SimBrief** pour le flight planning ainsi que la météo live pour les décisions de dispatch.

![Charter board FlyJetCard avec dossiers de mission et briefings IA](https://flyjetcard.io/assets/about/charter-board.png)
*Crédit : [JetCard](https://flyjetcard.io/)*

## Ce que ça change pour les pilotes virtuels

Si vous suivez déjà vos heures dans un logbook tiers ou volez en ligne avec une compagnie virtuelle, JetCard occupe un autre créneau — plus proche d'un **mode carrière solo** que de VATSIM ou PilotEdge. C'est conçu pour les simmers qui veulent que chaque vol vienne avec un objectif, un dossier et une rémunération, sans s'engager dans le planning d'une virtual airline. Pour situer cet outil dans le paysage carrière plus large, notre [guide du logbook de carrière pilote virtuel](/fr/blog/carriere-pilote-virtuel-logbook) compare SimToolkitPro, Volanta et FSEconomy.

Le modèle de connexion reflète le double support simulateur : **MSFS** utilise SimConnect ou FSUIPC, tandis que **X-Plane 12** demande une configuration de port UDP. Cela veut dire que toute personne disposant des deux sims peut puiser dans le même pool de charters, alterner les flottes entre plateformes et conserver une carrière unique sur les deux. Si vous hésitez encore sur la plateforme à privilégier, notre [comparatif MSFS 2024 vs X-Plane 12](/fr/blog/msfs-2024-vs-xplane-12-comparatif) détaille les différences qui comptent vraiment pour le biz-jet.

## Avions, aéroports et progression

La plateforme propose **97 avions** allant du turbopropulseur monomoteur au Boeing Business Jet, et la logique d'éligibilité utilise les vraies caractéristiques — longueur de piste, rayon d'action, charge utile, pressurisation — pour filtrer ce que chaque opérateur peut accepter. Un King Air 350 attire un set de missions différent d'un Citation Latitude ou d'un Global 7500.

Les 960+ aéroports ont été retenus pour leur pertinence biz-aviation, pas pour le trafic compagnie. Cela met en avant les terrains FBO comme **Teterboro (KTEB)**, **Van Nuys (KVNY)**, **Paris-Le Bourget (LFPB)**, **Farnborough (EGLF)**, **Genève (LSGG)** ou **Aspen (KASE)** — des destinations où les jets corporate opèrent réellement, plutôt que les hubs majeurs qui dominent la simu compagnie. La progression carrière vient par-dessus : la réputation conditionne les paliers de prêt, l'achat de flotte ouvre les missions owner-operator, et l'embauche de pilotes permet aux gros opérateurs de tenir un planning multi-appareils.

![Tracker de vol live FlyJetCard avec affichage télémétrie](https://flyjetcard.io/assets/about/flight-tracker.png)
*Crédit : [JetCard](https://flyjetcard.io/)*

## Démarrer et accès

JetCard est actuellement en **alpha** avec invitations beta progressives. Les utilisateurs intéressés demandent l'accès anticipé via le [site officiel](https://flyjetcard.io/), et le modèle de licence intégré gère l'activation. Le flow d'installation décrit dans le [manuel pilote JetCard](https://manual.flyjetcard.io/) est court : créer un compte, installer le client desktop avec sa clé de licence, connecter le simulateur (SimConnect/FSUIPC pour MSFS, UDP pour X-Plane), parcourir le board, accepter une mission, voler, et encaisser quand JetCard détecte que le vol s'est terminé proprement.

Un bon premier run consiste en un contrat freelance sur un **light jet** au départ de Teterboro, sur un trajet court — un transfert d'équipe sportive vers Boston, un leg médical vers Buffalo, un vol corporate vers Dulles — pour apprivoiser le dispatch UI, les notifications jPhone et le calcul de paie avant de monter sur des trips long-courrier en gros porteurs.

## Conclusion

FlyJetCard est un produit de niche, et c'est précisément son atout. En se concentrant exclusivement sur l'aviation d'affaires plutôt que de couvrir tous les métiers du pilote en même temps, le projet construit une profondeur opérationnelle qu'aucun tracker de carrière généraliste ne peut égaler. La combinaison récit IA, synchronisation événements monde réel et économie de charter fonctionnelle transforme chaque vol en mission plutôt qu'en session free-flight. Pour les pilotes virtuels intéressés par les opérations biz-jet sur MSFS ou X-Plane 12, c'est l'un des projets tiers les plus ambitieux du genre — gardez un œil sur le [site JetCard](https://flyjetcard.io/) pour la fenêtre de sortie publique.
