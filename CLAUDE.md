# CLAUDE.md — Virtual Flight

## Contexte projet

Tu travailles sur virtual-flight.com, un magazine de simulation de vol.
Le site est construit avec Astro, le contenu est en Markdown avec frontmatter Zod-validé.
Le site couvre 9 langues : en, fr, es, pt, br, de, zh, id, ja.

---

# MISSION 1 — PIPELINE BLOG (actualités MSFS)

## Stack technique blog

- **Contenu** : `src/content/blog/` — Markdown + frontmatter YAML
- **Assets** : `src/assets/hero-{slug}.webp` (partagée entre langues)
- **Déploiement** : git push → GitHub → Cloudflare Pages (build auto)
- **Validation frontmatter** : Zod (`src/content/config.ts`)

## Nommage des fichiers articles

```
src/content/blog/{slug-en}.md        ← EN (pas de suffix)
src/content/blog/{slug-fr}-fr.md     ← FR (slug partiellement localisé)
src/content/blog/{slug-es}-es.md     ← ES
src/content/blog/{slug-pt}-pt.md     ← PT
src/content/blog/{slug-br}-br.md     ← BR
src/content/blog/{slug-de}-de.md     ← DE
src/content/blog/{slug-en}-zh.md     ← ZH (slug latin)
src/content/blog/{slug-en}-id.md     ← ID (slug latin)
src/content/blog/{slug-en}-ja.md     ← JA (slug latin)
```

## Règle de localisation des slugs

Le slug de base est en anglais. Les mots communs sont traduits par langue, les noms propres jamais.

**Se traduit** : mois (april→avril/abril), termes génériques (update→mise-a-jour, guide→guia, review→test)

**Ne se traduit JAMAIS** : noms de simulateurs (`msfs`, `xplane`), avions (`a320`, `kodiak-100`),
développeurs (`carenado`, `flybywire`), codes aéroports (`lfpg`), termes techniques (`psvr2`, `vatsim`),
chiffres et années (`2024`, `su5`), noms de lieux propres (`paris`, `tokyo`).

**Exemple :**
```
EN → msfs-2024-sim-update-5-april-2026
FR → msfs-2024-sim-update-5-avril-2026-fr
ES → msfs-2024-sim-update-5-abril-2026-es
DE → msfs-2024-sim-update-5-april-2026-de   ← "april" identique en DE
ZH → msfs-2024-sim-update-5-april-2026-zh   ← slug latin (pas de caractères CJK)
```

**Règle slug** : kebab-case, ASCII uniquement, max 60 caractères.

## Frontmatter blog obligatoire

```yaml
---
title: "Titre SEO — max 60 caractères"
description: "Meta description — 140-160 caractères"
lang: "fr"
pubDate: "2026-03-29"
heroImage: "../../assets/hero-{slug}.webp"
tags: ["MSFS", "tag-spécifique"]
author: "Virtual Flight"
category: "news" | "tutorial" | "addon" | "update"
pilotleagueLink: "https://pilotleague.com/{lang}/"
---
```

## Skills blog disponibles

Consulte la skill appropriée AVANT de commencer chaque tâche blog.

### 🔍 `msfs-news-scout`
Veille automatique des actualités MSFS (FSElite, MSFS Blog, Reddit, Avsim, X/Twitter).
**Utiliser pour** : trouver les news de la semaine, identifier des sujets, scanner les sources.
**Output** : brief structuré avec URL, mots-clés, angle éditorial, prompt prêt.

### ✍️ `msfs-article-writer`
Génère 9 fichiers `.md` multilingues à partir d'un brief ou d'une URL source.
**Utiliser pour** : écrire un article, couvrir une news MSFS, créer du contenu evergreen.
**Output** : 9 fichiers `.md` dans `src/content/blog/`.
> Si la source fait moins de 800 mots : enrichir avec contexte, historique, angle pilote virtuel.

### 🔗 `seo-internal-linker`
Audite et injecte des liens PilotLeague dans les articles existants.
**Utiliser pour** : audit SEO mensuel, optimiser les anciens articles, vérifier le maillage.
**Output** : injection directe dans les `.md` + rapport de modifications.

