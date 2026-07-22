import { defineConfig } from "astro/config";
import { satteri } from "@astrojs/markdown-satteri";
import starlight from "@astrojs/starlight";
import mermaid from "astro-mermaid";
import starlightLinksValidator from "starlight-links-validator";

const title =
	"Unité préparatoire d'informatique pour ingénierie des médias à la HEIG-VD";
const description = `${title}.`;
const protocol = "https";
const site = "heig-vd-upinfo-course.github.io";
const base = "/heig-vd-upinfo-course";

// https://myogimage.com/
const ogUrl = new URL(`${base}/og.webp?v=1`, `${protocol}://${site}`).href;
const ogImageAlt = `${title} - ${description}`;

// https://astro.build/config
export default defineConfig({
	site: `${protocol}://${site}`,
	base,
	// https://docs.astro.build/en/reference/configuration-reference/#markdownprocessor
	markdown: {
		processor: satteri({
			// https://satteri.bruits.org/docs/features/
			features: {
				gfm: {
					footnotes: {
						label: "Notes de bas de page",
						backLabel: (n, k) => (k === 1 ? `Retour ${n}` : `Retour ${n}-${k}`),
						backContent: (_n, k) => (k === 1 ? "↩" : `↩${k}`),
					},
				},
				smartPunctuation: false,
			},
		}),
	},
	integrations: [
		mermaid({
			mermaidConfig: {
				look: "classic",
				startOnLoad: false,
				logLevel: "error",
				securityLevel: "strict",
			},
		}),
		starlight({
			title,
			description,
			logo: {
				src: "./src/assets/logo.svg",
				replacesTitle: true,
			},
			social: [
				{
					icon: "github",
					label: "GitHub",
					href: "https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course",
				},
			],
			head: [
				{
					tag: "script",
					attrs: {
						src: "https://cloud.umami.is/script.js",
						"data-website-id": "20c47a80-8802-463c-99a5-fe881bde77b9",
						"data-domains": site,
						defer: true,
					},
				},
				{
					tag: "script",
					attrs: {
						src: "https://cdn.jsdelivr.net/npm/@tsparticles/confetti@4/tsparticles.confetti.bundle.min.js",
						defer: true,
					},
				},
				{
					tag: "meta",
					attrs: { property: "og:image", content: ogUrl },
				},
				{
					tag: "meta",
					attrs: { property: "og:image:alt", content: ogImageAlt },
				},
			],
			defaultLocale: "root",
			locales: {
				root: {
					label: "Français",
					lang: "fr",
				},
			},
			credits: true,
			editLink: {
				baseUrl:
					"https://github.com/heig-vd-upinfo-course/heig-vd-upinfo-course/edit/main/",
			},
			lastUpdated: true,
			tableOfContents: {
				minHeadingLevel: 2,
				maxHeadingLevel: 3,
			},
			components: {
				Footer: "./src/components/Footer.astro",
			},
			routeMiddleware: ["./src/route-middleware.ts"],
			plugins: [
				// https://starlight-links-validator.vercel.app/
				starlightLinksValidator({
					errorOnLocalLinks: false,
				}),
			],
			sidebar: [
				{
					label: "Introduction au cours",
					items: [{ autogenerate: { directory: "01-introduction-au-cours" } }],
				},
				{
					label: "Premiers pas à la HEIG-VD",
					collapsed: false,
					items: [
						{ autogenerate: { directory: "02-premiers-pas-a-la-heig-vd" } },
					],
				},
				{
					label: "Composants matériels et logiciels d'un ordinateur",
					collapsed: false,
					items: [
						{
							autogenerate: {
								directory:
									"03-composants-materiels-et-logiciels-dun-ordinateur",
							},
						},
					],
				},
				{
					label: "Communications réseaux et Internet",
					collapsed: false,
					items: [
						{
							autogenerate: {
								directory: "04-communications-reseaux-et-internet",
							},
						},
					],
				},
				{
					label: "Configurer son système d'exploitation et ses applications",
					collapsed: false,
					items: [
						{
							autogenerate: {
								directory:
									"05-configurer-son-systeme-dexploitation-et-ses-applications",
							},
						},
					],
				},
				{
					label: "Sauvegarder et restaurer ses données",
					collapsed: false,
					items: [
						{
							autogenerate: {
								directory: "06-sauvegarder-et-restaurer-ses-donnees",
							},
						},
					],
				},
				{
					label: "Prendre des notes Markdown",
					collapsed: false,
					items: [
						{
							autogenerate: {
								directory: "07-prendre-des-notes-markdown",
							},
						},
					],
				},
				{
					label: "Travailler avec le terminal",
					collapsed: false,
					items: [
						{
							autogenerate: {
								directory: "08-travailler-avec-le-terminal",
							},
						},
					],
				},
				{
					label: "Conclusion au cours",
					items: [{ autogenerate: { directory: "09-conclusion-au-cours" } }],
				},
				{
					label: "Autre",
					items: [{ autogenerate: { directory: "10-autre" } }],
				},
			],
		}),
	],
	trailingSlash: "always",
});
