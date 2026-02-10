// @ts-check

import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
	site: 'https://virtual-flight.com',
	trailingSlash: 'always',
	integrations: [mdx(), sitemap()],
	i18n: {
		defaultLocale: 'en',
		locales: ['en', 'fr', 'es', 'pt', 'de', 'zh', 'id', 'ja'],
		routing: {
			prefixDefaultLocale: false,
		},
	},
});
