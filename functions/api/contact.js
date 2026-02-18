/**
 * Cloudflare Pages Function — Contact Form Handler
 *
 * Receives multipart form data (including file attachments)
 * and sends an email via the Resend API.
 *
 * Required env var: RESEND_API_KEY (set in Cloudflare Pages dashboard)
 */

function arrayBufferToBase64(buffer) {
	const bytes = new Uint8Array(buffer);
	let binary = '';
	for (let i = 0; i < bytes.byteLength; i++) {
		binary += String.fromCharCode(bytes[i]);
	}
	return btoa(binary);
}

export async function onRequestPost(context) {
	const { request, env } = context;

	// CORS headers
	const headers = {
		'Content-Type': 'application/json',
		'Access-Control-Allow-Origin': 'https://virtual-flight.com',
	};

	try {
		const formData = await request.formData();

		const name = formData.get('name') || '';
		const email = formData.get('email') || '';
		const userType = formData.get('user_type') || '';
		const topic = formData.get('topic') || '';
		const updateUrl = formData.get('update_url') || '';
		const message = formData.get('message') || '';
		const honey = formData.get('_honey') || '';
		const attachment = formData.get('attachment');

		// Honeypot anti-spam check
		if (honey) {
			return new Response(JSON.stringify({ success: true }), { headers });
		}

		// Basic validation
		if (!name || !email || !topic || !message) {
			return new Response(
				JSON.stringify({ success: false, message: 'Missing required fields' }),
				{ status: 400, headers }
			);
		}

		// Build email HTML
		const emailHtml = `
			<h2>[Virtual Flight] ${topic} — ${name}</h2>
			<table style="border-collapse:collapse;width:100%;max-width:600px">
				<tr><td style="padding:8px;border:1px solid #ddd;font-weight:bold">Name</td><td style="padding:8px;border:1px solid #ddd">${escapeHtml(name)}</td></tr>
				<tr><td style="padding:8px;border:1px solid #ddd;font-weight:bold">Email</td><td style="padding:8px;border:1px solid #ddd"><a href="mailto:${escapeHtml(email)}">${escapeHtml(email)}</a></td></tr>
				<tr><td style="padding:8px;border:1px solid #ddd;font-weight:bold">Type</td><td style="padding:8px;border:1px solid #ddd">${escapeHtml(userType)}</td></tr>
				<tr><td style="padding:8px;border:1px solid #ddd;font-weight:bold">Subject</td><td style="padding:8px;border:1px solid #ddd">${escapeHtml(topic)}</td></tr>
				${updateUrl ? `<tr><td style="padding:8px;border:1px solid #ddd;font-weight:bold">URL</td><td style="padding:8px;border:1px solid #ddd"><a href="${escapeHtml(updateUrl)}">${escapeHtml(updateUrl)}</a></td></tr>` : ''}
				<tr><td style="padding:8px;border:1px solid #ddd;font-weight:bold" colspan="2">Message</td></tr>
				<tr><td style="padding:8px;border:1px solid #ddd" colspan="2"><pre style="white-space:pre-wrap;font-family:inherit">${escapeHtml(message)}</pre></td></tr>
			</table>
		`;

		// Build Resend API payload
		const emailPayload = {
			from: 'Virtual Flight <onboarding@resend.dev>',
			to: ['info@virtual-flight.com'],
			reply_to: email,
			subject: `[Virtual Flight] ${topic} — ${name}`,
			html: emailHtml,
		};

		// Handle file attachment
		if (attachment && attachment.size > 0 && attachment.size <= 5 * 1024 * 1024) {
			const buffer = await attachment.arrayBuffer();
			emailPayload.attachments = [
				{
					filename: attachment.name,
					content: arrayBufferToBase64(buffer),
				},
			];
		}

		// Send via Resend API
		const resendKey = env.RESEND_API_KEY;
		if (!resendKey) {
			console.error('[Contact] RESEND_API_KEY not configured');
			return new Response(
				JSON.stringify({ success: false, message: 'Email service not configured' }),
				{ status: 500, headers }
			);
		}

		const res = await fetch('https://api.resend.com/emails', {
			method: 'POST',
			headers: {
				Authorization: `Bearer ${resendKey}`,
				'Content-Type': 'application/json',
			},
			body: JSON.stringify(emailPayload),
		});

		if (res.ok) {
			const data = await res.json();
			console.log('[Contact] Email sent:', data.id);
			return new Response(JSON.stringify({ success: true }), { headers });
		}

		const errorText = await res.text();
		console.error('[Contact] Resend error:', res.status, errorText);
		return new Response(
			JSON.stringify({ success: false, message: 'Email delivery failed' }),
			{ status: 502, headers }
		);
	} catch (err) {
		console.error('[Contact] Server error:', err.message);
		return new Response(
			JSON.stringify({ success: false, message: 'Server error' }),
			{ status: 500, headers }
		);
	}
}

// Handle CORS preflight
export async function onRequestOptions() {
	return new Response(null, {
		headers: {
			'Access-Control-Allow-Origin': 'https://virtual-flight.com',
			'Access-Control-Allow-Methods': 'POST, OPTIONS',
			'Access-Control-Allow-Headers': 'Content-Type',
		},
	});
}

function escapeHtml(str) {
	return String(str)
		.replace(/&/g, '&amp;')
		.replace(/</g, '&lt;')
		.replace(/>/g, '&gt;')
		.replace(/"/g, '&quot;');
}
