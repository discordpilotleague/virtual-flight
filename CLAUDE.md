# CLAUDE.md — Virtual Flight Directory Agent

## Contexte projet

Tu travailles sur virtual-flight.com, un magazine de simulation de vol.
Le site est construit avec Astro, le contenu est en Markdown avec frontmatter Zod-validé.
Le site couvre 8 langues : en, fr, es, pt, de, zh, id, ja.

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

## Requêtes de recherche

### Étape 1 : Recherches en anglais (TOUJOURS)

Pour chaque pays, lance ces recherches :
1. `"{country_en}" flight simulation community`
2. `"{country_en}" virtual airline MSFS X-Plane`
3. `"VATSIM" OR "IVAO" "{country_en}" division`
4. `"{country_en}" flight sim addon developer`
5. `"{country_en}" flight simulation YouTube channel`

### Étape 2 : Recherches dans la langue locale

Adapter les termes selon la langue :

**Français (fr):**
- `"simulation de vol" communauté {pays}`
- `"compagnie virtuelle" {pays}`
- `"simulation de vol" forum Discord {pays}`

**Español (es):**
- `"simulador de vuelo" comunidad {país}`
- `"aerolínea virtual" {país}`
- `"simulador de vuelo" foro Discord {país}`

**Português (pt):**
- `"simulador de voo" comunidade {país}`
- `"companhia aérea virtual" {país}`
- `"simulador de voo" fórum Discord {país}`

**Deutsch (de):**
- `Flugsimulator Community {Land}`
- `virtuelle Fluggesellschaft {Land}`
- `Flugsimulator Forum Discord {Land}`

**中文 (zh):**
- `飞行模拟 社区 {国家}`
- `虚拟航空公司 {国家}`
- `飞行模拟 论坛 {国家}`

**Bahasa Indonesia (id):**
- `simulasi penerbangan komunitas Indonesia`
- `maskapai virtual Indonesia`
- `simulasi penerbangan forum Indonesia`

**日本語 (ja):**
- `フライトシミュレーション コミュニティ 日本`
- `バーチャルエアライン 日本 MSFS`
- `フライトシム フォーラム Discord 日本`

### Étape 3 : Recherches complémentaires (grands pays uniquement)

Pour US, UK, France, Allemagne, Brésil, Espagne — ajouter :
- `"{country_en}" flight sim shop hardware`
- `"{country_en}" flight sim scenery developer`
- `site:reddit.com/r/flightsim "{country_en}"`

## Vérification des résultats

Pour chaque service trouvé :
- Scrape la page d'accueil pour vérifier qu'elle est active
- Extrais une description courte (1-2 phrases) DANS LA LANGUE DE LA PAGE
- Identifie les simulateurs supportés
- Note l'URL exacte

Si un site ne répond pas ou est clairement abandonné → NE PAS inclure.

## Frontmatter requis

```yaml
---
title: "Flight Simulation in {Country} — Community Directory"  # DANS LA LANGUE LOCALE
description: "Complete directory of {country} flight sim..."     # DANS LA LANGUE LOCALE, ≤200 car
lang: en                # en|fr|es|pt|de|zh|id|ja
pubDate: 2026-02-16
country: "France"       # Nom local du pays
countryEN: "France"     # Nom en anglais (toujours)
countryCode: "FR"       # ISO 3166-1 alpha-2
continent: europe       # europe|north-america|south-america|asia|oceania|africa
totalServices: 0        # Compter et mettre à jour
draft: false
services:
  - name: "Nom du Service"           # NE JAMAIS TRADUIRE
    url: "https://..."
    category: community               # voir liste ci-dessus
    description: "Description..."     # DANS LA LANGUE DE LA PAGE, ≤300 car
    simulators: [msfs, xplane]        # msfs|xplane|dcs|general
    language: "fr"                    # langue du SITE du service
    verified: true                    # true si scrape OK
    featured: false                   # true pour 2-3 services phares
---
```

## Règles de rédaction par langue

### Règle universelle
- Les NOMS de services, organisations, communautés ne sont JAMAIS traduits
- Les termes techniques flight sim restent en anglais : VATSIM, add-on, fly-in, METAR
- Pas de superlatifs gratuits
- Style factuel, professionnel

### English (en)
- Concise, professional tone
- Use active voice

### Français (fr)
- Vouvoiement
- "Simulation de vol" (pas "simulation aérienne")
- "Add-on" (pas "extension" ou "module complémentaire")

### Español (es)
- Usar "usted"
- "Simulador de vuelo" / "Simulación de vuelo"
- Variante neutre (ni España ni Latam spécifiquement) sauf pour le pays concerné

### Português (pt)
- Português brasileiro pour le Brésil, européen pour le Portugal
- "Simulador de voo" / "Simulação de voo"

### Deutsch (de)
- Formelle Anrede (Sie)
- "Flugsimulator" / "Flugsimulation"
- Composés allemands naturels

### 中文 (zh)
- 简体中文 pour la Chine, 繁體中文 pour Taiwan/Hong Kong
- 飞行模拟 (simplifié) / 飛行模擬 (traditionnel)

### Bahasa Indonesia (id)
- Formal (Anda)
- "Simulasi penerbangan"

### 日本語 (ja)
- です/ます form (poli)
- フライトシミュレーション / フライトシム
- Katakana pour les termes anglais importés

## Structure du corps markdown

Après le frontmatter :

1. **Introduction** (3-4 paragraphes) — Présenter la scène flight sim du pays
2. **Virtual Airlines** — Si applicable
3. **Online Networks** — Divisions VATSIM/IVAO
4. **Communities & Forums** — Discord, forums, groupes
5. **Addon Developers** — Développeurs locaux
6. **Media & Content Creators** — YouTube, Twitch, podcasts
7. **Events** — Fly-in, salons, compétitions
8. **Training** — Écoles, programmes

Les titres de section doivent être dans la langue de la page.
Ne pas inclure les sections vides.

## Gestion des URLs
- Toujours vérifier avec `scrape` avant d'inclure
- HTTPS uniquement
- Pas de liens vers des profils personnels
- YouTube : URL du canal
- Discord : liens d'invitation permanents uniquement

## Pays à faible communauté FS

Pour les pays avec peu de résultats (< 5 services) :
- Inclure les ressources régionales (ex: VATSIM Southeast Asia)
- Inclure les communautés internationales populaires localement
- Mentionner que la communauté est "émergente"
- Si < 3 services trouvés → mettre `draft: true`

## Commande type

```
claude "Generate the flight simulation directory for Japan (JP, asia, lang: ja).
Search in both English and Japanese.
Save to src/content/directory/ja/japan.md
Follow CLAUDE.md instructions."
```
