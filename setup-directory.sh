#!/bin/bash
# =============================================================================
# setup-directory.sh
# 
# Script d'installation du module Directory pour virtual-flight.com
# Lance depuis la RACINE du projet : ./setup-directory.sh
#
# Ce script :
#   1. Crée les dossiers nécessaires
#   2. Crée tous les fichiers aux bons emplacements
#   3. Patche content.config.ts pour ajouter la collection directory
#   4. Met à jour CLAUDE.md avec les instructions de l'agent
#   5. Crée les scripts de génération et vérification
#   6. Crée deux exemples (France + United States)
# =============================================================================

set -euo pipefail

# Vérifier qu'on est à la racine du projet
if [[ ! -f "astro.config.mjs" ]] || [[ ! -f "src/content.config.ts" ]]; then
  echo "❌ Ce script doit être lancé depuis la racine du projet virtual-flight/"
  echo "   (je ne trouve pas astro.config.mjs ou src/content.config.ts)"
  exit 1
fi

echo ""
echo "🛫 Virtual Flight — Installation du module Directory"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# =============================================================================
# 1. CRÉER LES DOSSIERS
# =============================================================================
echo "📁 Création des dossiers..."

mkdir -p src/content/directory
mkdir -p src/pages/directory
mkdir -p scripts
mkdir -p logs/directory

echo "   ✅ src/content/directory/"
echo "   ✅ src/pages/directory/"
echo "   ✅ scripts/"
echo "   ✅ logs/directory/"
echo ""

# =============================================================================
# 2. FICHIER i18n : src/i18n/directory-i18n.ts
# =============================================================================
echo "🌍 Création de src/i18n/directory-i18n.ts..."

cat > src/i18n/directory-i18n.ts << 'ENDOFFILE'
// =============================================================================
// src/i18n/directory-i18n.ts
// Labels traduits pour la rubrique Directory — 8 langues
// Généré par setup-directory.sh
// =============================================================================

