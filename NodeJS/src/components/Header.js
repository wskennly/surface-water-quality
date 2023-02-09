import * as React from 'react';
import PropTypes from 'prop-types';
import AppBar from '@mui/material/AppBar';
import Grid from '@mui/material/Grid';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import { usePageContext } from '../PageContext';

function Header() {
  const [state, dispatch] = usePageContext();

  return (
    <AppBar
      component="div"
      color="primary"
      position="sticky"
    >
      <Toolbar>
        <Grid container direction="column"
        >
          <Grid item>
            <Typography color="inherit" variant="h3" component="h1">
              {state.heading}
            </Typography>
          </Grid>

          <Grid item>
            <Typography color="inherit" variant="h6" component="h9">
              {state.subheadding}
            </Typography>
          </Grid>
        </Grid>
      </Toolbar>
    </AppBar>
  );
}

Header.propTypes = {
  onDrawerToggle: PropTypes.func.isRequired,
};

export default Header;
