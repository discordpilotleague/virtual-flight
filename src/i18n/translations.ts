import type { Locale } from './locales';

const fr = {
	'site.title': 'Virtual Flight',
	'site.description': "L'actualité hardware et software pour les pilotes virtuels",

	'nav.home': 'Accueil',
	'nav.blog': 'Blog',
	'nav.about': 'À propos',

	'home.heading': 'Bienvenue sur Virtual Flight',
	'home.p1':
		"Virtual Flight est votre magazine digital dédié à la simulation aérienne. Que vous voliez sur MSFS 2024, X-Plane ou DCS, vous trouverez ici toute l'actualité hardware et software qui compte pour les pilotes virtuels.",
	'home.p2':
		"Tests de périphériques, comparatifs de scènes, guides de configuration, nouveautés add-ons : notre rédaction couvre l'ensemble de l'écosystème pour vous aider à tirer le meilleur de votre cockpit.",
	'home.p3':
		'Passionné de vol réseau ou de tours de piste en solo, rejoignez une communauté de simmers exigeants et restez informé des dernières sorties qui feront décoller vos sessions.',

	'about.title': 'À propos',
	'about.description':
		'Découvrez l\'équipe derrière Virtual Flight, votre magazine de simulation aérienne.',
	'about.p1':
		"Virtual Flight est né d'un constat simple : les pilotes virtuels francophones manquaient d'une source d'information fiable, indépendante et régulièrement mise à jour dans leur langue. Début 2026, une équipe de passionnés a repris ce site avec l'ambition d'en faire la référence francophone de la simulation aérienne.",
	'about.p2':
		'Notre rédaction réunit des simmers chevronnés qui cumulent des milliers d\'heures de vol sur MSFS 2024, X-Plane et DCS. Nous testons le hardware — joysticks, palonniers, panneaux radio — avec la même rigueur que les add-ons logiciels, scènes et aéronefs qui alimentent nos simulateurs préférés.',
	'about.p3':
		"Au-delà des tests, Virtual Flight couvre l'actualité du vol réseau, les mises à jour des plateformes et les événements communautaires qui rythment la vie des escadrilles virtuelles. Notre objectif : vous fournir les clés pour profiter pleinement de chaque session, que vous soyez débutant ou pilote confirmé.",
	'about.p4':
		"Le site est en construction et s'enrichira semaine après semaine. Si vous souhaitez contribuer, partager un retour d'expérience ou simplement discuter simulation, n'hésitez pas à nous contacter.",

	'footer.copyright': 'Tous droits réservés.',
	'blog.lastUpdated': 'Dernière mise à jour le',
	'social.mastodon': 'Suivre sur Mastodon',
	'social.twitter': 'Suivre sur Twitter',
	'social.github': 'Voir le dépôt GitHub',
	'social.discord': 'Rejoindre le Discord',
} as const;

export type TranslationKey = keyof typeof fr;

