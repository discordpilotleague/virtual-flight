# Virtual Flight — Architecture du projet

> Site Astro 5.x statique, 201 pages, 8 langues (EN, FR, ES, PT, DE, ZH, ID, JA)
> Hebergement : Cloudflare Pages | Domaine : virtual-flight.com

---

## Arborescence

```
virtual-flight/
├── public/                          # Fichiers statiques (servis tels quels)
│   ├── fonts/
│   │   ├── atkinson-bold.woff
│   │   └── atkinson-regular.woff
│   ├── images/
│   │   ├── pmdg737/                 # Images article PMDG 737-600 (7 WebP)
│   │   │   ├── cabin.webp
│   │   │   ├── cockpit.webp
│   │   │   ├── cockpit2.webp
│   │   │   ├── exterior.webp
│   │   │   ├── ground.webp
│   │   │   ├── night.webp
│   │   │   └── tablet.webp
│   │   └── tristar/                 # Images article iniBuilds TriStar (7 WebP)
│   │       ├── afcs.webp
│   │       ├── banner.webp
│   │       ├── cockpit.webp
│   │       ├── exterior.webp
│   │       ├── flight-engineer.webp
│   │       ├── lighting.webp
│   │       └── paper-flight-bag.webp
│   ├── favicon.ico
│   ├── favicon.svg
│   └── robots.txt                   # Regles crawlers + blocage IA
│
├── src/
│   ├── assets/                      # Images hero (optimisees par Astro)
│   │   ├── hero-pmdg-737-600.jpg    # Photo reelle (PMDG)
│   │   ├── hero-inibuilds-tristar.svg
│   │   ├── hero-beginner-guide.svg
│   │   ├── hero-cockpit-dashboard.svg
│   │   ├── hero-dcs-world.svg
│   │   ├── hero-free-addons.svg
│   │   ├── hero-hardware-review.svg
│   │   ├── hero-hotas-controllers.svg
│   │   ├── hero-home-cockpit.svg
│   │   ├── hero-msfs-vs-xplane.svg
│   │   ├── hero-online-networks.svg
│   │   ├── hero-payware-aircraft.svg
│   │   ├── hero-pilot-career.svg
│   │   ├── hero-scenery-addons.svg
│   │   ├── hero-vatsim-network.svg
│   │   ├── hero-vr-flight.svg
│   │   ├── hero-weather-simulation.svg
│   │   ├── hero-learn-aviation.svg
│   │   └── ...                      # 25 images hero au total
│   │
│   ├── components/                  # Composants Astro reutilisables
│   │   ├── BaseHead.astro           # <head> : meta, OG, fonts, CSS
│   │   ├── Header.astro             # Navigation + menu hamburger mobile
│   │   ├── HeaderLink.astro         # Lien de navigation avec etat actif
│   │   ├── Footer.astro             # Pied de page + liens legaux + Discord
│   │   ├── FormattedDate.astro      # Formatage date localise
│   │   └── LanguageSelector.astro   # Selecteur de langue (8 langues)
│   │
│   ├── content/
│   │   └── blog/                    # 152 articles Markdown (19 sujets x 8 langues)
│   │       ├── pmdg-737-600-msfs-2024.md        # EN
│   │       ├── pmdg-737-600-msfs-2024-fr.md     # FR
│   │       ├── pmdg-737-600-msfs-2024-es.md     # ES
│   │       ├── pmdg-737-600-msfs-2024-pt.md     # PT
│   │       ├── pmdg-737-600-msfs-2024-de.md     # DE
│   │       ├── pmdg-737-600-msfs-2024-zh.md     # ZH
│   │       ├── pmdg-737-600-msfs-2024-id.md     # ID
│   │       ├── pmdg-737-600-msfs-2024-ja.md     # JA
│   │       ├── inibuilds-tristar-l1011-msfs-2024.md
│   │       ├── inibuilds-tristar-l1011-msfs-2024-fr.md
│   │       ├── ...                  # (et 142 autres articles)
│   │       └── zuijia-hotas-feixing-kongzhiqi-2026.md
│   │
│   ├── i18n/                        # Systeme d'internationalisation
│   │   ├── translations.ts          # Traductions (8 langues, toutes les cles)
│   │   ├── utils.ts                 # localePath(), switchLocalePath(), t()
│   │   ├── locales.ts               # Liste des locales supportees
│   │   └── directory-i18n.ts        # Traductions annuaire (si active)
│   │
│   ├── layouts/                     # Layouts Astro
│   │   ├── BlogPost.astro           # Layout article de blog (hero + contenu)
│   │   └── StaticPage.astro         # Layout pages statiques (About, etc.)
│   │
│   ├── pages/                       # Routes / Pages
│   │   ├── index.astro              # Homepage EN (defaut, sans prefixe)
│   │   ├── about.astro              # Page About EN
│   │   ├── 404.astro                # Page 404 personnalisee
│   │   ├── methodology.astro        # Page Methodologie EN
│   │   ├── privacy.astro            # Page Confidentialite EN
│   │   ├── terms.astro              # Page CGU EN
│   │   ├── rss.xml.js               # Flux RSS
│   │   │
│   │   ├── blog/
│   │   │   ├── index.astro          # Liste des articles EN
│   │   │   └── [...slug].astro      # Page article dynamique EN
│   │   │
│   │   ├── [lang]/                  # Routes localisees (fr, es, pt, de, zh, id, ja)
│   │   │   ├── index.astro          # Homepage localisee
│   │   │   ├── methodology.astro    # Methodologie localisee
│   │   │   ├── privacy.astro        # Confidentialite localisee
│   │   │   ├── terms.astro          # CGU localisee
│   │   │   ├── directory-index.astro
│   │   │   ├── directory-slug.astro
│   │   │   └── blog/
│   │   │       ├── index.astro      # Liste articles localisee
│   │   │       └── [...slug].astro  # Page article dynamique localisee
│   │   │
│   │   ├── fr/
│   │   │   └── a-propos.astro       # About FR (slug localise)
│   │   ├── es/
│   │   │   └── acerca-de.astro      # About ES
│   │   ├── pt/
│   │   │   └── sobre.astro          # About PT
│   │   ├── de/
│   │   │   └── ueber-uns.astro      # About DE
│   │   ├── zh/
│   │   │   └── guanyu.astro         # About ZH
│   │   ├── id/
│   │   │   └── tentang.astro        # About ID
│   │   └── ja/
│   │       └── gaiyou.astro         # About JA
│   │
│   └── styles/
│       └── global.css               # Styles globaux
│
├── astro.config.mjs                 # Configuration Astro (i18n, sitemap, trailing slash)
├── content.config.ts                # Schema Zod pour les collections de contenu
├── tsconfig.json                    # Configuration TypeScript
├── package.json                     # Dependances et scripts
├── CLAUDE.md                        # Instructions pour Claude Code
└── ARCHITECTURE.md                  # Ce fichier
```

