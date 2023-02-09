import { useState } from 'react';
import { createRoot } from "react-dom/client"
import { usePageContext } from '../PageContext';
import { Grid } from '@mui/material';

//Add pages from the Navigation bar here
import * as data_database from './data-database';
import * as data_storage from './data-database';
const pages = { data_database, data_storage };

export default () => {
  const [state, dispatch] = usePageContext();
  const { selectedNavigation, selectedSubnavigation } = state;
  const pageCallback = pages[selectedNavigation + "_" + selectedSubnavigation]?.default;

  //Display page based on selected navigation
  return (
    <Grid container direction="column"
      sx={{ p: 3, minHeight: "100vh"}}
      spacing={2}
      justifyContent="center"
    >
      <Grid item style={{ maxWidth: "100%" }}>
        {typeof pageCallback === "function" ? pageCallback() : null}
      </Grid>
    </Grid>
  )

}