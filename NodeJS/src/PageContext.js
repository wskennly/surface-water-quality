
import { createContext, useContext, useReducer } from "react";

export const INIT_STATE = {
    heading: "Surface Water Quality",
    subheadding: "test",
    selectedNavigation: 0,
    selectedSubnavigation: 0,
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
        case "addCard":
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

    return (
        <PageContext.Provider
            value={[pageState, pageDispatch]}
        >
            {children}
        </PageContext.Provider>
    )

}