---
title: "iniBuilds L-1011 TriStar : le légendaire triréacteur arrive sur MSFS 2024"
description: "iniBuilds annonce le Lockheed L-1011 TriStar pour MSFS 2024 avec poste mécanicien navigant, autoland CAT IIIB et systèmes d'époque."
lang: 'fr'
pubDate: 'Feb 14 2026'
heroImage: '../../assets/hero-inibuilds-tristar.jpg'
---

Il y a les avions qui ont marque leur epoque, et il y a ceux qui l'ont devancee. Le Lockheed L-1011 TriStar appartient resolument a la seconde categorie. Lorsqu'il entra en service en 1972, il embarquait des technologies qui ne deviendraient la norme dans l'aviation commerciale qu'une decennie plus tard : un systeme de controle par portance directe pour des atterrissages d'une douceur remarquable, une capacite d'atterrissage automatique CAT IIIA des sa certification initiale, et un degre de raffinement structural qui faisait parler les pilotes en des termes habituellement reserves aux avions de chasse. Seulement 250 exemplaires environ furent construits, victimes d'une catastrophe financiere qui n'avait strictement rien a voir avec la qualite de la cellule elle-meme. Aujourd'hui, plus d'un demi-siecle apres que le premier TriStar ait quitte les chaines d'assemblage de Palmdale, [iniBuilds](https://inibuilds.com/) prepare le L-1011-500 pour Microsoft Flight Simulator 2024 -- et le niveau d'ambition affiche laisse presager l'un des add-ons majeurs de la plateforme.

![Bannière de développement du L-1011 TriStar par iniBuilds](/images/tristar/banner.webp)

## Breve histoire d'un chef-d'oeuvre contrarie

Pour comprendre pourquoi le TriStar compte autant, il faut saisir la crise qui l'a faconne. A la fin des annees 1960, Lockheed concoit le L-1011 pour concurrencer directement le McDonnell Douglas DC-10 sur le marche naissant des gros-porteurs. Alors que Douglas choisit une approche conventionnelle, Lockheed vise plus haut. Le conduit en S du TriStar -- acheminant l'air vers le moteur numero deux par une entree incurvee integree a la derive -- etait nettement plus complexe a realiser que le montage en pylone direct du DC-10, mais il produisait un dessin plus propre, plus efficient aerodynamiquement, avec une trainee reduite et un comportement asymetrique bien moins prononce en cas de panne moteur.

Lockheed retient Rolls-Royce et son revolutionnaire turboreacteur a double flux RB211 comme motorisation exclusive. Le RB211 promettait une consommation de carburant sans precedent grace a son architecture a trois corps, mais les couts de developpement devinrent incontroles. En fevrier 1971, Rolls-Royce fait faillite. La production du L-1011 s'arrete net, des cellules sans moteurs immobilisees dans l'usine de Palmdale. Le gouvernement britannique nationalise finalement Rolls-Royce et la production reprend, mais le retard s'avere fatal pour les perspectives commerciales du TriStar. Les compagnies aeriennes qui attendaient le L-1011 se tournent vers Douglas. Lockheed ne rattrapa jamais le terrain perdu.

Rien de tout cela n'entama la valeur intrinseque de l'avion. Les pilotes adoraient le TriStar pour ses qualites de vol -- les spoilers de controle par portance directe permettaient des corrections de trajectoire sans changement d'assiette, l'autoland fonctionnait parfaitement jusqu'a des conditions de visibilite nulle, et l'appareil possedait un caractere doux et tolerant dans tous les regimes de vol. Les passagers appreciaient la cabine spacieuse et le niveau sonore remarquablement bas, consequence du conduit en S qui isolait une grande partie du bruit du moteur central. Le L-1011-500, la variante choisie par iniBuilds, representait le developpement long-courrier : un fuselage raccourci avec une capacite en carburant augmentee et des moteurs RB211-524 plus puissants, concu pour operer sur les routes transatlantiques et intercontinentales.

![Modèle extérieur du L-1011 TriStar](/images/tristar/exterior.webp)

## Ce que iniBuilds developpe

iniBuilds s'est impose comme l'un des developpeurs les plus techniquement ambitieux de l'ecosysteme MSFS. Leur A350 a pose un standard eleve en matiere de profondeur systemique et de fidelite visuelle, et le projet TriStar semble porter cette meme philosophie vers un territoire radicalement different. La ou l'A350 est ecran de verre et commandes de vol electriques, le L-1011 est cadrans analogiques, commandes par cables et un poste mecanicien navigant indispensable aux operations courantes.

### La motorisation : turboreacteurs RB211-524

