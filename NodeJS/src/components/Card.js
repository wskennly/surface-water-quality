import { AppBar, Paper, Grid } from '@mui/material';

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

export default Card;