---

## Langues supportees

| Code | Langue      | Prefixe URL | Slug About     |
|------|-------------|-------------|----------------|
| `en` | English     | *(aucun)*   | `/about/`      |
| `fr` | Francais    | `/fr/`      | `/fr/a-propos/` |
| `es` | Espanol     | `/es/`      | `/es/acerca-de/` |
| `pt` | Portugues   | `/pt/`      | `/pt/sobre/`   |
| `de` | Deutsch     | `/de/`      | `/de/ueber-uns/` |
| `zh` | Zhongwen    | `/zh/`      | `/zh/guanyu/`  |
| `id` | Bahasa Indonesia | `/id/` | `/id/tentang/` |
| `ja` | Nihongo     | `/ja/`      | `/ja/gaiyou/`  |

---

## Articles de blog (19 sujets x 8 langues = 152 articles)

| # | Sujet                                      | Date       |
|---|---------------------------------------------|------------|
| 1 | Guide debutant simulation de vol            | 12 Fev 2026 |
| 2 | Meilleurs reseaux de vol en ligne           | 12 Fev 2026 |
| 3 | Carriere pilote virtuel / Logbook           | 12 Fev 2026 |
| 4 | Top 10 addons gratuits                      | 12 Fev 2026 |
| 5 | Test materiel joystick / yoke               | 12 Fev 2026 |
| 6 | Guide configuration simulateur              | 12 Fev 2026 |
| 7 | Debuter sur VATSIM                          | 12 Fev 2026 |
| 8 | Meilleurs HOTAS / controleurs               | 12 Fev 2026 |
| 9 | MSFS 2024 vs X-Plane 12                     | 12 Fev 2026 |
| 10 | Construire un cockpit maison               | 12 Fev 2026 |
| 11 | Simulation de vol en VR                    | 12 Fev 2026 |
| 12 | Meilleurs avions payants 2026              | 12 Fev 2026 |
| 13 | Simulation meteo temps reel                | 12 Fev 2026 |
| 14 | Guide debutant DCS World                   | 12 Fev 2026 |
| 15 | Meilleurs scenery add-ons 2026             | 12 Fev 2026 |
| 16 | Apprendre l'aviation reelle                | 12 Fev 2026 |
| 17 | Meilleurs addons gratuits 2026             | 12 Fev 2026 |
| 18 | iniBuilds L-1011 TriStar MSFS 2024         | 14 Fev 2026 |
| 19 | PMDG 737-600 MSFS 2024                     | 16 Fev 2026 |

---

## Pages statiques (x8 langues = 32 pages + 404 + RSS)

- **Homepage** — Presentation du magazine + cartes thematiques
- **Blog** — Liste de tous les articles avec images hero
- **About** — A propos de l'equipe (slugs localises)
- **Methodology** — Methodologie editoriale
- **Privacy** — Politique de confidentialite
- **Terms** — Conditions d'utilisation
- **404** — Page d'erreur personnalisee
- **RSS** — Flux RSS (EN uniquement)

---

## Stack technique

| Element          | Technologie                     |
|------------------|---------------------------------|
| Framework        | Astro 5.17.1                    |
| Langage          | TypeScript                      |
| Styles           | CSS natif (global.css)          |
| Fonts            | Atkinson Hyperlegible (WOFF)    |
| Images           | SVG (hero) + WebP (photos)      |
| Hebergement      | Cloudflare Pages                |
| Versioning       | Git / GitHub                    |
| Build            | `npm run build` (201 pages)     |
| Sitemap          | @astrojs/sitemap (auto)         |