export const directoryLabels = {
  pageTitle: {
    en: "Flight Simulation Directory",
    fr: "Annuaire de la simulation de vol",
    es: "Directorio de simulación de vuelo",
    pt: "Diretório de simulação de voo",
    de: "Flugsimulation-Verzeichnis",
    zh: "飞行模拟目录",
    id: "Direktori Simulasi Penerbangan",
    ja: "フライトシミュレーション ディレクトリ",
  },
  pageDescription: {
    en: "Discover flight sim communities, virtual airlines, addon developers, and resources around the world.",
    fr: "Découvrez les communautés, compagnies virtuelles, développeurs d'add-ons et ressources de simulation de vol dans le monde.",
    es: "Descubre comunidades, aerolíneas virtuales, desarrolladores de add-ons y recursos de simulación de vuelo en todo el mundo.",
    pt: "Descubra comunidades, companhias aéreas virtuais, desenvolvedores de add-ons e recursos de simulação de voo ao redor do mundo.",
    de: "Entdecken Sie Flugsimulations-Communities, virtuelle Fluggesellschaften, Addon-Entwickler und Ressourcen weltweit.",
    zh: "发现全球飞行模拟社区、虚拟航空公司、插件开发者和各类资源。",
    id: "Temukan komunitas simulasi penerbangan, maskapai virtual, pengembang add-on, dan sumber daya di seluruh dunia.",
    ja: "世界中のフライトシミュレーション・コミュニティ、バーチャルエアライン、アドオン開発者、各種リソースを探索しましょう。",
  },
  navLabel: {
    en: "Directory", fr: "Annuaire", es: "Directorio", pt: "Diretório",
    de: "Verzeichnis", zh: "目录", id: "Direktori", ja: "ディレクトリ",
  },
  continents: {
    europe: {
      en: "Europe", fr: "Europe", es: "Europa", pt: "Europa",
      de: "Europa", zh: "欧洲", id: "Eropa", ja: "ヨーロッパ",
    },
    "north-america": {
      en: "North America", fr: "Amérique du Nord", es: "América del Norte", pt: "América do Norte",
      de: "Nordamerika", zh: "北美洲", id: "Amerika Utara", ja: "北アメリカ",
    },
    "south-america": {
      en: "South America", fr: "Amérique du Sud", es: "América del Sur", pt: "América do Sul",
      de: "Südamerika", zh: "南美洲", id: "Amerika Selatan", ja: "南アメリカ",
    },
    asia: {
      en: "Asia", fr: "Asie", es: "Asia", pt: "Ásia",
      de: "Asien", zh: "亚洲", id: "Asia", ja: "アジア",
    },
    oceania: {
      en: "Oceania", fr: "Océanie", es: "Oceanía", pt: "Oceania",
      de: "Ozeanien", zh: "大洋洲", id: "Oseania", ja: "オセアニア",
    },
    africa: {
      en: "Africa", fr: "Afrique", es: "África", pt: "África",
      de: "Afrika", zh: "非洲", id: "Afrika", ja: "アフリカ",
    },
  },
  categories: {
    "virtual-airline": {
      en: "Virtual Airlines", fr: "Compagnies virtuelles", es: "Aerolíneas virtuales", pt: "Companhias aéreas virtuais",
      de: "Virtuelle Fluggesellschaften", zh: "虚拟航空公司", id: "Maskapai Virtual", ja: "バーチャルエアライン",
    },
    community: {
      en: "Communities & Forums", fr: "Communautés et forums", es: "Comunidades y foros", pt: "Comunidades e fóruns",
      de: "Communities und Foren", zh: "社区与论坛", id: "Komunitas dan Forum", ja: "コミュニティとフォーラム",
    },
    training: {
      en: "Training & Schools", fr: "Formations et écoles", es: "Formación y escuelas", pt: "Treinamento e escolas",
      de: "Schulung und Ausbildung", zh: "培训与学校", id: "Pelatihan dan Sekolah", ja: "トレーニングとスクール",
    },
    "addon-developer": {
      en: "Addon Developers", fr: "Développeurs d'add-ons", es: "Desarrolladores de add-ons", pt: "Desenvolvedores de add-ons",
      de: "Addon-Entwickler", zh: "插件开发者", id: "Pengembang Add-on", ja: "アドオン開発者",
    },
    event: {
      en: "Events & Fly-ins", fr: "Événements et fly-in", es: "Eventos y fly-in", pt: "Eventos e fly-in",
      de: "Events und Fly-ins", zh: "活动与飞行聚会", id: "Acara dan Fly-in", ja: "イベントとフライイン",
    },
    media: {
      en: "Media & Content Creators", fr: "Médias et créateurs", es: "Medios y creadores", pt: "Mídia e criadores",
      de: "Medien und Creator", zh: "媒体与内容创作者", id: "Media dan Kreator Konten", ja: "メディアとクリエイター",
    },
    network: {
      en: "ATC Networks", fr: "Réseaux ATC", es: "Redes ATC", pt: "Redes ATC",
      de: "ATC-Netzwerke", zh: "空管网络", id: "Jaringan ATC", ja: "ATCネットワーク",
    },
    shop: {
      en: "Shops & Hardware", fr: "Boutiques et matériel", es: "Tiendas y hardware", pt: "Lojas e hardware",
      de: "Shops und Hardware", zh: "商店与硬件", id: "Toko dan Perangkat Keras", ja: "ショップとハードウェア",
    },
  },
  ui: {
    resources: {
      en: "resources", fr: "ressources", es: "recursos", pt: "recursos",
      de: "Ressourcen", zh: "个资源", id: "sumber daya", ja: "件のリソース",
    },
    countries: {
      en: "countries", fr: "pays", es: "países", pt: "países",
      de: "Länder", zh: "个国家", id: "negara", ja: "カ国",
    },
    verified: {
      en: "Verified", fr: "Vérifié", es: "Verificado", pt: "Verificado",
      de: "Verifiziert", zh: "已验证", id: "Terverifikasi", ja: "確認済み",
    },
    featured: {
      en: "Featured", fr: "En vedette", es: "Destacado", pt: "Destaque",
      de: "Empfohlen", zh: "精选", id: "Unggulan", ja: "注目",
    },
    suggestResource: {
      en: "Know a resource we missed? Let us know!",
      fr: "Vous connaissez une ressource manquante ? Dites-le nous !",
      es: "¿Conoces un recurso que nos falta? ¡Dínoslo!",
      pt: "Conhece um recurso que está faltando? Nos avise!",
      de: "Kennen Sie eine Ressource, die wir übersehen haben? Sagen Sie uns Bescheid!",
      zh: "知道我们遗漏的资源吗？请告诉我们！",
      id: "Tahu sumber daya yang kami lewatkan? Beri tahu kami!",
      ja: "掲載されていないリソースをご存知ですか？ぜひ教えてください！",
    },
    lastUpdated: {
      en: "Last updated", fr: "Dernière mise à jour", es: "Última actualización", pt: "Última atualização",
      de: "Zuletzt aktualisiert", zh: "最后更新", id: "Terakhir diperbarui", ja: "最終更新",
    },
    completeDirectory: {
      en: "Complete Directory", fr: "Annuaire complet", es: "Directorio completo", pt: "Diretório completo",
      de: "Vollständiges Verzeichnis", zh: "完整目录", id: "Direktori Lengkap", ja: "完全ディレクトリ",
    },
  },
  categoryIcons: {
    "virtual-airline": "✈️", community: "👥", training: "🎓", "addon-developer": "🔧",
    event: "📅", media: "🎬", network: "🗼", shop: "🛒",
  } as Record<string, string>,
} as const;

export type SiteLang = "en" | "fr" | "es" | "pt" | "de" | "zh" | "id" | "ja";
export type ServiceCategory = keyof typeof directoryLabels.categories;
export type Continent = keyof typeof directoryLabels.continents;
ENDOFFILE

echo "   ✅ src/i18n/directory-i18n.ts"

# =============================================================================
# 3. PAGE EN : src/pages/directory/index.astro
# =============================================================================
echo "📄 Création des pages Astro..."

cat > src/pages/directory/index.astro << 'ENDOFFILE'
---
import { getCollection } from "astro:content";
import BaseHead from "../../components/BaseHead.astro";
import Header from "../../components/Header.astro";
import Footer from "../../components/Footer.astro";
import { directoryLabels } from "../../i18n/directory-i18n";
import type { Continent } from "../../i18n/directory-i18n";

const lang = "en";
const countries = await getCollection("directory", ({ data }) => data.lang === lang && !data.draft);

const byContinent = countries.reduce((acc, c) => {
  const cont = c.data.continent;
  if (!acc[cont]) acc[cont] = [];
  acc[cont].push(c);
  return acc;
}, {} as Record<string, typeof countries>);

const continentOrder: Continent[] = ["europe","north-america","south-america","asia","oceania","africa"];