### 📅 `msfs-content-calendar`
Génère le planning éditorial hebdomadaire (7 articles équilibrés news/evergreen/PilotLeague).
**Utiliser pour** : planifier la semaine, prioriser les sujets par score SEO.
**Output** : `content-calendar-YYYY-WXX.md` + `content-calendar-YYYY-WXX.json`.

## Workflow hebdomadaire blog

```
LUNDI : msfs-content-calendar → planning 7 articles
LUNDI→DIMANCHE : msfs-article-writer × 7 → 63 fichiers .md → git push
DIMANCHE : seo-internal-linker → audit + injection → git push
```

## URLs PilotLeague par langue

| Lang | Accueil | Fonctionnalités | Dashboard |
|------|---------|----------------|-----------|
| en | pilotleague.com/en/ | pilotleague.com/en/features/ | pilots.pilotleague.com |
| fr | pilotleague.com/fr/ | pilotleague.com/fr/fonctionnalites/ | pilots.pilotleague.com |
| es | pilotleague.com/es/ | pilotleague.com/es/caracteristicas/ | pilots.pilotleague.com |
| pt | pilotleague.com/pt/ | pilotleague.com/pt/recursos/ | pilots.pilotleague.com |
| br | pilotleague.com/pt/ | pilotleague.com/pt/recursos/ | pilots.pilotleague.com |
| de | pilotleague.com/de/ | pilotleague.com/de/funktionen/ | pilots.pilotleague.com |
| zh | pilotleague.com/zh/ | pilotleague.com/zh/features/ | pilots.pilotleague.com |
| id | pilotleague.com/id/ | pilotleague.com/id/fitur/ | pilots.pilotleague.com |
| ja | pilotleague.com/ja/ | pilotleague.com/ja/features/ | pilots.pilotleague.com |

## Règles absolues blog

1. **Jamais modifier `src/content/config.ts`** sans validation explicite
2. **Backup obligatoire** avant `seo-internal-linker`
3. **Vérifier syntaxe Markdown** après chaque injection de lien
4. **1 slug = 1 article** — partagé entre toutes les langues
5. **heroImage partagée** entre les 9 langues d'un même article
6. **Commits atomiques** : 1 commit par article (9 fichiers)

---

# MISSION 2 — ANNUAIRE PAYS (directory)

## Mission annuaire

Quand on te demande de travailler sur l'annuaire (directory), ta mission est de :
1. Rechercher des services, communautés et ressources flight sim pour un pays donné
2. Rechercher EN ANGLAIS et DANS LA LANGUE LOCALE du pays
3. Vérifier que les URLs sont valides (en scrapant les pages)
4. Rédiger la fiche pays **dans la langue du pays**
5. Sauvegarder dans `src/content/directory/{lang}/{slug}.md`

## Mapping pays → langue

| Pays | Code | Lang | Slug |
|------|------|------|------|
| United States | US | en | united-states |
| United Kingdom | GB | en | united-kingdom |
| Australia | AU | en | australia |
| Canada | CA | en | canada |
| India | IN | en | india |
| France | FR | fr | france |
| Belgique | BE | fr | belgique |
| Suisse (fr) | CH | fr | suisse |
| España | ES | es | espana |
| México | MX | es | mexico |
| Argentina | AR | es | argentina |
| Brasil | BR | pt | brasil |
| Brasil (pt-BR) | BR | br | brazil |
| Portugal | PT | pt | portugal |
| Deutschland | DE | de | deutschland |
| Österreich | AT | de | osterreich |
| Schweiz (de) | CH | de | schweiz |
| 中国 | CN | zh | china |
| 台灣 | TW | zh | taiwan |
| 香港 | HK | zh | hong-kong |
| Indonesia | ID | id | indonesia |
| 日本 | JP | ja | japan |

## Taxonomie contrôlée

### Simulateurs
- `msfs` — Microsoft Flight Simulator 2024 (et 2020)
- `xplane` — X-Plane 12 (et versions antérieures)
- `dcs` — DCS World
- `general` — Multi-simulateur ou non spécifique

### Catégories annuaire
- `virtual-airline` — Compagnie aérienne virtuelle
- `community` — Forum, Discord, groupe, association
- `training` — École de vol virtuelle, formation
- `addon-developer` — Créateur de scènes, avions, utilitaires
- `event` — Événement, fly-in, compétition, meetup
- `media` — Chaîne YouTube, podcast, streamer, blog
- `network` — Division VATSIM, IVAO, PilotEdge
- `shop` — Boutique de matériel ou add-ons

