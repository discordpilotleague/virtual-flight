import { defaultLocale, locales, type Locale } from './locales';
import { translations, type TranslationKey } from './translations';
import { directorySlugs } from './directory-i18n';

export function getLocaleFromUrl(pathname: string): Locale {
	const [, segment] = pathname.split('/');
	if (locales.includes(segment as Locale)) {
		return segment as Locale;
	}
	return defaultLocale;
}

export function useTranslations(locale: Locale) {
	return function t(key: TranslationKey): string {
		return translations[locale]?.[key] ?? translations[defaultLocale][key];
	};
}

export function localePath(locale: Locale, path: string): string {
	let cleanPath = path.startsWith('/') ? path : `/${path}`;
	if (!cleanPath.endsWith('/')) cleanPath += '/';
	if (locale === defaultLocale) return cleanPath;
	return `/${locale}${cleanPath}`;
}

export function switchLocalePath(currentPath: string, targetLocale: Locale): string {
	let barePath = currentPath;
	for (const loc of locales) {
		if (loc !== defaultLocale && currentPath.startsWith(`/${loc}/`)) {
			barePath = currentPath.slice(loc.length + 1);
			break;
		}
		if (loc !== defaultLocale && currentPath === `/${loc}`) {
			barePath = '/';
			break;
		}
	}

	// On blog article pages, redirect to the blog index of the target locale
	// (articles don't have 1:1 translations across languages)
	const blogArticlePattern = /^\/blog\/[^/]+/;
	if (blogArticlePattern.test(barePath)) {
		barePath = '/blog/';
	}

	// Handle localized about page slugs
	const aboutSlugs = ['about', 'a-propos', 'acerca-de', 'sobre', 'ueber-uns', 'guanyu', 'tentang', 'gaiyou'];
	const bareSegment = barePath.replace(/^\/|\/$/g, '');
	if (aboutSlugs.includes(bareSegment)) {
		const targetSlug = translations[targetLocale]?.['slug.about'] ?? 'about';
		return localePath(targetLocale, `/${targetSlug}`);
	}

	// Handle localized directory slugs
	const allDirSlugs = Object.values(directorySlugs);
	const bareSegments = barePath.replace(/^\/|\/$/g, '').split('/');
	if (allDirSlugs.includes(bareSegments[0])) {
		const targetDirSlug = directorySlugs[targetLocale] ?? 'directory';
		const rest = bareSegments.slice(1).join('/');
		const targetPath = rest ? `/${targetDirSlug}/${rest}` : `/${targetDirSlug}`;
		return localePath(targetLocale, targetPath);
	}

	return localePath(targetLocale, barePath);
}

export function getNonDefaultLocales(): Locale[] {
	return locales.filter((l): l is Exclude<Locale, typeof defaultLocale> => l !== defaultLocale);
}