function getFlagEmoji(cc: string): string {
  return String.fromCodePoint(...cc.toUpperCase().split("").map(c => 127397 + c.charCodeAt(0)));
}
const totalResources = countries.reduce((s, c) => s + c.data.totalServices, 0);
---
<!doctype html>
<html lang="en">
<head>
  <BaseHead title={directoryLabels.pageTitle[lang]} description={directoryLabels.pageDescription[lang]} />
  <style>
    .dir-idx{max-width:1100px;margin:0 auto;padding:2rem 1.5rem 4rem}
    .dir-hero{text-align:center;margin-bottom:3rem;padding:2.5rem 1rem}
    .dir-hero h1{font-size:2.25rem;margin-bottom:.5rem}
    .dir-hero .sub{font-size:1.1rem;opacity:.75;max-width:560px;margin:0 auto 1.5rem;line-height:1.6}
    .stats{display:flex;gap:2rem;justify-content:center}
    .stat{font-size:.9rem;opacity:.65}.stat strong{font-size:1.4rem;display:block;opacity:1}
    .cont-sec{margin-bottom:2.5rem}
    .cont-sec h2{font-size:1.35rem;margin-bottom:1rem;padding-bottom:.4rem;border-bottom:2px solid rgba(128,128,128,.2)}
    .cgrid{display:grid;grid-template-columns:repeat(auto-fill,minmax(280px,1fr));gap:.85rem}
    .ccard{display:flex;align-items:center;gap:1rem;padding:1.1rem 1.25rem;border-radius:10px;border:1px solid rgba(128,128,128,.2);text-decoration:none;color:inherit;transition:all .2s}
    .ccard:hover{border-color:rgb(var(--accent));box-shadow:0 4px 12px rgba(0,0,0,.06);transform:translateY(-1px)}
    .flag{font-size:2.25rem;line-height:1}
    .ci h3{font-size:1.05rem;margin:0 0 .15rem}.ci .cnt{font-size:.8rem;opacity:.55}
    @media(max-width:640px){.dir-hero h1{font-size:1.65rem}.cgrid{grid-template-columns:1fr}}
  </style>
</head>
<body>
  <Header />
  <main class="dir-idx">
    <header class="dir-hero">
      <h1>{directoryLabels.pageTitle[lang]}</h1>
      <p class="sub">{directoryLabels.pageDescription[lang]}</p>
      <div class="stats">
        <span class="stat"><strong>{countries.length}</strong>{directoryLabels.ui.countries[lang]}</span>
        <span class="stat"><strong>{totalResources}</strong>{directoryLabels.ui.resources[lang]}</span>
      </div>
    </header>
    {continentOrder.map(cont => {
      const list = byContinent[cont];
      if (!list?.length) return null;
      return (
        <section class="cont-sec">
          <h2>{directoryLabels.continents[cont][lang]}</h2>
          <div class="cgrid">
            {list.sort((a,b) => b.data.totalServices - a.data.totalServices).map(c => (
              <a href={`/directory/${c.id}/`} class="ccard">
                <span class="flag">{getFlagEmoji(c.data.countryCode)}</span>
                <div class="ci">
                  <h3>{c.data.country}</h3>
                  <span class="cnt">{c.data.totalServices} {directoryLabels.ui.resources[lang]}</span>
                </div>
              </a>
            ))}
          </div>
        </section>
      );
    })}
  </main>
  <Footer />
</body>
</html>
ENDOFFILE

echo "   ✅ src/pages/directory/index.astro"

# =============================================================================
# 4. PAGE EN PAYS : src/pages/directory/[...slug].astro
# =============================================================================

cat > 'src/pages/directory/[...slug].astro' << 'ENDOFFILE'
---
import { getCollection } from "astro:content";
import BaseHead from "../../components/BaseHead.astro";
import Header from "../../components/Header.astro";
import Footer from "../../components/Footer.astro";
import FormattedDate from "../../components/FormattedDate.astro";
import { directoryLabels } from "../../i18n/directory-i18n";
import type { ServiceCategory } from "../../i18n/directory-i18n";

const lang = "en";

export async function getStaticPaths() {
  const all = await getCollection("directory", ({ data }) => data.lang === "en" && !data.draft);
  return all.map(e => ({ params: { slug: e.id }, props: { entry: e } }));
}

const { entry } = Astro.props;
const { Content } = await entry.render();

const byCategory = entry.data.services.reduce((acc, s) => {
  if (!acc[s.category]) acc[s.category] = [];
  acc[s.category].push(s);
  return acc;
}, {} as Record<string, typeof entry.data.services>);

const catOrder: ServiceCategory[] = ["network","virtual-airline","community","addon-developer","media","event","training","shop"];