## Requêtes de recherche annuaire

### Étape 1 : Recherches en anglais (TOUJOURS)

1. `"{country_en}" flight simulation community`
2. `"{country_en}" virtual airline MSFS X-Plane`
3. `"VATSIM" OR "IVAO" "{country_en}" division`
4. `"{country_en}" flight sim addon developer`
5. `"{country_en}" flight simulation YouTube channel`

### Étape 2 : Recherches dans la langue locale

**Français (fr):** `"simulation de vol" communauté {pays}` / `"compagnie virtuelle" {pays}`
**Español (es):** `"simulador de vuelo" comunidad {país}` / `"aerolínea virtual" {país}`
**Português (pt/br):** `"simulador de voo" comunidade {país}` / `"companhia aérea virtual" {país}`
**Deutsch (de):** `Flugsimulator Community {Land}` / `virtuelle Fluggesellschaft {Land}`
**中文 (zh):** `飞行模拟 社区 {国家}` / `虚拟航空公司 {国家}`
**Bahasa Indonesia (id):** `simulasi penerbangan komunitas Indonesia`
**日本語 (ja):** `フライトシミュレーション コミュニティ 日本`

### Étape 3 : Recherches complémentaires (grands pays : US, UK, FR, DE, BR, ES)

- `"{country_en}" flight sim shop hardware`
- `"{country_en}" flight sim scenery developer`
- `site:reddit.com/r/flightsim "{country_en}"`

## Vérification des résultats annuaire

- Scraper la page d'accueil pour vérifier qu'elle est active
- Extraire une description courte DANS LA LANGUE DE LA PAGE
- Si un site ne répond pas ou est abandonné → NE PAS inclure

## Frontmatter annuaire requis

```yaml
---
title: "Flight Simulation in {Country} — Community Directory"  # DANS LA LANGUE LOCALE
description: "Complete directory of {country} flight sim..."   # ≤200 car, langue locale
lang: en
pubDate: 2026-02-16
country: "France"
countryEN: "France"
countryCode: "FR"
continent: europe   # europe|north-america|south-america|asia|oceania|africa
totalServices: 0
draft: false
services:
  - name: "Nom du Service"        # NE JAMAIS TRADUIRE
    url: "https://..."
    category: community
    description: "..."            # DANS LA LANGUE DE LA PAGE, ≤300 car
    simulators: [msfs, xplane]
    language: "fr"
    verified: true
    featured: false
---
```

## Règles de rédaction annuaire

- Les noms de services ne sont JAMAIS traduits
- Termes techniques restent en anglais : VATSIM, add-on, fly-in, METAR
- Style factuel, professionnel, pas de superlatifs
- **fr** : vouvoiement — **es** : usted — **br** : você, ton direct
- **de** : Sie — **ja** : です/ます — **zh** : 简体 CN / 繁體 TW/HK

## Structure du corps markdown annuaire

1. Introduction (3-4 §) — scène flight sim du pays
2. Virtual Airlines
3. Online Networks (VATSIM/IVAO)
4. Communities & Forums
5. Addon Developers
6. Media & Content Creators
7. Events
8. Training

Titres dans la langue de la page. Sections vides omises.

## Pays à faible communauté FS

- Inclure ressources régionales (ex: VATSIM Southeast Asia)
- Mentionner communauté "émergente"
- Si < 3 services trouvés → `draft: true`

## Commande type annuaire

```
claude "Generate the flight simulation directory for Japan (JP, asia, lang: ja).
Search in both English and Japanese.
Save to src/content/directory/ja/japan.md
Follow CLAUDE.md instructions."
```

---

# RÈGLES COMMUNES

## Commits Git

- **Blog article** : `feat: {slug} - {titre court}` (9 fichiers)
- **Annuaire pays** : `feat: directory {lang}/{slug}` (1 fichier)
- **SEO injection** : `chore: seo link injection W{numéro}`
- Jamais de commit mélangeant blog et annuaire

## Build & Déploiement

- Builder en local si doute : `npm run build` (erreurs Zod visibles dans terminal VS Code)
- Cloudflare Pages rebuild automatiquement en ~1 min après chaque push
- Jamais modifier `src/content/config.ts` sans validation explicite
