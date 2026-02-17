import { defineCollection, z } from 'astro:content';
import { glob } from 'astro/loaders';

const blog = defineCollection({
	// Load Markdown and MDX files in the `src/content/blog/` directory.
	loader: glob({ base: './src/content/blog', pattern: '**/*.{md,mdx}' }),
	// Type-check frontmatter using a schema
	schema: ({ image }) =>
		z.object({
			title: z.string(),
			description: z.string(),
			lang: z.string().default('en'),
			// Transform string to Date object
			pubDate: z.coerce.date(),
			updatedDate: z.coerce.date().optional(),
			heroImage: image().optional(),
		}),
});

// === Collection Directory (annuaire mondial) ===
const directory = defineCollection({
	loader: glob({ base: './src/content/directory', pattern: '**/*.{md,mdx}' }),
	schema: z.object({
		title: z.string().max(100),
		description: z.string().max(200),
		lang: z.enum(["en", "fr", "es", "pt", "br", "de", "zh", "id", "ja"]),
		pubDate: z.coerce.date(),
		updatedDate: z.coerce.date().optional(),
		draft: z.boolean().default(false),
		country: z.string(),
		countryEN: z.string(),
		countryCode: z.string().length(2),
		continent: z.enum(["europe", "north-america", "south-america", "asia", "oceania", "africa"]),
		heroImage: z.string().optional(),
		totalServices: z.number().default(0),
		services: z.array(z.object({
			name: z.string(),
			url: z.string().url(),
			category: z.enum(["virtual-airline", "community", "training", "addon-developer", "event", "media", "network", "shop"]),
			description: z.string().max(300),
			simulators: z.array(z.enum(["msfs", "xplane", "dcs", "general"])).default(["general"]),
			language: z.string().optional(),
			verified: z.boolean().default(false),
			featured: z.boolean().default(false),
		})),
	}),
});

export const collections = { blog, directory };