Les trois Rolls-Royce RB211-524 sont modelises avec une logique realiste d'EPR (Engine Pressure Ratio) et des caracteristiques fideles d'inertie moteur. Le RB211 etait un moteur a trois corps -- compresseur basse pression, pression intermediaire et haute pression tournant chacun a des regimes differents -- et simuler cela correctement implique de reproduire les delais de montee en regime, les relations de temperature entre les etages, et les courbes de reponse en poussee qui donnaient au TriStar sa delivrance de puissance si caracteristique. Les pilotes ayant vole sur l'avion reel decrivent le RB211 comme souple mais pas instantane : il existait un temps de latence perceptible entre l'action sur les manettes et la reponse en poussee, exigeant de l'anticipation, particulierement en approche. Reproduire fidelement ce comportement dans le simulateur sera essentiel a l'authenticite de l'experience.

### Architecture des systemes : la redondance en triplicat

Le veritable L-1011 avait ete concu avec la redondance comme principe fondamental. iniBuilds modelise trois circuits hydrauliques independants, un systeme pneumatique complet et une architecture electrique AC/DC integrale. Concretement, cela signifie que les pannes se propagent de maniere realiste -- la perte d'un circuit hydraulique ne reduit pas simplement les capacites d'un tiers ; elle affecte des commandes de vol specifiques, des fonctions du train d'atterrissage et des systemes utilitaires d'une facon qui exige de l'equipage qu'il consulte ses procedures et gere ses ressources.

Le circuit pneumatique gere le demarrage des moteurs, la pressurisation cabine, la climatisation et le degivrage. Le reseau electrique comprend des alternateurs entraines par les moteurs, un alternateur APU, des transformateurs-redresseurs pour le courant continu et des batteries de secours. Chaque bus, chaque relais, chaque logique de transfert est la, attendant la surveillance du mecanicien navigant.

![Poste du mécanicien navigant](/images/tristar/flight-engineer.webp)

### Le poste mecanicien navigant

C'est peut-etre l'element le plus significatif du TriStar d'iniBuilds. Le poste du mecanicien navigant constituait le centre nerveux de la gestion des systemes du L-1011. Depuis cette position, le troisieme membre d'equipage surveillait et controlait moteurs, carburant, hydraulique, pneumatique, electrique et pressurisation. Dans l'avion reel, un mecanicien navigant competent faisait la difference entre une operation de routine et une situation qui se degradait.

iniBuilds implemente un poste mecanicien navigant entierement interactif, ou chaque panneau, chaque jauge, chaque commande est cliquable et fonctionnel. Pour les simmers qui souhaitent vivre l'experience complete a trois membres d'equipage -- par exemple en volant sur un reseau en ligne avec un ami aux commandes du poste mecanicien -- cela ouvre une dimension de gestion des ressources de l'equipage qui n'existe tout simplement pas dans les avions modernes a cockpit numerique.

Conscient que tout le monde ne souhaite pas gerer trois postes simultanement, iniBuilds integre egalement une option d'automatisation par IA pour le poste mecanicien. L'ingenieur IA prendra en charge la surveillance courante et la gestion des systemes, permettant aux pilotes solitaires de se concentrer sur le pilotage tout en garantissant que les systemes fonctionnent correctement en arriere-plan. L'equilibre entre gestion manuelle et fonctionnement automatise sera determinant pour rendre l'appareil accessible sans diluer son caractere.

![Système de commandes de vol automatiques](/images/tristar/afcs.webp)

### Autoland et autovol : en avance sur son temps

Le L-1011 fut le premier gros-porteur certifie pour les atterrissages automatiques CAT IIIA, et les versions ulterieures atteignirent la CAT IIIB -- essentiellement des operations par visibilite nulle, avec juste assez de references visuelles pour degager la piste apres le toucher. iniBuilds modelise la capacite autoland CAT IIIB complete ainsi que le systeme de pilotage automatique avance (AFCS) et l'auto-manette.

L'AFCS du veritable TriStar etait remarquablement sophistique pour son epoque. Il incluait des modes de penetration de turbulence, une preselection d'altitude et des fonctions de controle de vitesse consideres comme avances meme dix ans apres la mise en service de l'appareil. L'auto-manette s'integre a un Performance Management System, la reponse de Lockheed au probleme de la gestion du carburant : apres le choc petrolier de 1973, les compagnies aeriennes exigeaient que leurs avions volent aussi efficacement que possible, et le PMS permettait aux equipages d'optimiser les profils de montee, de croisiere et de descente pour une consommation minimale.

### Navigation : entre cartes papier et planification numerique

La suite de navigation reflete la position du TriStar a la charniere entre l'aviation analogique et les debuts du numerique. iniBuilds implemente la radionavigation (VOR, DME, ADF), les systemes de navigation inertielle (INS), le GPS et un mode combine INS+GPS. L'INS etait l'outil principal de navigation long-courrier du TriStar dans le monde reel ; les equipages alignaient les plateformes inertielles a la porte d'embarquement, saisissaient les waypoints manuellement, puis surveillaient la derive tout au long du vol.

