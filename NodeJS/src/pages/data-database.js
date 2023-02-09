import { useState, useEffect } from 'react';
import { Grid } from '@mui/material';
import Card from '../components/Card';
import { getTitleBodyPairs } from '../util/parse_jupyter_html';
import { CircularProgress } from '@mui/material';

export default () => {
    const [loading, setLoading] = useState(true);
    const [data, setData] = useState([]);

    //Set the data async
    useEffect(() =>
        getTitleBodyPairs("Surfacewater_XGB.html")
            .then(res => {
                setData(res)
                setLoading(false);
            })
        , [])

    return (
        <Grid container
            spacing={2}
            justifyContent="center"
        >
            {
                loading
                    ? <Grid item style={{ margin: "auto" }}>
                        <CircularProgress />
                    </Grid>
                    :
                    // Design your page from here
                    <>
                        {data.map(p => (
                            <Grid item style={{ width: "100%" }}>
                                <Card align="left" heading={p.title} >
                                    {p.body}
                                </Card>
                            </Grid>
                        ))}
                    </>
            }
        </Grid>
    )
}