/**
 * Returns Schema.org Event data for a given post slug, or undefined if the post
 * is not an event-type article. Used by blog routing files to inject Event JSON-LD
 * alongside the standard Article schema for Google Discover / SERP enrichment.
 */
export function getEventData(
	postId: string,
	postDescription: string,
	heroImageUrl: string | undefined,
): Record<string, unknown> | undefined {
	if (postId.startsWith('flightsimexpo-2026-saint-paul-')) {
		return {
			'@type': 'Event',
			name: 'FlightSimExpo 2026',
			alternateName: 'Flight Simulation Expo 2026',
			startDate: '2026-06-12T12:00:00-05:00',
			endDate: '2026-06-14T15:00:00-05:00',
			eventStatus: 'https://schema.org/EventScheduled',
			eventAttendanceMode: 'https://schema.org/MixedEventAttendanceMode',
			description: postDescription,
			url: 'https://flightsimexpo.com/',
			...(heroImageUrl ? { image: heroImageUrl } : {}),
			location: [
				{
					'@type': 'Place',
					name: 'Saint Paul RiverCentre',
					address: {
						'@type': 'PostalAddress',
						streetAddress: '150 W Kellogg Blvd',
						addressLocality: 'Saint Paul',
						addressRegion: 'MN',
						postalCode: '55102',
						addressCountry: 'US',
					},
				},
				{
					'@type': 'VirtualLocation',
					url: 'https://flightsimexpo.com/',
				},
			],
			organizer: {
				'@type': 'Organization',
				name: 'Flight Simulation Association',
				url: 'https://flightsimassociation.com/',
			},
			offers: [
				{
					'@type': 'Offer',
					name: 'Multi-Day Pass (early-bird)',
					price: '68',
					priceCurrency: 'USD',
					url: 'https://flightsimexpo.com/register',
					availability: 'https://schema.org/InStock',
					validFrom: '2026-04-27',
					priceValidUntil: '2026-05-01',
				},
				{
					'@type': 'Offer',
					name: 'Online Pass',
					price: '15',
					priceCurrency: 'USD',
					url: 'https://flightsimexpo.com/register',
					availability: 'https://schema.org/PreOrder',
					validFrom: '2026-05-01',
				},
			],
		};
	}
	return undefined;
}
