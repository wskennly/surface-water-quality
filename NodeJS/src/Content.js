import { useEffect } from 'react';
import AppBar from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import Paper from '@mui/material/Paper';
import Grid from '@mui/material/Grid';
import Plot from "react-plotly.js"
import { usePageContext } from './PageContext';

export const Card = ({ heading, children }) => (
  <Paper>

    <AppBar
      position="static"
      color="default"
      elevation={0}
      sx={{ borderBottom: '1px solid rgba(0, 0, 0, 0.12)' }}
    >
      <Toolbar>
        <Grid container spacing={2}>
          <Grid item xs>
            <Typography color="text.secondary" align="center">
              {heading}
            </Typography>
          </Grid>
        </Grid>
      </Toolbar>
    </AppBar>

    {(Array.isArray(children) ? children : [children]).map(
      child =>
        <Grid container justifyContent="center">
          {child}
        </Grid>
    )}

  </Paper>
)

export default function Content() {
  const [state, dispatch] = usePageContext();

  useEffect(
    //Mount
    () => {
      dispatch({
        type: "addCard", value: [

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
      return () => dispatch({ type: "clearCards" })
    }, []);

  return (
    <Grid container direction="column"
      sx={{ height: "100vh", overflow: 'hidden' }}
      spacing={2}
      alignContent="center"
    >
      {state.visibleCards.map(card => (
        <Grid item>
          {card}
        </Grid>
      ))}
    </Grid>
  )
}
