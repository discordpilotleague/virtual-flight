---
title: "PilotLeague Printemps 2026 — Classement Juste MSFS 2024 & VA"
description: "Classement glissant 14 jours qui récompense les pilotes actifs, compagnies virtuelles, profils publics et nouvelles alertes sécurité — la plus grosse mise à jour PilotLeague MSFS 2024."
lang: 'fr'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

Microsoft Flight Simulator 2024 abrite l'une des communautés les plus actives du simracing aérien, et [PilotLeague](https://pilotleague.com/fr/) — souvent décrit comme le Strava des pilotes virtuels — vient de publier sa plus grosse mise à jour depuis son lancement. Reconstruite en 72 heures, cette version de printemps 2026 change la donne sur trois plans : un classement enfin juste, des compagnies virtuelles natives, et une couche sécurité bien plus lisible.

![Classement V2 PilotLeague avec chips compagnies virtuelles et onglets catégories](../../assets/hero-pilotleague-spring-2026-update.webp)
*Crédit : [PilotLeague — Classement Global V2](https://pilotleague.com/fr/classements/)*

Si vous avez l'habitude de lancer MSFS 2024 le week-end, de poser un CJ4 à Innsbruck ou un 747 à Hong Kong, et que vous vous êtes déjà demandé pourquoi votre rang stagnait malgré de bons vols, cette refonte est pour vous. On fait le tour.

## Quoi de neuf en un coup d'œil

- **Classement V2** : fenêtre glissante de 14 jours avec décroissance exponentielle, qui récompense enfin l'activité récente.
- **Compagnies virtuelles (VA)** : callsign, code IATA, logo partagés, chips visibles sur tous les classements.
- **Profils pilotes publics** : une URL par pilote, vitrine façon magazine avec rang mondial, niveau, statistiques et derniers vols.
- **Avatars personnalisés** : upload JPG/PNG, recadrage circulaire 512×512, contrôle NSFW côté serveur.
- **Interface sécurité repensée** : détection en 500 ms, bannière rouge dégradée sur les vols concernés, 7 langues.
- **Tracé GPS corrigé** : polyligne colorée par phase de vol, échantillonnage adaptatif pour les vols longs.
- **Séries (streaks) fiabilisées** : deux bugs corrigés, échelle 6 paliers qui n'impacte plus le classement.
- **Cohérence site-wide** : le site public et l'espace pilote partagent désormais les mêmes vues matérialisées V2.

## Classement V2 : fini les classements fossiles

L'ancien classement cumulait les points à vie. Résultat : les pilotes installés depuis un an trustaient le top, et un nouveau venu — même brillant — ne pouvait littéralement pas les rattraper. La V2 remet tout le monde sur la même ligne de départ tous les quinze jours.

Le nouveau moteur utilise une **fenêtre glissante de 14 jours** avec décroissance exponentielle : vos vols d'hier pèsent plus lourd que ceux d'il y a deux semaines, et les vols au-delà de la fenêtre disparaissent du calcul. Le score est rafraîchi **toutes les 15 minutes** sur des vues matérialisées Postgres, ce qui permet de servir le classement global sans faire transpirer la base.

La formule est volontairement lisible :

```
pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier
```

- `performance_recent` : moyenne pondérée des scores de vos vols sur 14 jours, avec décroissance exponentielle.
- `activity_multiplier` : bonus lié à la régularité (sans devenir un vol vide de sens).
- `reliability_multiplier` : pénalise les abandons en vol, les crashs en série, les vols tronqués.

Les scores par catégorie ne sont **plus plafonnés à 100**. Un atterrissage d'exception peut donc vous hisser au-dessus du peloton sur cette catégorie précise, même si votre score global reste mesuré.

## Quatre classements catégoriels spécialisés

La V2 introduit quatre onglets distincts, chacun avec son top 40 :

1. **Landing** — qualité de l'atterrissage : V/S au toucher, G-force, alignement centerline, précision sur la zone de toucher des roues (TDZ).
2. **SOP** — respect des procédures : feux, train, volets, approche stabilisée, callouts.
3. **Safety** — sécurité : absence de décrochages, overspeeds, inclinaisons excessives, sorties de piste.
4. **Fuel Efficiency** — consommation comparée à la baseline communautaire, phase par phase.

Chaque ligne affiche le score V2 de la catégorie, un **badge d'activité**, le nombre de vols sur la fenêtre, et la **chip de la compagnie virtuelle** si le pilote appartient à une VA. Vous pouvez enfin comparer ce qui est comparable : le meilleur atterrisseur n'est pas forcément le meilleur gestionnaire de carburant, et c'est très bien.

Les quatre vues sont accessibles depuis [la page classements](https://pilotleague.com/fr/classements/), avec des sous-pages dédiées : [Landing](https://pilotleague.com/fr/classements/landing/), [Fuel](https://pilotleague.com/fr/classements/fuel/), [Safety](https://pilotleague.com/fr/classements/safety/).

## Compagnies virtuelles : enfin natives

Les compagnies virtuelles font partie de l'ADN du flight sim, mais jusqu'ici PilotLeague n'avait pas d'objet VA de premier ordre. C'est corrigé.

Une VA se définit désormais par cinq attributs : **slug, nom, callsign, code IATA, logo**. Une fois créée depuis **Settings → Networks**, la chip apparaît partout où votre identité est affichée :

- Sur chaque ligne du classement global et des classements catégoriels.
- En en-tête de votre profil public.
- Dans la bannière World Rank de votre dashboard.

Le **badge bleu vérifié** n'est pas automatique. L'équipe PilotLeague l'accorde manuellement, une fois que la VA a démontré une activité organique (plusieurs pilotes volant régulièrement sous le callsign). Cela évite les VA fantômes créées pour gonfler un ego, tout en laissant la porte ouverte aux petits groupes d'amis.

La roadmap VA est explicite et publique :

- **Routes programmées** (scheduled routes)
- **Flottes** (fleet rosters)
- **Progression hiérarchique** (rank progression : Cadet → Captain)
- **Classements dédiés par VA**

Autrement dit, PilotLeague se donne les moyens de devenir la colonne vertébrale de l'écosystème VA sur MSFS 2024, sans forcer les VA existantes à migrer — elles s'ajoutent simplement à leur outillage habituel.

## Profils pilotes publics : votre logbook en vitrine

Chaque pilote dispose désormais d'une URL publique du type `pilotleague.com/pilots/<username>`. C'est un profil façon magazine, pensé pour être partagé sur X, Bluesky ou Discord.

![Profil pilote public PilotLeague avec rang mondial, niveau, statistiques et derniers vols](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*Crédit : [PilotLeague — Profil pilote public](https://pilotleague.com/fr/)*

Le profil se lit de haut en bas :

- **En-tête d'identité** : avatar, nom d'affichage, drapeau du pays, callsign, chip VA, pseudos IVAO / VATSIM, poignées sociales (X, Bluesky, Twitch, YouTube).
- **Bannière World Rank** : votre position dans le classement global V2.
- **Barre Niveau + XP** : progression claire, avec palier suivant.
- **Statistiques clés** : total de vols, heures, distance parcourue, score moyen.
- **Graphique de performance 30 jours** : tendance visuelle de vos scores.
- **Derniers vols** : les 10 plus récents, avec lien direct vers le détail.

Chaque pilote garde le contrôle : depuis **Settings**, vous choisissez ce qui est public et ce qui reste privé. Un pilote discret peut tout masquer sauf l'identité minimale ; un streamer peut tout exposer, y compris ses liens sociaux.

### Avatars : upload propre et contrôlé

L'upload d'avatar a été retravaillé. **Settings → Account → clic sur l'avatar**, vous choisissez un JPG ou un PNG. Le client redimensionne automatiquement à **512×512 maximum** avant envoi, avec un recadrage circulaire interactif. Le serveur impose un **plafond de 2 Mo** et exécute un contrôle NSFW avant publication. Pas de traitement asynchrone obscur : vous voyez le résultat immédiatement.

## Interface sécurité : ce que vous avez cassé, vous le voyez

La sécurité était déjà pénalisée dans le score, mais l'interface ne rendait pas justice à ce qui s'était passé en vol. C'est ce qui change ici.

![Bannière rouge d'atterrissage hors piste en haut d'une page détail de vol PilotLeague](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*Crédit : [PilotLeague — Alerte sécurité hors piste](https://pilotleague.com/fr/)*

Le cas d'usage le plus parlant : l'atterrissage **hors piste**. Quand votre avion touche le sol en dehors de l'emprise d'une piste, le moteur de détection s'active **en 500 ms** à partir des télémétries. Un **grace window de 5 frames** sur le simvar `ON ANY RUNWAY` évite les faux positifs pendant le roulement (certaines pistes complexes peuvent voir le simvar osciller pendant une fraction de seconde sur les taxiways en bout de piste).

La pénalité est appliquée de manière **atomique et cumulative** : **−100 points safety** par infraction, sans possibilité d'en perdre deux fois pour le même événement grâce à un verrou sur l'écriture.

Côté interface, une **bannière rouge en dégradé** coiffe désormais la page détail du vol concerné. Elle est localisée dans les **7 langues UI supportées** (EN, FR, DE, ES, BR, JA, ZH). Impossible de ne pas la voir en ouvrant le vol le lendemain matin — et c'est le but.

## Correction du tracé GPS : carte enfin honnête

Le bug était discret mais agaçant : sur de nombreux vols, la carte affichait une **ligne pointillée droite** entre le point de départ et l'arrivée, comme si PilotLeague n'avait capturé aucune télémétrie. En réalité, la requête de visibilité interrogeait la mauvaise table, renvoyait un HTTP 500, et le front basculait silencieusement sur le fallback.

![Tracé GPS coloré par phase de vol — décollage, montée, croisière, descente, approche, atterrissage](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*Crédit : [PilotLeague — Tracé GPS coloré par phase](https://pilotleague.com/fr/)*

Le correctif est en place, et l'équipe en a profité pour muscler le rendu. La polyligne est désormais **colorée par phase de vol** : taxi, décollage, montée initiale, montée, croisière, descente, approche, atterrissage. Un coup d'œil suffit pour repérer un palier anormal en montée, un TOD trop tardif, une approche non stabilisée.

Un **échantillonnage adaptatif** gère les vols longs. Un Honolulu–Sydney de 10 heures accumule facilement **plus de 1 500 points de télémétrie** : sans adaptation, la carte deviendrait illisible et la page mettrait plusieurs secondes à se rendre. L'algorithme conserve tous les points autour des phases critiques (décollage, approche, atterrissage) et en décime aux endroits où la trajectoire est linéaire.

## Séries (streaks) : le bug qui fossilisait les classements

Deux bugs se combinaient pour fausser les séries de vols quotidiens :

1. **La série n'expirait jamais.** La fonction SQL de reset existait mais n'avait jamais été planifiée. Résultat : une fois la série démarrée, elle ne s'arrêtait plus.
2. **Ouvrir un vieux vol ré-écrivait `last_flight_date` à aujourd'hui.** Conséquence : les pilotes qui relisaient leurs vieux vols voyaient leur série se prolonger artificiellement, parfois depuis des mois.

Les deux sont corrigés. Un **balayage nocturne à 00:05 CET** met `current_streak` à zéro si le dernier vol date de plus d'un jour. La **longest_streak** est préservée (vous gardez la mémoire de votre record personnel), mais la série courante reflète enfin la réalité.

L'échelle de bonus est explicite, **6 paliers** :

| Palier | Durée | Multiplicateur XP |
|--------|-------|-------------------|
| 1 | 1–2 jours | ×1,00 |
| 2 | 3 jours+ | ×1,05 |
| 3 | 7 jours+ | ×1,10 |
| 4 | 14 jours+ | ×1,15 |
| 5 | 30 jours+ | ×1,20 |
| 6 | 60 jours+ | ×1,25 |

Point crucial : **les séries ne touchent que l'XP** (donc votre niveau), **jamais le score ni le classement**. Un pilote occasionnel mais précis n'est pas pénalisé face à un pilote quotidien moins rigoureux. C'est philosophiquement important, et c'est ce qui distingue un classement juste d'un classement qui récompense simplement le temps passé devant l'écran.

## Cohérence site-wide

Avant cette mise à jour, le site public et l'espace authentifié pouvaient afficher des chiffres légèrement différents, le temps que les caches se synchronisent. Désormais, `pilotleague.com/rankings/*` (public) et `pilots.pilotleague.com/v4/leaderboard` (pilote connecté) consomment **les mêmes vues matérialisées V2**. Plus de décalage, plus de surprises.

## Localisation complète en 7 langues

L'ensemble de l'interface — classements, profils, bannières sécurité, textes d'aide — est entièrement traduit dans **les 7 langues UI** : anglais, français, allemand, espagnol, portugais (Brésil), japonais, chinois. Les communautés non-anglophones n'ont plus à jongler avec l'anglais pour comprendre leurs pénalités ou leurs multiplicateurs.

## Ce qu'il faut retenir

Cette mise à jour n'est pas un simple patch visuel. C'est une refonte du modèle de compétition :

- Un classement qui récompense **ce que vous volez maintenant**, pas votre ancienneté.
- Des **compagnies virtuelles** traitées comme des entités de premier ordre.
- Des **profils publics** qui transforment le logbook en carte de visite.
- Une **couche sécurité** lisible et multilingue.
- Des **bugs structurants** (tracé GPS, streaks) éliminés.

Si vous aviez abandonné PilotLeague il y a six mois en trouvant le classement injuste, c'est le moment de revenir. Si vous n'avez jamais essayé, voici par où commencer.

## Passez à l'action

- **[Classement global V2](https://pilotleague.com/fr/classements/)** — voyez où vous vous situez sur 14 jours.
- **[Classement Landing](https://pilotleague.com/fr/classements/landing/)** — le terrain de jeu des poseurs de roues millimétrés.
- **[Classement Fuel](https://pilotleague.com/fr/classements/fuel/)** — pour les gestionnaires de carburant méticuleux.
- **[Classement Safety](https://pilotleague.com/fr/classements/safety/)** — zéro décrochage, zéro sortie de piste.
- **[Télécharger l'application](https://pilotleague.com/fr/download/)** — Windows, gratuit, capture automatique des vols MSFS 2024.

Pour tout le reste, la [page fonctionnalités](https://pilotleague.com/fr/fonctionnalites/) détaille chaque module en profondeur.

## FAQ

### Qu'est-ce que PilotLeague ?

PilotLeague est une application compagnon gratuite et une plateforme web pour Microsoft Flight Simulator 2024. L'outil capture automatiquement vos vols, les note selon des critères objectifs (atterrissage, procédures, sécurité, carburant) et vous situe dans un classement communautaire. Pensez Strava, mais pour pilotes virtuels.

### Comment le nouveau score de classement est-il calculé ?

La formule est `pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier`, appliquée sur une fenêtre glissante de 14 jours avec décroissance exponentielle. Plus vos vols sont récents, plus ils pèsent. Le score est rafraîchi toutes les 15 minutes.

### Les séries affectent-elles mon classement ?

Non. Les séries boostent uniquement l'XP (montée de niveau), jamais le score ni le classement. Le multiplicateur XP maximum est ×1,25 à partir de 60 jours consécutifs. Un pilote occasionnel mais précis peut largement dominer un pilote quotidien moins rigoureux.

### Qu'est-ce qu'une compagnie virtuelle sur PilotLeague ?

Une compagnie virtuelle (VA) est un groupe de pilotes volant sous un callsign, un code IATA et un logo partagés. Sur PilotLeague, elle se matérialise par une chip visible sur les classements et les profils. Création depuis Settings → Networks, badge vérifié accordé manuellement une fois l'activité organique démontrée.

### PilotLeague est-il gratuit ?

Oui. L'application compagnon Windows et la plateforme web sont gratuites pour tous les pilotes MSFS 2024. La plateforme web est responsive et consultable sur mobile.

Rendez-vous dans le circuit.

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "Qu'est-ce que PilotLeague ?", "acceptedAnswer": { "@type": "Answer", "text": "PilotLeague est une application compagnon gratuite et une plateforme web pour Microsoft Flight Simulator 2024. L'outil capture automatiquement vos vols, les note selon des critères objectifs (atterrissage, procédures, sécurité, carburant) et vous situe dans un classement communautaire. Pensez Strava, mais pour pilotes virtuels." } },
    { "@type": "Question", "name": "Comment le nouveau score de classement est-il calculé ?", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier, appliqué sur une fenêtre glissante de 14 jours avec décroissance exponentielle. Le score est rafraîchi toutes les 15 minutes." } },
    { "@type": "Question", "name": "Les séries affectent-elles mon classement ?", "acceptedAnswer": { "@type": "Answer", "text": "Non. Les séries boostent uniquement l'XP (montée de niveau), jamais le score ni le classement. Le multiplicateur XP maximum est ×1,25 à partir de 60 jours consécutifs." } },
    { "@type": "Question", "name": "Qu'est-ce qu'une compagnie virtuelle sur PilotLeague ?", "acceptedAnswer": { "@type": "Answer", "text": "Une compagnie virtuelle (VA) est un groupe de pilotes volant sous un callsign, un code IATA et un logo partagés. Sur PilotLeague, elle se matérialise par une chip visible sur les classements et les profils pilotes publics." } },
    { "@type": "Question", "name": "PilotLeague est-il gratuit ?", "acceptedAnswer": { "@type": "Answer", "text": "Oui. L'application compagnon et la plateforme web sont gratuites pour tous les pilotes MSFS 2024." } }
  ]
}
</script>
