export const defaultLocale = 'en' as const;

export const locales = ['en', 'fr', 'es', 'pt', 'br', 'de', 'zh', 'id', 'ja'] as const;

export type Locale = (typeof locales)[number];

export const bcp47: Record<Locale, string> = {
	fr: 'fr-FR',
	en: 'en-GB',
	es: 'es-ES',
	pt: 'pt-PT',
	br: 'pt-BR',
	de: 'de-DE',
	zh: 'zh-CN',
	id: 'id-ID',
	ja: 'ja-JP',
};

export const localeNames: Record<Locale, string> = {
	fr: 'Français',
	en: 'English',
	es: 'Español',
	pt: 'Português',
	br: 'Brasil',
	de: 'Deutsch',
	zh: '中文',
	id: 'Bahasa',
	ja: '日本語',
};
