
import { createContext, useContext, useReducer, useEffect } from "react";
import { Card } from "./Content";
import { getTitleBodyPairs } from "./util/parse_jupyter_html";
export const INIT_STATE = {
	heading: "Surface Water Quality",
	subheadding: "Data",
	selectedNavigation: "Data",
	selectedSubnavigation: "Database",
	visibleCards: []
}

export const pageReducer = (state, action) => {
	switch (action.type) {
		case "heading":
			return { ...state, heading: action.value }
		case "subheading":
			return { ...state, subheadding: action.value }
		case "selectedNavigation":
			return { ...state, selectedNavigation: action.value }
		case "selectedSubnavigation":
			return { ...state, selectedSubnavigation: action.value }
		case "addCards":
			Array.isArray(action.value) ?
				action.value.map(elm =>
					state.visibleCards.push(elm)
				) : state.visibleCards.push(action.value);
			return { ...state }
		case "clearCards":
			return { ...state, visibleCards: [] }
		default:
			throw "Illegal Type for Reducer";
	}
}

export const PageContext = createContext(INIT_STATE);
export const usePageContext = () => useContext(PageContext);
export const PageContextProvider = ({ children }) => {
	const [pageState, pageDispatch] = useReducer(pageReducer, INIT_STATE);

	useEffect(
		//Mount
		() => {

			const pairs = getTitleBodyPairs("Surfacewater_XGB.html");

			pairs.then(pairs => {

				pageDispatch({
					type: "addCards", value: [
						...pairs.map(p => {

							return (
								<Card align="left" heading={<div dangerouslySetInnerHTML={{ __html: p.title.outerHTML }} />} >
									<div dangerouslySetInnerHTML={{ __html: p.body?.outerHTML }} />
								</Card>
							)
						}),
					]
				})
			})

			//Unmount
			return () => pageDispatch({ type: "clearCards" })
		}, []);

	return (
		<PageContext.Provider
			value={[pageState, pageDispatch]}
		>
			{children}
		</PageContext.Provider>
	)

}