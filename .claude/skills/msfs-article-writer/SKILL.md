---
name: msfs-article-writer
description: >
  Génère automatiquement des articles de blog MSFS (Microsoft Flight Simulator) complets et optimisés SEO,
  en 9 langues simultanément, prêts à être publiés dans un projet Astro (Markdown + frontmatter YAML).
  Utilise cette skill dès que l'utilisateur veut créer un article MSFS, couvrir une actualité du simulateur,
  rédiger du contenu pour Virtual Flight, générer du contenu multilingue pour un blog Astro, ou automatiser
  la création d'articles avec maillage interne vers PilotLeague. Trigger aussi si l'utilisateur mentionne
  une URL source à transformer en article, un sujet MSFS à couvrir, ou une news à publier sur Virtual Flight.
---

# msfs-article-writer

Génère 9 fichiers Markdown prêts-à-publier pour le blog Virtual Flight (Astro + Cloudflare Pages),
avec hero image réelle, images dans le corps, et liens externes vers les sources/développeurs.

---

## Stack technique cible

- **Framework** : Astro (statique)
- **Contenu** : `src/content/blog/{slug}-{lang}.md` (EN = pas de suffix : `{slug}.md`)
- **Images hero** : `src/assets/hero-{slug}.webp` — fichier local téléchargé (JAMAIS de SVG placeholder)
- **Publication** : git push → Cloudflare Pages build auto
- **Validation frontmatter** : Zod

---

## Langues cibles (9)

| Code | Suffix fichier | Exemple slug |
|------|---------------|--------------|
| en   | _(aucun)_     | `msfs-sim-update-5-april-2026.md` |
| fr   | `-fr`         | `msfs-sim-update-5-avril-2026-fr.md` |
| es   | `-es`         | `msfs-sim-update-5-abril-2026-es.md` |
| pt   | `-pt`         | `msfs-sim-update-5-abril-2026-pt.md` |
| br   | `-br`         | `msfs-sim-update-5-abril-2026-br.md` |
| de   | `-de`         | `msfs-sim-update-5-april-2026-de.md` |
| zh   | `-zh`         | `msfs-sim-update-5-april-2026-zh.md` |
| id   | `-id`         | `msfs-sim-update-5-april-2026-id.md` |
| ja   | `-ja`         | `msfs-sim-update-5-april-2026-ja.md` |

---

## Règle de localisation des slugs

Le slug de base est défini en anglais. Chaque langue reçoit un slug partiellement localisé :

**Ce qui se traduit** — mots communs, mois, termes génériques :
| EN | FR | ES | PT/BR | DE | ZH/ID/JA |
|----|----|----|-------|----|----|
| january | janvier | enero | janeiro | januar | january |
| february | février | febrero | fevereiro | februar | february |
| march | mars | marzo | março | märz | march |
| april | avril | abril | abril | april | april |
| may | mai | mayo | maio | mai | may |
| june | juin | junio | junho | juni | june |
| july | juillet | julio | julho | juli | july |
| august | août | agosto | agosto | august | august |
| september | septembre | septiembre | setembro | september | september |
| october | octobre | octubre | outubro | oktober | october |
| november | novembre | noviembre | novembro | november | november |
| december | décembre | diciembre | dezembro | dezember | december |
| guide | guide | guia | guia | leitfaden | guide |
| update | mise-a-jour | actualizacion | atualizacao | update | update |
| review | test | analisis | analise | test | review |
| news | actus | noticias | noticias | news | news |
| best | meilleurs | mejores | melhores | beste | best |
| how-to | comment | como | como | anleitung | how-to |

**Ce qui ne se traduit JAMAIS** — noms propres, marques, termes techniques :
- Noms de simulateurs : `msfs`, `xplane`, `dcs`
- Noms d'avions : `a320`, `b737`, `kodiak-100`, `king-air`
- Noms de développeurs : `carenado`, `simworks`, `flybywire`, `aerosoft`
- Noms d'aéroports : codes OACI (`lfpg`, `egll`) ou noms propres
- Termes techniques : `vatsim`, `ivao`, `psvr2`, `aau4`, `sdk`
- Chiffres et années : `2024`, `2026`, `v1`, `su5`
- Noms de lieux propres : `paris`, `london`, `tokyo`

**Exemple concret :**
```
Sujet : "MSFS 2024 Sim Update 5 April 2026 — PSVR2 and new aircraft"

EN  → msfs-2024-sim-update-5-april-2026
FR  → msfs-2024-sim-update-5-avril-2026-fr
ES  → msfs-2024-sim-update-5-abril-2026-es
PT  → msfs-2024-sim-update-5-abril-2026-pt
BR  → msfs-2024-sim-update-5-abril-2026-br
DE  → msfs-2024-sim-update-5-april-2026-de     ← "april" identique en DE
ZH  → msfs-2024-sim-update-5-april-2026-zh     ← slug latin, pas de caractères CJK
ID  → msfs-2024-sim-update-5-april-2026-id
JA  → msfs-2024-sim-update-5-april-2026-ja
```