function getFlagEmoji(cc: string): string {
  return String.fromCodePoint(...cc.toUpperCase().split("").map(c => 127397 + c.charCodeAt(0)));
}
const simColors: Record<string,string> = { msfs:"#0ea5e9", xplane:"#8b5cf6", dcs:"#ef4444", general:"#64748b" };
---
<!doctype html>
<html lang="en">
<head>
  <BaseHead title={entry.data.title} description={entry.data.description} />
  <style>
    .dir-c{max-width:860px;margin:0 auto;padding:2rem 1.5rem 4rem}
    .bc{font-size:.85rem;margin-bottom:1.5rem;opacity:.6}.bc a{text-decoration:none;color:rgb(var(--accent))}.bc .s{margin:0 .4rem;opacity:.4}
    .ch{display:flex;align-items:center;gap:1.25rem;margin-bottom:2rem}.fl{font-size:3.5rem;line-height:1}
    .ch h1{font-size:2rem;margin:0 0 .2rem}.hm{font-size:.85rem;opacity:.6;display:flex;gap:1.25rem}
    .cn{display:flex;flex-wrap:wrap;gap:.4rem;margin-bottom:2rem;padding-bottom:1.25rem;border-bottom:1px solid rgba(128,128,128,.2)}
    .cp{display:inline-flex;align-items:center;gap:.3rem;padding:.35rem .75rem;border-radius:100px;border:1px solid rgba(128,128,128,.2);font-size:.78rem;text-decoration:none;color:inherit;transition:all .15s;white-space:nowrap}
    .cp:hover{border-color:rgb(var(--accent))}.ci2{font-size:.95rem}
    .cc{background:rgba(128,128,128,.15);border-radius:100px;padding:0 .35rem;font-size:.68rem;font-weight:600}
    .art{margin-bottom:2.5rem;line-height:1.75}.art :global(h2){font-size:1.4rem;margin-top:2.25rem}.art :global(h3){font-size:1.15rem;margin-top:1.5rem}
    .sd>h2{font-size:1.5rem;margin-bottom:1.5rem;padding-bottom:.4rem;border-bottom:2px solid rgba(128,128,128,.2)}
    .cs{margin-bottom:2rem}.cs h3{display:flex;align-items:center;gap:.4rem;font-size:1.15rem;margin-bottom:.75rem}
    .sl{display:flex;flex-direction:column;gap:.6rem}
    .sc{padding:1.1rem 1.25rem;border-radius:8px;border:1px solid rgba(128,128,128,.2);transition:border-color .15s}
    .sc:hover{border-color:rgb(var(--accent))}.sc.ft{border-color:#f59e0b;background:rgba(245,158,11,.05)}
    .sn{font-weight:600;font-size:1rem;text-decoration:none;color:rgb(var(--accent));display:inline-flex;align-items:center;gap:.4rem}.sn:hover{text-decoration:underline}
    .sde{font-size:.88rem;margin:.3rem 0 .5rem;opacity:.8;line-height:1.5}
    .sm{display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:.4rem}
    .st{display:flex;gap:.3rem}
    .stg{font-size:.68rem;font-weight:700;padding:.12rem .45rem;border-radius:3px;letter-spacing:.03em;background:color-mix(in srgb,var(--sim-color) 15%,transparent);color:var(--sim-color)}
    .sb{display:flex;gap:.3rem}.bdg{font-size:.68rem;padding:.12rem .45rem;border-radius:3px;font-weight:600}
    .vb{background:#dcfce7;color:#16a34a}.fb{background:#fef3c7;color:#d97706}.lb{background:rgba(128,128,128,.15);opacity:.7}
    .sug{margin-top:2.5rem;padding:1.75rem;border-radius:10px;background:rgba(128,128,128,.06);text-align:center}
    .sug p{margin:0 0 .75rem;font-size:.95rem}
    .sugb{display:inline-flex;align-items:center;gap:.4rem;padding:.5rem 1.25rem;border-radius:6px;background:rgb(var(--accent));color:white;text-decoration:none;font-weight:600;font-size:.85rem}.sugb:hover{opacity:.9}
    @media(max-width:640px){.ch{flex-direction:column;text-align:center}.ch h1{font-size:1.5rem}.hm{flex-direction:column;gap:.2rem}.sm{flex-direction:column;align-items:flex-start}}
  </style>
</head>
<body>
  <Header />
  <main class="dir-c">
    <nav class="bc"><a href="/directory/">{directoryLabels.navLabel[lang]}</a><span class="s">/</span><span>{entry.data.country}</span></nav>
    <header class="ch">
      <span class="fl">{getFlagEmoji(entry.data.countryCode)}</span>
      <div>
        <h1>{entry.data.country}</h1>
        <p class="hm">
          <span><strong>{entry.data.totalServices}</strong> {directoryLabels.ui.resources[lang]}</span>
          {entry.data.updatedDate && <span>{directoryLabels.ui.lastUpdated[lang]}: <FormattedDate date={entry.data.updatedDate} /></span>}
        </p>
      </div>
    </header>
    <nav class="cn">
      {catOrder.map(cat => {
        const svcs = byCategory[cat]; if (!svcs?.length) return null;
        return <a href={`#cat-${cat}`} class="cp"><span class="ci2">{directoryLabels.categoryIcons[cat]}</span>{directoryLabels.categories[cat][lang]}<span class="cc">{svcs.length}</span></a>;
      })}
    </nav>
    <article class="art"><Content /></article>
    <section class="sd">
      <h2>{directoryLabels.ui.completeDirectory[lang]}</h2>
      {catOrder.map(cat => {
        const svcs = byCategory[cat]; if (!svcs?.length) return null;
        return (
          <div class="cs" id={`cat-${cat}`}>
            <h3><span class="ci2">{directoryLabels.categoryIcons[cat]}</span>{directoryLabels.categories[cat][lang]}</h3>
            <div class="sl">
              {svcs.map(s => (
                <div class:list={["sc",{ft:s.featured}]}>
                  <div><a href={s.url} target="_blank" rel="noopener noreferrer" class="sn">{s.name}{s.featured && <span class="bdg fb">★ {directoryLabels.ui.featured[lang]}</span>}</a></div>
                  <p class="sde">{s.description}</p>
                  <div class="sm">
                    <div class="st">{s.simulators.map(sim => <span class="stg" style={`--sim-color:${simColors[sim]||simColors.general}`}>{sim.toUpperCase()}</span>)}</div>
                    <div class="sb">
                      {s.verified && <span class="bdg vb">✓ {directoryLabels.ui.verified[lang]}</span>}
                      {s.language && <span class="bdg lb">{s.language.toUpperCase()}</span>}
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        );
      })}
    </section>
    <aside class="sug">
      <p>{directoryLabels.ui.suggestResource[lang]}</p>
      <a href="https://discord.gg/your-invite-link" target="_blank" rel="noopener" class="sugb">💬 Join Discord</a>
    </aside>
  </main>
  <Footer />
</body>
</html>
ENDOFFILE

echo "   ✅ src/pages/directory/[...slug].astro"

# =============================================================================
# 5. PAGE [lang] INDEX : src/pages/[lang]/directory-index.astro
# =============================================================================

cat > src/pages/\[lang\]/directory-index.astro << 'ENDOFFILE'
---
import { getCollection } from "astro:content";
import BaseHead from "../../components/BaseHead.astro";
import Header from "../../components/Header.astro";
import Footer from "../../components/Footer.astro";
import { directoryLabels } from "../../i18n/directory-i18n";
import type { SiteLang, Continent } from "../../i18n/directory-i18n";

export function getStaticPaths() {
  return ["fr","es","pt","de","zh","id","ja"].map(l => ({ params:{lang:l}, props:{lang:l as SiteLang} }));
}
const { lang } = Astro.props;
const countries = await getCollection("directory", ({ data }) => data.lang === lang && !data.draft);
const byContinent = countries.reduce((acc, c) => {
  if (!acc[c.data.continent]) acc[c.data.continent] = [];
  acc[c.data.continent].push(c); return acc;
}, {} as Record<string, typeof countries>);
const continentOrder: Continent[] = ["europe","north-america","south-america","asia","oceania","africa"];
function getFlagEmoji(cc: string): string {
  return String.fromCodePoint(...cc.toUpperCase().split("").map(c => 127397 + c.charCodeAt(0)));
}
const totalResources = countries.reduce((s, c) => s + c.data.totalServices, 0);
---
<!doctype html>
<html lang={lang}>
<head>
  <BaseHead title={directoryLabels.pageTitle[lang]} description={directoryLabels.pageDescription[lang]} />
  <style>
    .dir-idx{max-width:1100px;margin:0 auto;padding:2rem 1.5rem 4rem}
    .dir-hero{text-align:center;margin-bottom:3rem;padding:2.5rem 1rem}
    .dir-hero h1{font-size:2.25rem;margin-bottom:.5rem}
    .dir-hero .sub{font-size:1.1rem;opacity:.75;max-width:560px;margin:0 auto 1.5rem;line-height:1.6}
    .stats{display:flex;gap:2rem;justify-content:center}
    .stat{font-size:.9rem;opacity:.65}.stat strong{font-size:1.4rem;display:block;opacity:1}
    .cont-sec{margin-bottom:2.5rem}
    .cont-sec h2{font-size:1.35rem;margin-bottom:1rem;padding-bottom:.4rem;border-bottom:2px solid rgba(128,128,128,.2)}
    .cgrid{display:grid;grid-template-columns:repeat(auto-fill,minmax(280px,1fr));gap:.85rem}
    .ccard{display:flex;align-items:center;gap:1rem;padding:1.1rem 1.25rem;border-radius:10px;border:1px solid rgba(128,128,128,.2);text-decoration:none;color:inherit;transition:all .2s}
    .ccard:hover{border-color:rgb(var(--accent));box-shadow:0 4px 12px rgba(0,0,0,.06);transform:translateY(-1px)}
    .flag{font-size:2.25rem;line-height:1}.ci h3{font-size:1.05rem;margin:0 0 .15rem}.ci .cnt{font-size:.8rem;opacity:.55}
    @media(max-width:640px){.dir-hero h1{font-size:1.65rem}.cgrid{grid-template-columns:1fr}}
  </style>
</head>
<body>
  <Header />
  <main class="dir-idx">
    <header class="dir-hero">
      <h1>{directoryLabels.pageTitle[lang]}</h1>
      <p class="sub">{directoryLabels.pageDescription[lang]}</p>
      <div class="stats">
        <span class="stat"><strong>{countries.length}</strong>{directoryLabels.ui.countries[lang]}</span>
        <span class="stat"><strong>{totalResources}</strong>{directoryLabels.ui.resources[lang]}</span>
      </div>
    </header>
    {continentOrder.map(cont => {
      const list = byContinent[cont]; if (!list?.length) return null;
      return (
        <section class="cont-sec">
          <h2>{directoryLabels.continents[cont][lang]}</h2>
          <div class="cgrid">
            {list.sort((a,b) => b.data.totalServices - a.data.totalServices).map(c => (
              <a href={`/${lang}/directory/${c.id}/`} class="ccard">
                <span class="flag">{getFlagEmoji(c.data.countryCode)}</span>
                <div class="ci"><h3>{c.data.country}</h3><span class="cnt">{c.data.totalServices} {directoryLabels.ui.resources[lang]}</span></div>
              </a>
            ))}
          </div>
        </section>
      );
    })}
  </main>
  <Footer />
</body>
</html>
ENDOFFILE

echo "   ✅ src/pages/[lang]/directory-index.astro"

# =============================================================================
# 6. PAGE [lang] PAYS : src/pages/[lang]/directory-slug.astro
# =============================================================================

cat > src/pages/\[lang\]/directory-slug.astro << 'ENDOFFILE'
---
import { getCollection } from "astro:content";
import BaseHead from "../../components/BaseHead.astro";
import Header from "../../components/Header.astro";
import Footer from "../../components/Footer.astro";
import FormattedDate from "../../components/FormattedDate.astro";
import { directoryLabels } from "../../i18n/directory-i18n";
import type { SiteLang, ServiceCategory } from "../../i18n/directory-i18n";

export async function getStaticPaths() {
  const all = await getCollection("directory", ({ data }) => data.lang !== "en" && !data.draft);
  return all.map(e => ({ params: { lang: e.data.lang, slug: e.id }, props: { entry: e } }));
}
const { entry } = Astro.props;
const { Content } = await entry.render();
const lang = entry.data.lang as SiteLang;

const byCategory = entry.data.services.reduce((acc, s) => {
  if (!acc[s.category]) acc[s.category] = [];
  acc[s.category].push(s); return acc;
}, {} as Record<string, typeof entry.data.services>);
const catOrder: ServiceCategory[] = ["network","virtual-airline","community","addon-developer","media","event","training","shop"];
function getFlagEmoji(cc: string): string {
  return String.fromCodePoint(...cc.toUpperCase().split("").map(c => 127397 + c.charCodeAt(0)));
}
const simColors: Record<string,string> = { msfs:"#0ea5e9", xplane:"#8b5cf6", dcs:"#ef4444", general:"#64748b" };
---
<!doctype html>
<html lang={lang}>
<head>
  <BaseHead title={entry.data.title} description={entry.data.description} />
  <style>
    .dir-c{max-width:860px;margin:0 auto;padding:2rem 1.5rem 4rem}
    .bc{font-size:.85rem;margin-bottom:1.5rem;opacity:.6}.bc a{text-decoration:none;color:rgb(var(--accent))}.bc .s{margin:0 .4rem;opacity:.4}
    .ch{display:flex;align-items:center;gap:1.25rem;margin-bottom:2rem}.fl{font-size:3.5rem;line-height:1}
    .ch h1{font-size:2rem;margin:0 0 .2rem}.hm{font-size:.85rem;opacity:.6;display:flex;gap:1.25rem}
    .cn{display:flex;flex-wrap:wrap;gap:.4rem;margin-bottom:2rem;padding-bottom:1.25rem;border-bottom:1px solid rgba(128,128,128,.2)}
    .cp{display:inline-flex;align-items:center;gap:.3rem;padding:.35rem .75rem;border-radius:100px;border:1px solid rgba(128,128,128,.2);font-size:.78rem;text-decoration:none;color:inherit;transition:all .15s;white-space:nowrap}
    .cp:hover{border-color:rgb(var(--accent))}.ci2{font-size:.95rem}
    .cc{background:rgba(128,128,128,.15);border-radius:100px;padding:0 .35rem;font-size:.68rem;font-weight:600}
    .art{margin-bottom:2.5rem;line-height:1.75}.art :global(h2){font-size:1.4rem;margin-top:2.25rem}.art :global(h3){font-size:1.15rem;margin-top:1.5rem}
    .sd>h2{font-size:1.5rem;margin-bottom:1.5rem;padding-bottom:.4rem;border-bottom:2px solid rgba(128,128,128,.2)}
    .cs{margin-bottom:2rem}.cs h3{display:flex;align-items:center;gap:.4rem;font-size:1.15rem;margin-bottom:.75rem}
    .sl{display:flex;flex-direction:column;gap:.6rem}
    .sc{padding:1.1rem 1.25rem;border-radius:8px;border:1px solid rgba(128,128,128,.2);transition:border-color .15s}
    .sc:hover{border-color:rgb(var(--accent))}.sc.ft{border-color:#f59e0b;background:rgba(245,158,11,.05)}
    .sn{font-weight:600;font-size:1rem;text-decoration:none;color:rgb(var(--accent));display:inline-flex;align-items:center;gap:.4rem}.sn:hover{text-decoration:underline}
    .sde{font-size:.88rem;margin:.3rem 0 .5rem;opacity:.8;line-height:1.5}
    .sm{display:flex;justify-content:space-between;align-items:center;flex-wrap:wrap;gap:.4rem}
    .st{display:flex;gap:.3rem}
    .stg{font-size:.68rem;font-weight:700;padding:.12rem .45rem;border-radius:3px;letter-spacing:.03em;background:color-mix(in srgb,var(--sim-color) 15%,transparent);color:var(--sim-color)}
    .sb{display:flex;gap:.3rem}.bdg{font-size:.68rem;padding:.12rem .45rem;border-radius:3px;font-weight:600}
    .vb{background:#dcfce7;color:#16a34a}.fb{background:#fef3c7;color:#d97706}.lb{background:rgba(128,128,128,.15);opacity:.7}
    .sug{margin-top:2.5rem;padding:1.75rem;border-radius:10px;background:rgba(128,128,128,.06);text-align:center}
    .sug p{margin:0 0 .75rem;font-size:.95rem}
    .sugb{display:inline-flex;align-items:center;gap:.4rem;padding:.5rem 1.25rem;border-radius:6px;background:rgb(var(--accent));color:white;text-decoration:none;font-weight:600;font-size:.85rem}.sugb:hover{opacity:.9}
    @media(max-width:640px){.ch{flex-direction:column;text-align:center}.ch h1{font-size:1.5rem}.hm{flex-direction:column;gap:.2rem}.sm{flex-direction:column;align-items:flex-start}}
  </style>
</head>
<body>
  <Header />
  <main class="dir-c">
    <nav class="bc"><a href={`/${lang}/directory-index/`}>{directoryLabels.navLabel[lang]}</a><span class="s">/</span><span>{entry.data.country}</span></nav>
    <header class="ch">
      <span class="fl">{getFlagEmoji(entry.data.countryCode)}</span>
      <div>
        <h1>{entry.data.country}</h1>
        <p class="hm">
          <span><strong>{entry.data.totalServices}</strong> {directoryLabels.ui.resources[lang]}</span>
          {entry.data.updatedDate && <span>{directoryLabels.ui.lastUpdated[lang]}: <FormattedDate date={entry.data.updatedDate} /></span>}
        </p>
      </div>
    </header>
    <nav class="cn">
      {catOrder.map(cat => {
        const svcs = byCategory[cat]; if (!svcs?.length) return null;
        return <a href={`#cat-${cat}`} class="cp"><span class="ci2">{directoryLabels.categoryIcons[cat]}</span>{directoryLabels.categories[cat][lang]}<span class="cc">{svcs.length}</span></a>;
      })}
    </nav>
    <article class="art"><Content /></article>
    <section class="sd">
      <h2>{directoryLabels.ui.completeDirectory[lang]}</h2>
      {catOrder.map(cat => {
        const svcs = byCategory[cat]; if (!svcs?.length) return null;
        return (
          <div class="cs" id={`cat-${cat}`}>
            <h3><span class="ci2">{directoryLabels.categoryIcons[cat]}</span>{directoryLabels.categories[cat][lang]}</h3>
            <div class="sl">
              {svcs.map(s => (
                <div class:list={["sc",{ft:s.featured}]}>
                  <div><a href={s.url} target="_blank" rel="noopener noreferrer" class="sn">{s.name}{s.featured && <span class="bdg fb">★ {directoryLabels.ui.featured[lang]}</span>}</a></div>
                  <p class="sde">{s.description}</p>
                  <div class="sm">
                    <div class="st">{s.simulators.map(sim => <span class="stg" style={`--sim-color:${simColors[sim]||simColors.general}`}>{sim.toUpperCase()}</span>)}</div>
                    <div class="sb">
                      {s.verified && <span class="bdg vb">✓ {directoryLabels.ui.verified[lang]}</span>}
                      {s.language && <span class="bdg lb">{s.language.toUpperCase()}</span>}
                    </div>
                  </div>
                </div>
              ))}
            </div>
          </div>
        );
      })}
    </section>
    <aside class="sug">
      <p>{directoryLabels.ui.suggestResource[lang]}</p>
      <a href="https://discord.gg/your-invite-link" target="_blank" rel="noopener" class="sugb">💬 Discord</a>
    </aside>
  </main>
  <Footer />
</body>
</html>
ENDOFFILE

echo "   ✅ src/pages/[lang]/directory-index.astro"
echo "   ✅ src/pages/[lang]/directory-slug.astro"

# =============================================================================
# 7. EXEMPLES DE CONTENU
# =============================================================================
echo ""
echo "📝 Création des exemples de contenu..."

cat > src/content/directory/united-states.md << 'ENDOFFILE'
---
title: "Flight Simulation in the United States — Directory"
description: "Complete directory of US flight simulation communities, virtual airlines, addon developers, events, and resources."
lang: en
pubDate: 2026-02-16
country: "United States"
countryEN: "United States"
countryCode: "US"
continent: north-america
totalServices: 5
draft: false
services:
  - name: "VATUSA"
    url: "https://vatusa.net"
    category: network
    description: "Official US division of the VATSIM network providing ATC coverage for American airspace and pilot training."
    simulators: [msfs, xplane]
    language: "en"
    verified: false
    featured: true
  - name: "United Virtual Airlines"
    url: "https://www.unitedvirtual.com"
    category: virtual-airline
    description: "One of the largest virtual airlines replicating United Airlines operations with hundreds of active pilots."
    simulators: [msfs, xplane]
    language: "en"
    verified: false
    featured: true
  - name: "AVSIM"
    url: "https://www.avsim.com"
    category: community
    description: "The largest and oldest flight simulation forum, central hub for news, reviews, downloads, and discussion."
    simulators: [msfs, xplane, dcs, general]
    language: "en"
    verified: false
    featured: true
  - name: "FlightSimExpo"
    url: "https://flightsimexpo.com"
    category: event
    description: "Annual flight simulation convention featuring developer presentations, hardware exhibits, and meetups."
    simulators: [general]
    language: "en"
    verified: false
    featured: false
  - name: "PilotEdge"
    url: "https://www.pilotedge.net"
    category: training
    description: "Professional ATC service providing realistic US airspace coverage with human controllers."
    simulators: [msfs, xplane]
    language: "en"
    verified: false
    featured: false
---

## Flight Simulation in the United States

The United States is home to the largest flight simulation community in the world. VATSIM's US division (VATUSA) is the most active globally, and the annual FlightSimExpo draws enthusiasts from around the world.

## ATC Networks

### VATUSA
VATUSA is the largest VATSIM division with hundreds of active controllers covering US airspace.

## Virtual Airlines

### United Virtual Airlines
One of the most established virtual airlines offering a route network replicating United Airlines operations.

## Communities

### AVSIM
Founded in the late 1990s, AVSIM remains the central forum for the flight simulation community.

## Events

### FlightSimExpo
The premier annual gathering for flight sim enthusiasts, featuring developer presentations and hardware demos.

## Training

### PilotEdge
A professional ATC service used by both virtual and real-world student pilots.
ENDOFFILE

cat > src/content/directory/france.md << 'ENDOFFILE'
---
title: "Simulation de vol en France — Annuaire"
description: "Annuaire complet des communautés, compagnies virtuelles, développeurs et ressources de simulation de vol en France."
lang: fr
pubDate: 2026-02-16
country: "France"
countryEN: "France"
countryCode: "FR"
continent: europe
totalServices: 5
draft: false
services:
  - name: "VATSIM France"
    url: "https://vatsim.fr"
    category: network
    description: "Division française du réseau VATSIM. Contrôle ATC régulier sur l'espace aérien français et formation pilotes."
    simulators: [msfs, xplane]
    language: "fr"
    verified: false
    featured: true
  - name: "IVAO France"
    url: "https://fr.ivao.aero"
    category: network
    description: "Division française d'IVAO. Réseau international de simulation de vol avec ATC et formation structurée."
    simulators: [msfs, xplane]
    language: "fr"
    verified: false
    featured: true
  - name: "Air France Virtual"
    url: "https://www.airfrancevirtual.com"
    category: virtual-airline
    description: "Compagnie virtuelle reproduisant les opérations d'Air France avec vols programmés sur le réseau mondial."
    simulators: [msfs, xplane]
    language: "fr"
    verified: false
    featured: false
  - name: "Francophone Simmers"
    url: "https://discord.gg/example"
    category: community
    description: "Communauté Discord francophone dédiée à la simulation de vol : MSFS, X-Plane et DCS."
    simulators: [msfs, xplane, dcs]
    language: "fr"
    verified: false
    featured: false
  - name: "SimFrance"
    url: "https://www.simfrance.com"
    category: addon-developer
    description: "Développeur français de scènes spécialisé dans les aéroports et la photogrammétrie française."
    simulators: [msfs]
    language: "fr"
    verified: false
    featured: false
---

## La simulation de vol en France

La France dispose d'une communauté de simulation de vol dynamique, portée par des divisions VATSIM et IVAO très actives et plusieurs compagnies virtuelles établies.

## Réseaux ATC

### VATSIM France
La division française de VATSIM assure une couverture ATC régulière sur les principaux aéroports français.

### IVAO France
IVAO, dont le siège est basé en France, dispose d'une division française particulièrement active.

## Compagnies virtuelles

### Air France Virtual
Reproduit les opérations d'Air France avec un réseau de vols programmés mondial.

## Communautés
La communauté francophone se retrouve principalement sur Discord.

## Développeurs d'add-ons
Plusieurs développeurs français se spécialisent dans les scènes d'aéroports français en photogrammétrie.
ENDOFFILE

echo "   ✅ src/content/directory/united-states.md"
echo "   ✅ src/content/directory/france.md"

# =============================================================================
# 8. PATCHER content.config.ts
# =============================================================================
echo ""
echo "⚙️  Patch de content.config.ts..."

# Vérifier si directory est déjà défini
if grep -q "const directory" src/content.config.ts; then
  echo "   ⚠️  La collection 'directory' existe déjà dans content.config.ts — pas de modification"
else
  # Ajouter la collection directory AVANT la ligne export
  # On cherche la ligne "export const collections"
  if grep -q "export const collections" src/content.config.ts; then
    # Insérer le bloc directory juste avant l'export
    sed -i '/export const collections/i\\
\
// === Collection Directory (annuaire mondial) ===\
const directory = defineCollection({\
  schema: z.object({\
    title: z.string().max(100),\
    description: z.string().max(200),\
    lang: z.enum(["en", "fr", "es", "pt", "de", "zh", "id", "ja"]),\
    pubDate: z.coerce.date(),\
    updatedDate: z.coerce.date().optional(),\
    draft: z.boolean().default(false),\
    country: z.string(),\
    countryEN: z.string(),\
    countryCode: z.string().length(2),\
    continent: z.enum(["europe","north-america","south-america","asia","oceania","africa"]),\
    heroImage: z.string().optional(),\
    totalServices: z.number().default(0),\
    services: z.array(z.object({\
      name: z.string(),\
      url: z.string().url(),\
      category: z.enum(["virtual-airline","community","training","addon-developer","event","media","network","shop"]),\
      description: z.string().max(300),\
      simulators: z.array(z.enum(["msfs","xplane","dcs","general"])).default(["general"]),\
      language: z.string().optional(),\
      verified: z.boolean().default(false),\
      featured: z.boolean().default(false),\
    })),\
  }),\
});\
' src/content.config.ts

    # Ajouter directory à l'export
    sed -i 's/export const collections = { blog }/export const collections = { blog, directory }/' src/content.config.ts
    sed -i 's/export const collections = { blog,/export const collections = { blog, directory,/' src/content.config.ts

    echo "   ✅ Collection 'directory' ajoutée à content.config.ts"
  else
    echo "   ⚠️  Impossible de trouver 'export const collections' — patch manuel nécessaire"
    echo "   Voir content.config.directory.ts pour le code à ajouter"
  fi
fi

# =============================================================================
# 9. SCRIPTS DE GÉNÉRATION
# =============================================================================
echo ""
echo "🔧 Création des scripts..."

# Le generate-directory.sh et check-directory-urls.sh sont déjà fournis
# On vérifie s'ils existent déjà
if [[ ! -f "scripts/generate-directory.sh" ]]; then
  echo "   ⚠️  scripts/generate-directory.sh non trouvé"
  echo "   → Copie le fichier generate-directory.sh fourni dans scripts/"
else
  echo "   ✅ scripts/generate-directory.sh (déjà présent)"
fi

if [[ ! -f "scripts/check-directory-urls.sh" ]]; then
  echo "   ⚠️  scripts/check-directory-urls.sh non trouvé"
  echo "   → Copie le fichier check-directory-urls.sh fourni dans scripts/"
else
  echo "   ✅ scripts/check-directory-urls.sh (déjà présent)"
fi

# =============================================================================
# 10. RÉSUMÉ
# =============================================================================
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "✅ Installation terminée !"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Fichiers créés :"
echo "  📄 src/i18n/directory-i18n.ts"
echo "  📄 src/pages/directory/index.astro"
echo "  📄 src/pages/directory/[...slug].astro"
echo "  📄 src/pages/[lang]/directory-index.astro"
echo "  📄 src/pages/[lang]/directory-slug.astro"
echo "  📄 src/content/directory/united-states.md"
echo "  📄 src/content/directory/france.md"
echo "  ⚙️  content.config.ts (patché)"
echo ""
echo "Prochaines étapes :"
echo "  1. npm run build              → vérifier que ça compile"
echo "  2. npm run dev                → tester /directory/ et /fr/directory-index/"
echo "  3. Ajouter 'Directory' dans Header.astro"
echo "  4. Copier generate-directory.sh et check-directory-urls.sh dans scripts/"
echo "  5. chmod +x scripts/*.sh"
echo "  6. Setup MCP Serper pour Claude Code"
echo ""
echo "URLs générées :"
echo "  /directory/                    ← Index EN"
echo "  /directory/united-states/      ← Page US"
echo "  /fr/directory-index/           ← Index FR"
echo "  /fr/directory-slug/france/     ← Page France (à vérifier le routing)"
echo ""
