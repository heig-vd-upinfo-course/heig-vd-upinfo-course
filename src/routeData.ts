import { defineRouteMiddleware } from "@astrojs/starlight/route-data";

export const onRequest = defineRouteMiddleware(async (context, next) => {
	await next();

	const route = context.locals.starlightRoute;

	if (!route?.toc) {
		return;
	}

	if (route.entry.data.progress !== false) {
		route.toc.items.push({
			depth: 2,
			slug: "progress",
			text: "Marquer ce contenu comme terminé",
			children: [],
		});
	}

	if (route.entry.data.feedback !== false) {
		route.toc.items.push({
			depth: 2,
			slug: "feedback",
			text: "Feedback",
			children: [],
		});
	}
});
