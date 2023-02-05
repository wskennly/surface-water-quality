import { AppBar, Toolbar, Typography, Paper, Grid } from '@mui/material';
import { usePageContext } from './PageContext';

export const Card = ({ heading, align, children }) => (
  <Paper>

    <AppBar
      position="static"
      color="default"
      elevation={0}
      sx={{ borderRadius: 1, borderBottomLeftRadius: 0, borderBottomRightRadius: 0, borderBottom: '1px solid rgba(0, 0, 0, 0.12)', overflowX: "auto" }}
    >
      {/* <Toolbar> */}
        <Grid container>
          <Grid item xs sx={{m : 1}}>
            {/* <Typography color="text.secondary" align={align ?? "center"}> */}
              {heading}
            {/* </Typography> */}
          </Grid>
        </Grid>
      {/* </Toolbar> */}
    </AppBar>

    <Grid container >
      {(Array.isArray(children) ? children : [children]).map(
        child =>
          <Grid item sx={{ m: 1, overflowX: "auto" }}>
            {child}
          </Grid>
      )}
    </Grid>

  </Paper>
)

export default () => {
  const [state, dispatch] = usePageContext();

  return (
    <Grid container direction="column"
      sx={{ p: 3, overflow: 'hidden' }}
      spacing={2}
      justifyContent="center"
    >
      {state.visibleCards.map(card => (
        <Grid item style={{ maxWidth: "100%" }}>
          {card}
        </Grid>
      ))}
    </Grid>
  )
}