Un detail particulierement savoureux : le "Paper Flight Bag" -- une alternative vintage a l'EFB moderne. Au lieu d'une interface tablette, les pilotes consulteront des cartes et une documentation au format papier, fideles a l'epoque du TriStar. Pour le cote pratique, l'import de routes SimBrief est pris en charge pour le chargement des waypoints INS, etablissant un pont entre l'authenticite historique et les habitudes de travail du simmer moderne.

![Interface du Paper Flight Bag](/images/tristar/paper-flight-bag.webp)

### Fidelite visuelle et detail du cockpit

iniBuilds insiste particulierement sur la materialite de l'environnement cockpit : panneaux en aluminium brosse, etiquettes usees, poussiere visible. C'est un avion qui a vecu dans le monde reel, pilote par des milliers d'equipages sur des millions de kilometres, et le cockpit doit porter cette histoire. Les postes du commandant, du copilote et du mecanicien navigant sont tous entierement modelises, ce qui signifie que l'on peut se deplacer librement entre les positions pour gerer les differents aspects du vol.

A l'exterieur, le modele comporte une flexion d'aile realiste, des effets de distorsion thermique au niveau des moteurs et des surfaces de controle mecaniquement fideles. La flexion d'aile merite qu'on s'y arrete, car la voilure du L-1011 etait un dessin particulierement abouti -- l'experience de Lockheed dans l'aviation militaire faisait que l'aile du TriStar atteignait d'excellents rapports portance/trainee, et la voir flechir de maniere realiste sous la charge aerodynamique ajoutera considerablement a l'immersion visuelle.

![Détail du cockpit en aluminium brossé](/images/tristar/cockpit.webp)

![Éclairage du cockpit de nuit](/images/tristar/lighting.webp)

### Livrees

L'ensemble des livrees annoncees couvre six operateurs representant des chapitres cles de l'histoire commerciale du TriStar : **Delta Air Lines** (le plus gros exploitant de TriStar et la compagnie la plus etroitement associee au type aux Etats-Unis), **British Airways** (qui exploitait ses TriStars sur les liaisons europeennes et moyen-orientales), **Air Transat** (le transporteur de loisirs canadien), **LTU** (la compagnie charter allemande qui utilisait le TriStar sur des liaisons vacances long-courrier), **Pan Am** (qui exploita une petite flotte de TriStars dans ses dernieres annees d'existence) et **United Airlines**. Chaque livree represente une epoque et une philosophie d'exploitation differentes, offrant aux pilotes une variete considerable de routes et de scenarios a explorer.

## Ce que cela represente pour la communaute

Le L-1011 TriStar comble un vide dans la bibliotheque d'avions de MSFS 2024 qu'aucun autre add-on n'occupe actuellement. Les gros-porteurs modernes a cockpit numerique sont bien representes, et le creneau des classiques moyen-courriers est couvert par des appareils comme le Leonardo MD-80 et le Just Flight BAe 146. Mais le gros-porteur trireacteur classique -- l'avion qui a defini le vol long-courrier dans les annees 1970 et 1980 -- brillait par son absence. Le TriStar, avec son exploitation a trois membres d'equipage, ses systemes analogiques et ses qualites de vol legendaires, propose une experience fondamentalement differente de tout ce qui existe dans le simulateur.

Le poste mecanicien navigant a lui seul le distingue de l'ensemble de la flotte virtuelle disponible. A une epoque ou l'automatisation mono-pilote est la norme en simulation de vol, la perspective de gerer un cockpit a trois -- que ce soit en solo avec l'assistance de l'IA ou avec des membres d'equipage humains en ligne -- constitue un veritable elargissement du champ des possibles dans MSFS 2024.

iniBuilds n'a pas annonce de date de sortie ni de prix. Compte tenu de la complexite du projet -- systemes en triple redondance, poste mecanicien navigant complet, avionique d'epoque et le niveau de detail visuel que les captures d'ecran laissent entrevoir -- il s'agit manifestement d'un developpement toujours en cours avec un travail significatif encore devant. Ce qui a ete montre jusqu'a present indique cependant qu'iniBuilds traite le TriStar avec la meme ambition et la meme rigueur technique qui ont defini leur A350, appliquees a un avion qui exige une modelisation systemique encore plus profonde.

Pour ceux d'entre nous qui attendent depuis des decennies une veritable simulation du TriStar, l'attente semble toucher a sa fin. Le L-1011 meritait mieux que le sort que la faillite de Rolls-Royce lui a reserve. Peut-etre que dans les cieux virtuels, il obtiendra enfin la reconnaissance qu'il a gagnee.

---

*Source : [iniBuilds TriStar Airliner — Development Update](https://forum.inibuilds.com/topic/35590-inibuilds-tristar-airliner-development-update/) sur le forum [iniBuilds](https://inibuilds.com/). Images publiées avec l'aimable autorisation d'iniBuilds.*