> **Règle ZH/JA/ID** : les slugs restent en caractères latins/ASCII même pour ces langues
> (les URLs avec caractères CJK posent des problèmes d'encodage). Seuls les mois et termes
> génériques disponibles en translittération ASCII sont traduits si naturels.

---

## Frontmatter YAML obligatoire (Zod-validé)

```yaml
---
title: "Titre optimisé SEO — max 60 caractères"
description: "Meta description engageante — 140-160 caractères"
lang: "fr"
pubDate: "2024-01-15"
heroImage: "../../assets/hero-{slug}.webp"
---
```

> **Attention** : seuls ces 5 champs sont validés par le schéma Zod.
> Ne PAS ajouter `tags`, `author`, `category`, `pilotleagueLink` ou tout autre champ.

---

## Structure des articles

Chaque article suit ce template (1000–1500 mots) :

> **⚠️ Ne JAMAIS écrire de `# H1` en tête du corps markdown.** Le layout Astro
> (`src/layouts/BlogPost.astro`) rend déjà `<h1>{title}</h1>` depuis le frontmatter.
> Un `# ...` en tête de corps produit un doublon visuel du titre. Le corps commence
> directement par le chapô (paragraphe d'accroche).

```
[Chapô — 2-3 phrases d'accroche, inclut le mot-clé principal]

![Alt text descriptif](../../assets/hero-{slug}.webp)

## H2 — Contexte / Qu'est-ce que c'est ?

[Corps 200-300 mots]

[IMAGE #1 ici — screenshot officiel du produit/sim avec crédit source]

## H2 — Ce que ça change pour les pilotes virtuels

[Corps 200-300 mots]

## H2 — Analyse / Points clés

[Corps 200-300 mots]

[IMAGE #2 ici — optionnelle, uniquement si une 2e image pertinente est disponible]

## H2 — Comment en tirer le meilleur parti

[Corps 150-200 mots — lien externe vers le site officiel du produit/développeur]

## Conclusion

[100-150 mots — récap + lien externe vers la source/développeur si pertinent]
```

---

## Règle hero image — VRAIE PHOTO obligatoire

**Jamais de SVG placeholder.** Le hero image est la vignette qui apparaît dans le sommaire
du blog. Un SVG générique avec du texte ne donne aucune envie de cliquer.

### Workflow hero image

1. **Trouver** la meilleure image du sujet (screenshot MSFS, visuel marketing du développeur,
   image officielle du produit) sur la source de l'article ou le site du développeur
2. **Télécharger** l'image via `curl` ou `wget` dans `src/assets/`
3. **Convertir en WebP** si nécessaire (qualité 85, max 1200px de large)
4. **Nommer** : `hero-{slug-en}.webp` (le slug EN, sans suffix langue)
5. **Référencer** dans le frontmatter : `heroImage: '../../assets/hero-{slug}.webp'`

### Sources d'images hero (par ordre de préférence)

| Priorité | Source | Exemple |
|----------|--------|---------|
| 1 | Page source de l'article (FSElite, MSFS Blog) | Screenshot officiel du produit |
| 2 | Site du développeur / éditeur | Visuel marketing, banner produit |
| 3 | Marketplace MSFS / Steam | Thumbnail officiel |
| 4 | Communiqué de presse / trailer YouTube | Frame haute résolution |

### Format technique

- **Format** : `.webp` ou `.jpg` (pas de `.svg`, pas de `.png` sauf transparence nécessaire)
- **Dimensions** : **minimum 1200 px de large** (exigence Google Discover), cible recommandée **1600×900** (16:9) pour que le layout dispose d'une source haute résolution
- **Poids** : < 200 Ko si possible (Astro optimise via `sharp` au build)
- **Chemin** : `src/assets/hero-{slug}.webp` — partagé par les 9 langues

### Si aucune image trouvable

En dernier recours uniquement, utiliser une image hero existante du même thème
(ex: `hero-payware-aircraft.jpg` pour un article sur un avion payant).
**Ne JAMAIS créer de SVG placeholder.**

---

## Règles images dans le corps (pratique presse en ligne)

Intégrer **1 image obligatoire** (hors hero) + **1 image optionnelle** si pertinente.

### Format d'insertion avec crédit

```markdown
![Description précise du contenu de l'image](URL_DIRECTE_IMAGE)
*Crédit : [Nom du site/développeur](URL_PAGE_SOURCE)*
```

**Exemple concret :**
```markdown
![Cockpit du Kodiak 100 dans MSFS 2024 avec tableau de bord PT-6](https://fseimg.imgix.net/2026/03/kodi-big.webp)
*Crédit : [FSElite](https://fselite.net/content/simworks-kodiak-100-for-msfs-2024-released-now/)*
```

### Sources d'images acceptées (par ordre de préférence)

| Source | Type | Fiabilité |
|--------|------|-----------|
| Page source de l'article (FSElite, MSFS Blog…) | Screenshots officiels | ✅ Priorité 1 |
| Site officiel du développeur addon | Visuels marketing | ✅ Priorité 2 |
| Blog officiel Microsoft Flight Simulator | Screenshots sim | ✅ Priorité 3 |
| Twitter/X du développeur | Teasers, WIP shots | ⚠️ Stable si lien direct |

### Règles images strictes

- **Toujours** inclure la ligne de crédit `*Crédit : [Nom](URL)*` sous chaque image
- **Toujours** utiliser l'URL directe de l'image (`.jpg`, `.webp`, `.png`) — pas de page HTML
- **Jamais** de hotlink vers des CDN privés instables (ex: Discord CDN, Dropbox)
- **Alt text** : descriptif + mot-clé naturel (ex: `Kodiak 100 cockpit MSFS 2024`)
- Si aucune image de qualité disponible → ne pas forcer, rester sur la hero image seule

---

## Règle lien PilotLeague — 1 article sur 4 seulement

**Ne pas systématiquement linker PilotLeague.** Un lien vers PilotLeague n'apparaît
que dans les articles explicitement désignés comme "article pont PilotLeague"
(type `pilotleague_bridge` dans le calendrier JSON — le jeudi dans le workflow hebdomadaire).

**Les 3 autres articles de la semaine ne contiennent aucun lien vers PilotLeague.**

Raison SEO : un ratio de liens trop élevé vers le même domaine sur l'ensemble du site
est un signal de site satellite détectable par Google. 1 article sur 4 est naturel
et indétectable — c'est le comportement d'un vrai magazine qui recommande un outil
uniquement quand c'est éditoralement justifié.

### Comment savoir si l'article doit linker PilotLeague ?

Le brief ou le prompt de génération doit contenir explicitement :
- `type: pilotleague_bridge` (JSON calendrier)
- ou une mention explicite "inclure lien PilotLeague"

**Sans cette indication → 0 lien PilotLeague dans l'article.**

### Format du lien quand il est présent

1 seul lien, en conclusion, ancre naturelle et contextuelle :

```markdown
## Conclusion

[récap de l'article...]

Si vous souhaitez [ancre naturelle contextuelle](https://pilotleague.com/{lang}/features/),
PilotLeague vous permet de tracker vos vols et de progresser.
```

### Pages PilotLeague cibles (URLs localisées)

| Lang | Fonctionnalités | Dashboard |
|------|----------------|-----------|
| en | pilotleague.com/en/features/ | pilots.pilotleague.com |
| fr | pilotleague.com/fr/fonctionnalites/ | pilots.pilotleague.com |
| es | pilotleague.com/es/caracteristicas/ | pilots.pilotleague.com |
| pt | pilotleague.com/pt/recursos/ | pilots.pilotleague.com |
| br | pilotleague.com/pt/recursos/ | pilots.pilotleague.com |
| de | pilotleague.com/de/funktionen/ | pilots.pilotleague.com |
| zh | pilotleague.com/zh/features/ | pilots.pilotleague.com |
| id | pilotleague.com/id/fitur/ | pilots.pilotleague.com |
| ja | pilotleague.com/ja/features/ | pilots.pilotleague.com |

---

## Liens externes — 1 à 2 par article

Intégrer **1 à 2 liens sortants** vers des sites tiers autoritaires mentionnés dans l'article.
C'est une bonne pratique SEO qui signal la qualité éditoriale à Google.

### Règles liens externes

- **Liens éditoriaux** (sources d'info, pages officielles du produit) → sans attribut `nofollow`
- **Liens commerciaux** (pages d'achat, marketplace) → ajouter `rel="nofollow"`
- En Markdown pur, `nofollow` n'est pas supporté nativement → indiquer dans un commentaire HTML

```markdown
<!-- nofollow -->
[Disponible sur le Marketplace MSFS](https://www.flightsimulator.com/marketplace/)
```

### Sources externes prioritaires à linker

| Type | Exemple | Nofollow ? |
|------|---------|-----------|
| Page officielle du développeur | simworksstudios.com | Non |
| Article source (FSElite, MSFS Blog) | fselite.net/... | Non |
| Page produit marketplace officielle | flightsimulator.com/marketplace | Oui |
| Page produit boutique tierce | orbxdirect.com, simmarket.com | Oui |
| Annonce officielle (dev blog, X/Twitter) | x.com/... | Non |

### Exemple d'intégration naturelle

```markdown
SimWorks Studios a publié une [présentation détaillée du Kodiak 100](https://simworksstudios.com/kodiak)
sur son site officiel, incluant les notes de vol et les spécifications techniques complètes.
```

---

## Workflow d'exécution

### Input acceptés

- URL d'un article source (news MSFS, changelog officiel, annonce addon…)
- Sujet libre (ex: "nouvel aéroport LFPG pour MSFS 2024")
- Brief structuré issu de `msfs-news-scout`

### Règle d'enrichissement source courte

Si la source fait **moins de 800 mots**, ne pas se limiter au contenu source. Enrichir l'article avec :
- Contexte historique du sim / du développeur
- Comparaison avec d'autres plateformes ou add-ons similaires
- Perspective pilote virtuel : comment ça change le vol en réseau, les procédures radio, l'immersion
- Conseils pratiques : comment débuter, quelles fonctionnalités explorer en premier
- Liens vers le site du développeur ou des ressources externes pertinentes

L'article doit toujours atteindre 1000–1500 mots quelle que soit la longueur de la source.

### Étapes

1. **Recherche** (si URL fournie) : web_fetch de la source + résumé des points clés + estimation de la longueur source
2. **Définir le slug SEO** : kebab-case, en anglais, max 50 chars (ex: `msfs-2024-world-update-15`)
3. **Hero image** : trouver la meilleure image, la télécharger en `.webp` dans `src/assets/hero-{slug}.webp`
4. **Images corps** : identifier 1-2 screenshots avec URLs directes et crédits
5. **Générer l'article EN** (langue pivot) : structure complète, ~1200 mots
6. **Générer les 8 autres langues** directement (pas de traduction séquentielle) :
   - Chaque langue = rédaction native, pas de traduction littérale
   - Adapter le ton : DE et JA plus formels, BR plus décontracté que PT
   - 1-2 liens externes vers sources/développeurs dans chaque article
7. **Nommer les fichiers** selon convention (`{slug}.md`, `{slug}-fr.md`, etc.)
8. **Vérifier** : frontmatter complet, hero image `.webp` locale, 1-2 images corps avec crédits, 1-2 liens externes, 1000-1500 mots

### Output

9 fichiers `.md` dans `src/content/blog/` prêts pour git push.

---

## Règles SEO à respecter

- **Titre (frontmatter `title:`)** : contient le mot-clé principal + "MSFS" ou "Microsoft Flight Simulator". Ce titre est rendu en `<h1>` par le layout — ne pas le répéter en tête de corps markdown.
- **Meta description** : 140-160 chars, inclut un verbe d'action
- **Densité mots-clés** : 1-2% (naturel, pas de keyword stuffing)
- **Liens externes** : 1-2 liens vers sources/développeurs (nofollow sur liens commerciaux uniquement)
- **Alt images** : descriptif + mot-clé (ex: `Cockpit A320 dans Microsoft Flight Simulator 2024`)
- **Slug** : en anglais, court, descriptif (référence SEO internationale)

---

## Contrôle qualité avant output

Avant de retourner les fichiers, vérifier :

- [ ] Frontmatter YAML complet et valide pour chaque fichier
- [ ] **Aucun `# H1` en tête de corps markdown** (le layout rend déjà `<h1>{title}</h1>` depuis le frontmatter — un H1 en body = doublon visuel). Le corps commence par le chapô.
- [ ] Slugs localisés correctement (mots communs traduits, noms propres intacts)
- [ ] heroImage path identique dans les 9 fichiers (`../../assets/hero-{slug}.webp`)
- [ ] **Lien PilotLeague** : présent UNIQUEMENT si `pilotleague_bridge` ou mention explicite — sinon 0 lien
- [ ] Si lien PilotLeague présent : 1 seul, en conclusion, ancre naturelle
- [ ] **1 image avec crédit** insérée dans le corps (+ 1 optionnelle si pertinente)
- [ ] URL directe de l'image (`.jpg`, `.webp`, `.png`) — pas de page HTML
- [ ] Ligne de crédit `*Crédit : [Nom](URL)*` présente sous chaque image
- [ ] **1-2 liens externes** vers sources/développeurs mentionnés
- [ ] Liens commerciaux marqués `<!-- nofollow -->`
- [ ] Longueur 1000-1500 mots pour chaque langue
- [ ] Aucune traduction littérale (rédaction native par langue)
- [ ] Ton adapté : DE/JA formel, BR décontracté, EN neutre-international

---

## Exemple d'appel

```
Utilisateur : "Écris un article sur le World Update 15 de MSFS 2024 —
source : https://www.flightsimulator.com/world-update-15/"

→ msfs-article-writer fetch la source, génère 9 fichiers .md,
  slug : msfs-world-update-15-2024
  output : src/content/blog/msfs-world-update-15-2024.md (EN)
           src/content/blog/msfs-world-update-15-2024-fr.md
           ... (x9 total)
```
