import { defaultLocale, locales, type Locale } from './locales';
import { translations, type TranslationKey } from './translations';

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
	const cleanPath = path.startsWith('/') ? path : `/${path}`;
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
	return localePath(targetLocale, barePath);
}

export function getNonDefaultLocales(): Locale[] {
	return locales.filter((l): l is Exclude<Locale, typeof defaultLocale> => l !== defaultLocale);
}
