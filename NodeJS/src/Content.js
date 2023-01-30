import { AppBar, Toolbar, Typography, Paper, Grid } from '@mui/material';
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

  return (
    <Grid container direction="column"
      sx={{ py: 3, overflow: 'hidden' }}
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