export const translations: Record<Locale, Record<TranslationKey, string>> = {
	fr,

	en: {
		'site.title': 'Virtual Flight',
		'site.description': 'Hardware and software news for virtual pilots',
		'nav.home': 'Home',
		'nav.blog': 'Blog',
		'nav.about': 'About',
		'home.heading': 'Welcome to Virtual Flight',
		'home.p1':
			'Virtual Flight is your digital magazine dedicated to flight simulation. Whether you fly MSFS 2024, X-Plane or DCS, you will find all the hardware and software news that matters for virtual pilots.',
		'home.p2':
			'Peripheral reviews, scenery comparisons, configuration guides, add-on releases: our editorial team covers the entire ecosystem to help you get the most from your cockpit.',
		'home.p3':
			'Whether you enjoy online flying or solo pattern work, join a community of discerning simmers and stay informed about the latest releases that will take your sessions to new heights.',
		'about.title': 'About',
		'about.description': 'Discover the team behind Virtual Flight, your flight simulation magazine.',
		'about.p1':
			'Virtual Flight was born from a simple observation: virtual pilots worldwide deserve a reliable, independent and regularly updated source of information. In early 2026, a team of enthusiasts took over this site with the ambition of making it the go-to reference for the global flight simulation community.',
		'about.p2':
			'Our editorial team brings together experienced simmers with thousands of flight hours on MSFS 2024, X-Plane and DCS. We test hardware — joysticks, rudder pedals, radio panels — with the same rigour as the software add-ons, sceneries and aircraft that power our favourite simulators.',
		'about.p3':
			'Beyond reviews, Virtual Flight covers online flying news, platform updates and community events that drive the life of virtual squadrons. Our goal: to give you the keys to fully enjoy every session, whether you are a beginner or a seasoned pilot.',
		'about.p4':
			'The site is under construction and will grow week by week. If you would like to contribute, share feedback or simply discuss simulation, do not hesitate to get in touch.',
		'footer.copyright': 'All rights reserved.',
		'blog.lastUpdated': 'Last updated on',
		'social.mastodon': 'Follow on Mastodon',
		'social.twitter': 'Follow on Twitter',
		'social.github': 'Go to GitHub repo',
		'social.discord': 'Join Discord',
	},

	es: {
		'site.title': 'Virtual Flight',
		'site.description': 'Noticias de hardware y software para pilotos virtuales',
		'nav.home': 'Inicio',
		'nav.blog': 'Blog',
		'nav.about': 'Acerca de',
		'home.heading': 'Bienvenido a Virtual Flight',
		'home.p1':
			'Virtual Flight es tu revista digital dedicada a la simulación aérea. Ya vueles en MSFS 2024, X-Plane o DCS, aquí encontrarás todas las novedades de hardware y software que importan a los pilotos virtuales.',
		'home.p2':
			'Análisis de periféricos, comparativas de escenarios, guías de configuración, novedades de add-ons: nuestra redacción cubre todo el ecosistema para ayudarte a sacar el máximo de tu cockpit.',
		'home.p3':
			'Apasionado del vuelo en red o de los circuitos en solitario, únete a una comunidad de simmers exigentes y mantente informado de los últimos lanzamientos que harán despegar tus sesiones.',
		'about.title': 'Acerca de',
		'about.description':
			'Descubre el equipo detrás de Virtual Flight, tu revista de simulación aérea.',
		'about.p1':
			'Virtual Flight nació de una observación sencilla: los pilotos virtuales hispanohablantes necesitaban una fuente de información fiable, independiente y actualizada regularmente en su idioma. A principios de 2026, un equipo de apasionados retomó este sitio con la ambición de convertirlo en la referencia en español para la simulación aérea.',
		'about.p2':
			'Nuestra redacción reúne simmers experimentados con miles de horas de vuelo en MSFS 2024, X-Plane y DCS. Probamos el hardware — joysticks, pedales de timón, paneles de radio — con el mismo rigor que los add-ons de software, escenarios y aeronaves que alimentan nuestros simuladores favoritos.',
		'about.p3':
			'Más allá de los análisis, Virtual Flight cubre las noticias del vuelo en red, las actualizaciones de plataformas y los eventos comunitarios que marcan la vida de las escuadrillas virtuales. Nuestro objetivo: darte las claves para disfrutar plenamente de cada sesión, seas principiante o piloto experimentado.',
		'about.p4':
			'El sitio está en construcción y se enriquecerá semana tras semana. Si deseas contribuir, compartir tu experiencia o simplemente hablar de simulación, no dudes en contactarnos.',
		'footer.copyright': 'Todos los derechos reservados.',
		'blog.lastUpdated': 'Última actualización el',
		'social.mastodon': 'Seguir en Mastodon',
		'social.twitter': 'Seguir en Twitter',
		'social.github': 'Ir al repositorio GitHub',
		'social.discord': 'Unirse al Discord',
	},

	pt: {
		'site.title': 'Virtual Flight',
		'site.description': 'Notícias de hardware e software para pilotos virtuais',
		'nav.home': 'Início',
		'nav.blog': 'Blog',
		'nav.about': 'Sobre',
		'home.heading': 'Bem-vindo ao Virtual Flight',
		'home.p1':
			'O Virtual Flight é a sua revista digital dedicada à simulação aérea. Quer voe no MSFS 2024, X-Plane ou DCS, encontrará aqui todas as novidades de hardware e software que interessam aos pilotos virtuais.',
		'home.p2':
			'Análises de periféricos, comparativos de cenários, guias de configuração, novidades de add-ons: a nossa redação cobre todo o ecossistema para o ajudar a tirar o máximo do seu cockpit.',
		'home.p3':
			'Apaixonado por voo em rede ou por circuitos a solo, junte-se a uma comunidade de simmers exigentes e mantenha-se informado sobre os últimos lançamentos que farão descolar as suas sessões.',
		'about.title': 'Sobre',
		'about.description':
			'Descubra a equipa por trás do Virtual Flight, a sua revista de simulação aérea.',
		'about.p1':
			'O Virtual Flight nasceu de uma constatação simples: os pilotos virtuais lusófonos precisavam de uma fonte de informação fiável, independente e regularmente atualizada na sua língua. No início de 2026, uma equipa de apaixonados retomou este site com a ambição de o tornar a referência em português para a simulação aérea.',
		'about.p2':
			'A nossa redação reúne simmers experientes com milhares de horas de voo no MSFS 2024, X-Plane e DCS. Testamos o hardware — joysticks, pedais de leme, painéis de rádio — com o mesmo rigor que os add-ons de software, cenários e aeronaves que alimentam os nossos simuladores favoritos.',
		'about.p3':
			'Para além das análises, o Virtual Flight cobre as notícias do voo em rede, as atualizações das plataformas e os eventos comunitários que marcam a vida das esquadrilhas virtuais. O nosso objetivo: dar-lhe as chaves para desfrutar plenamente de cada sessão, seja principiante ou piloto confirmado.',
		'about.p4':
			'O site está em construção e enriquecer-se-á semana após semana. Se deseja contribuir, partilhar a sua experiência ou simplesmente falar de simulação, não hesite em contactar-nos.',
		'footer.copyright': 'Todos os direitos reservados.',
		'blog.lastUpdated': 'Última atualização em',
		'social.mastodon': 'Seguir no Mastodon',
		'social.twitter': 'Seguir no Twitter',
		'social.github': 'Ir para o repositório GitHub',
		'social.discord': 'Entrar no Discord',
	},

	de: {
		'site.title': 'Virtual Flight',
		'site.description': 'Hardware- und Software-News für virtuelle Piloten',
		'nav.home': 'Startseite',
		'nav.blog': 'Blog',
		'nav.about': 'Über uns',
		'home.heading': 'Willkommen bei Virtual Flight',
		'home.p1':
			'Virtual Flight ist Ihr digitales Magazin für Flugsimulation. Ob Sie MSFS 2024, X-Plane oder DCS fliegen — hier finden Sie alle Hardware- und Software-Neuigkeiten, die für virtuelle Piloten zählen.',
		'home.p2':
			'Peripherie-Tests, Szenerie-Vergleiche, Konfigurationsanleitungen, Add-on-Neuheiten: Unsere Redaktion deckt das gesamte Ökosystem ab, damit Sie das Beste aus Ihrem Cockpit herausholen.',
		'home.p3':
			'Ob Online-Fliegen oder Solo-Platzrunden — schließen Sie sich einer Gemeinschaft anspruchsvoller Simmer an und bleiben Sie über die neuesten Veröffentlichungen informiert, die Ihre Sessions auf ein neues Niveau heben.',
		'about.title': 'Über uns',
		'about.description':
			'Entdecken Sie das Team hinter Virtual Flight, Ihrem Flugsimulations-Magazin.',
		'about.p1':
			'Virtual Flight entstand aus einer einfachen Beobachtung: Deutschsprachige virtuelle Piloten brauchten eine zuverlässige, unabhängige und regelmäßig aktualisierte Informationsquelle in ihrer Sprache. Anfang 2026 übernahm ein Team von Enthusiasten diese Website mit dem Ziel, sie zur deutschsprachigen Referenz für Flugsimulation zu machen.',
		'about.p2':
			'Unsere Redaktion vereint erfahrene Simmer mit tausenden Flugstunden in MSFS 2024, X-Plane und DCS. Wir testen Hardware — Joysticks, Ruderpedale, Funkpanels — mit derselben Sorgfalt wie Software-Add-ons, Szenerien und Flugzeuge, die unsere Lieblingssimulatoren antreiben.',
		'about.p3':
			'Über Tests hinaus berichtet Virtual Flight über Online-Flug-Neuigkeiten, Plattform-Updates und Community-Events, die das Leben virtueller Staffeln prägen. Unser Ziel: Ihnen die Schlüssel zu geben, um jede Session voll zu genießen — ob Anfänger oder erfahrener Pilot.',
		'about.p4':
			'Die Website befindet sich im Aufbau und wird Woche für Woche erweitert. Wenn Sie beitragen, Erfahrungen teilen oder einfach über Simulation diskutieren möchten, zögern Sie nicht, uns zu kontaktieren.',
		'footer.copyright': 'Alle Rechte vorbehalten.',
		'blog.lastUpdated': 'Zuletzt aktualisiert am',
		'social.mastodon': 'Auf Mastodon folgen',
		'social.twitter': 'Auf Twitter folgen',
		'social.github': 'Zum GitHub-Repository',
		'social.discord': 'Discord beitreten',
	},

	zh: {
		'site.title': 'Virtual Flight',
		'site.description': '虚拟飞行员的硬件与软件资讯',
		'nav.home': '首页',
		'nav.blog': '博客',
		'nav.about': '关于',
		'home.heading': '欢迎来到 Virtual Flight',
		'home.p1':
			'Virtual Flight 是您的飞行模拟数字杂志。无论您使用 MSFS 2024、X-Plane 还是 DCS，这里都能找到虚拟飞行员关心的所有硬件和软件资讯。',
		'home.p2':
			'外设评测、场景对比、配置指南、插件新品：我们的编辑团队覆盖整个生态系统，帮助您从座舱中获得最佳体验。',
		'home.p3':
			'无论您热衷于联网飞行还是独自起落航线，加入一个高要求的模拟飞行社区，及时了解最新发布，让您的飞行体验更上一层楼。',
		'about.title': '关于',
		'about.description': '了解 Virtual Flight 背后的团队——您的飞行模拟杂志。',
		'about.p1':
			'Virtual Flight 源于一个简单的认识：中文虚拟飞行社区需要一个可靠、独立且定期更新的中文信息来源。2026年初，一群爱好者接手了这个网站，立志将其打造为中文飞行模拟领域的首选参考。',
		'about.p2':
			'我们的编辑团队汇集了经验丰富的模拟飞行玩家，在 MSFS 2024、X-Plane 和 DCS 上累计了数千小时的飞行时间。我们以同样严谨的态度测试硬件——操纵杆、方向舵踏板、无线电面板——以及驱动我们最爱模拟器的软件插件、场景和飞机。',
		'about.p3':
			'除了评测之外，Virtual Flight 还报道联网飞行新闻、平台更新和社区活动。我们的目标：为您提供充分享受每次飞行的钥匙，无论您是新手还是资深飞行员。',
		'about.p4':
			'网站正在建设中，将逐周丰富内容。如果您想贡献内容、分享经验或讨论模拟飞行，欢迎随时联系我们。',
		'footer.copyright': '保留所有权利。',
		'blog.lastUpdated': '最后更新于',
		'social.mastodon': '在 Mastodon 上关注',
		'social.twitter': '在 Twitter 上关注',
		'social.github': '前往 GitHub 仓库',
		'social.discord': '加入 Discord',
	},

	id: {
		'site.title': 'Virtual Flight',
		'site.description': 'Berita hardware dan software untuk pilot virtual',
		'nav.home': 'Beranda',
		'nav.blog': 'Blog',
		'nav.about': 'Tentang',
		'home.heading': 'Selamat datang di Virtual Flight',
		'home.p1':
			'Virtual Flight adalah majalah digital Anda yang didedikasikan untuk simulasi penerbangan. Baik Anda terbang di MSFS 2024, X-Plane, atau DCS, di sini Anda akan menemukan semua berita hardware dan software yang penting bagi pilot virtual.',
		'home.p2':
			'Ulasan periferal, perbandingan scenery, panduan konfigurasi, rilis add-on: tim redaksi kami mencakup seluruh ekosistem untuk membantu Anda mendapatkan yang terbaik dari cockpit Anda.',
		'home.p3':
			'Penggemar terbang online atau latihan solo, bergabunglah dengan komunitas simmer yang selektif dan tetap terinformasi tentang rilis terbaru yang akan membawa sesi Anda ke level baru.',
		'about.title': 'Tentang',
		'about.description':
			'Kenali tim di balik Virtual Flight, majalah simulasi penerbangan Anda.',
		'about.p1':
			'Virtual Flight lahir dari pengamatan sederhana: komunitas pilot virtual Indonesia membutuhkan sumber informasi yang andal, independen, dan diperbarui secara berkala dalam bahasa mereka. Pada awal 2026, sekelompok penggemar mengambil alih situs ini dengan ambisi menjadikannya referensi berbahasa Indonesia untuk simulasi penerbangan.',
		'about.p2':
			'Tim redaksi kami menyatukan simmer berpengalaman dengan ribuan jam terbang di MSFS 2024, X-Plane, dan DCS. Kami menguji hardware — joystick, pedal rudder, panel radio — dengan ketelitian yang sama seperti add-on software, scenery, dan pesawat yang menggerakkan simulator favorit kami.',
		'about.p3':
			'Di luar ulasan, Virtual Flight meliput berita terbang online, pembaruan platform, dan acara komunitas yang mewarnai kehidupan skuadron virtual. Tujuan kami: memberi Anda kunci untuk menikmati sepenuhnya setiap sesi, baik Anda pemula maupun pilot berpengalaman.',
		'about.p4':
			'Situs ini sedang dalam pembangunan dan akan berkembang dari minggu ke minggu. Jika Anda ingin berkontribusi, berbagi pengalaman, atau sekadar berdiskusi tentang simulasi, jangan ragu untuk menghubungi kami.',
		'footer.copyright': 'Hak cipta dilindungi.',
		'blog.lastUpdated': 'Terakhir diperbarui pada',
		'social.mastodon': 'Ikuti di Mastodon',
		'social.twitter': 'Ikuti di Twitter',
		'social.github': 'Kunjungi repositori GitHub',
		'social.discord': 'Gabung Discord',
	},

	ja: {
		'site.title': 'Virtual Flight',
		'site.description': 'バーチャルパイロットのためのハードウェア＆ソフトウェアニュース',
		'nav.home': 'ホーム',
		'nav.blog': 'ブログ',
		'nav.about': '概要',
		'home.heading': 'Virtual Flight へようこそ',
		'home.p1':
			'Virtual Flight はフライトシミュレーションに特化したデジタルマガジンです。MSFS 2024、X-Plane、DCS のいずれをお使いでも、バーチャルパイロットに役立つハードウェア・ソフトウェアの最新情報をお届けします。',
		'home.p2':
			'周辺機器レビュー、シーナリー比較、設定ガイド、アドオン新着情報：編集チームがエコシステム全体をカバーし、コックピットを最大限に活用するお手伝いをします。',
		'home.p3':
			'オンラインフライト派もソロ派も、こだわりのシマーコミュニティに参加して、セッションを新たな高みへ導く最新リリース情報をお見逃しなく。',
		'about.title': '概要',
		'about.description': 'Virtual Flight の運営チームをご紹介します。',
		'about.p1':
			'Virtual Flight はシンプルな気づきから生まれました。日本のバーチャルパイロットには、日本語で読める信頼性が高く、独立した、定期的に更新される情報源が必要です。2026年初頭、日本語圏のフライトシミュレーションのリファレンスとなることを目指し、愛好家チームがこのサイトを引き継ぎました。',
		'about.p2':
			'編集チームは MSFS 2024、X-Plane、DCS で数千時間のフライト経験を持つベテランシマーで構成されています。ジョイスティック、ラダーペダル、無線パネルなどのハードウェアを、ソフトウェアアドオン、シーナリー、機体と同じ厳密さでテストしています。',
		'about.p3':
			'レビューだけでなく、Virtual Flight はオンラインフライトニュース、プラットフォームアップデート、バーチャル飛行隊の活動を彩るコミュニティイベントもカバーしています。初心者からベテランパイロットまで、すべてのセッションを存分に楽しむための鍵をお届けすることが私たちの目標です。',
		'about.p4':
			'サイトは現在構築中で、毎週コンテンツが充実していきます。寄稿、体験共有、シミュレーションについての議論など、お気軽にお問い合わせください。',
		'footer.copyright': 'All rights reserved.',
		'blog.lastUpdated': '最終更新日',
		'social.mastodon': 'Mastodon でフォロー',
		'social.twitter': 'Twitter でフォロー',
		'social.github': 'GitHub リポジトリへ',
		'social.discord': 'Discord に参加',
	},
};
