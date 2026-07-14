import type { StarlightRouteData } from "@astrojs/starlight/route-data";

export function usePageTitleInTOC(starlightRoute: StarlightRouteData) {
	const overviewLink = starlightRoute.toc?.items[0];
	if (overviewLink) {
		overviewLink.text = starlightRoute.entry.data.title;
	}
}
