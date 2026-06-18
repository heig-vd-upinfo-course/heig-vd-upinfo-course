import { defineConfig } from "astro/config";
import starlight from "@astrojs/starlight";

// https://astro.build/config
export default defineConfig({
	site: "https://ludelafo.github.io",
	base: "/test-astro",
	integrations: [
		starlight({
			title: "UPInfoIM",
			locales: {
				root: {
					label: "Français",
					lang: "fr",
				},
			},
			logo: {
				src: "./src/assets/logo.svg",
				replacesTitle: false,
			},
			social: [
				{
					icon: "github",
					label: "GitHub",
					href: "https://github.com/ludelafo/test-astro",
				},
			],
			tableOfContents: {
				minHeadingLevel: 2,
				maxHeadingLevel: 3,
			},
			sidebar: [
				{
					label: "Introduction au cours",
					items: [{ autogenerate: { directory: "01-introduction-au-cours" } }],
				},
				{
					label: "Premiers pas",
					collapsed: true,
					items: [{ autogenerate: { directory: "02-premiers-pas" } }],
				},
				{
					label: "Composants matériel d'un ordinateur",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "03-composants-materiels-dun-ordinateur",
							},
						},
					],
				},
				{
					label: "Composants logiciel d'un ordinateur",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "04-composants-logiciels-dun-ordinateur",
							},
						},
					],
				},
				{
					label: "Composants d'un système d'exploitation",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "05-composants-dun-systeme-dexploitation",
							},
						},
					],
				},
				{
					label: "Configurer son système d'exploitation",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "06-configurer-son-systeme-dexploitation",
							},
						},
					],
				},
				{
					label: "Installer et configurer ses applications",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "07-installer-et-configurer-ses-applications",
							},
						},
					],
				},
				{
					label: "Sauvegarder et restaurer ses données",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "08-sauvegarder-et-restaurer-ses-donnees",
							},
						},
					],
				},
				{
					label: "Prise de notes avec Markdown",
					collapsed: true,
					items: [
						{
							autogenerate: {
								directory: "09-prise-de-notes-avec-markdown",
							},
						},
					],
				},
				{
					label: "Conclusion au cours",
					items: [{ autogenerate: { directory: "10-conclusion-au-cours" } }],
				},
			],
		}),
	],
});
