
import { createContext, useContext, useReducer, useEffect } from "react";
import Plot from "react-plotly.js"
import { Card } from "./Content";

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

    //Should be moved to page context.
    useEffect(
        //Mount
        () => {
            pageDispatch({
                type: "addCards", value: [

                    //Ideally call a function to update the content than write all cards here
                    <Card heading={"Data"}>

                        <Plot
                            data={[{
                                x: [1, 2, 3],
                                y: [2, 6, 3],
                                type: 'scatter',
                                mode: 'lines+markers',
                                marker: { color: 'red' },
                            },
                            { type: 'bar', x: [1, 2, 3], y: [2, 5, 3] },
                            ]}
                            layout={{ width: '100%', height: '100%', title: 'A Fancy Plot' }}
                        />

                    </Card>
                ]
            })

            //Unmount
            // return () => pageDispatch({ type: "clearCards" })
        }, []);

    return (
        <PageContext.Provider
            value={[pageState, pageDispatch]}
        >
            {children}
        </PageContext.Provider>
    )

}