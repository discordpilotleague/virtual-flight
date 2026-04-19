const LOCALES = ['en', 'fr', 'es', 'pt', 'br', 'de', 'zh', 'id', 'ja'] as const;
type Locale = (typeof LOCALES)[number];
const DEFAULT_LOCALE: Locale = 'en';
const COOKIE_NAME = 'preferred_lang';

const BOT_UA = /bot|crawl|spider|slurp|facebookexternalhit|embedly|quora link preview|showyoubot|outbrain|pinterest|slackbot|vkShare|W3C_Validator|LinkedInBot|redditbot|whatsapp|telegram|duckduckbot|applebot|yandex|baiduspider/i;

function isLocale(value: string): value is Locale {
	return (LOCALES as readonly string[]).includes(value);
}

function homepageLocale(pathname: string): Locale | null {
	if (pathname === '/' || pathname === '') return DEFAULT_LOCALE;
	const match = pathname.match(/^\/([a-z]{2})\/?$/);
	if (!match) return null;
	const candidate = match[1];
	if (!isLocale(candidate) || candidate === DEFAULT_LOCALE) return null;
	return candidate;
}

function readCookie(header: string | null, name: string): string | null {
	if (!header) return null;
	for (const entry of header.split(';')) {
		const [rawKey, ...rawValue] = entry.trim().split('=');
		if (rawKey === name) return decodeURIComponent(rawValue.join('='));
	}
	return null;
}

function homepageFor(locale: Locale): string {
	return locale === DEFAULT_LOCALE ? '/' : `/${locale}/`;
}

export const onRequest: PagesFunction = async ({ request, next }) => {
	if (request.method !== 'GET' && request.method !== 'HEAD') return next();

	const url = new URL(request.url);

	// Skip assets (anything with a file extension) and API routes.
	if (/\.[a-z0-9]+$/i.test(url.pathname) || url.pathname.startsWith('/api/')) {
		return next();
	}

	// Respect crawlers — they must always see the canonical URL.
	if (BOT_UA.test(request.headers.get('user-agent') ?? '')) return next();

	const servedLocale = homepageLocale(url.pathname);
	if (servedLocale === null) return next();

	const preferred = readCookie(request.headers.get('cookie'), COOKIE_NAME);
	if (!preferred || !isLocale(preferred) || preferred === servedLocale) return next();

	const target = new URL(homepageFor(preferred), url);
	return new Response(null, {
		status: 302,
		headers: {
			Location: target.toString(),
			'Cache-Control': 'no-store',
			Vary: 'Cookie',
		},
	});
};
