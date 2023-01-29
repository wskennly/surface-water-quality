import * as React from 'react';
import Divider from '@mui/material/Divider';
import Drawer from '@mui/material/Drawer';
import List from '@mui/material/List';
import Box from '@mui/material/Box';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import HomeIcon from '@mui/icons-material/Home';
import DnsRoundedIcon from '@mui/icons-material/DnsRounded';
import PermMediaOutlinedIcon from '@mui/icons-material/PhotoSizeSelectActual';
import TimerIcon from '@mui/icons-material/Timer';
import SettingsIcon from '@mui/icons-material/Settings';
import { usePageContext } from './PageContext';

const categories = [
  {
    id: 'Data',
    children: [
      { id: 'Database', icon: <DnsRoundedIcon /> },
      { id: 'Storage', icon: <PermMediaOutlinedIcon /> },
    ],
  },
  {
    id: 'Model',
    children: [
      { id: 'Performance', icon: <TimerIcon /> },
    ],
  },
  {
    id: 'Results',
    children: [
      { id: 'Tests', icon: <SettingsIcon /> },
      { id: 'Error', icon: <TimerIcon /> },
    ],
  },
];

const item = {
  py: '2px',
  px: 3,
  color: 'rgba(255, 255, 255, 0.7)',
  '&:hover, &:focus': {
    bgcolor: 'rgba(255, 255, 255, 0.08)',
  },
};

const itemCategory = {
  boxShadow: '0 -1px 0 rgb(255,255,255,0.1) inset',
  py: 1.5,
  px: 3,
};

export default function Navigator(props) {
  const [state, dispatch] = usePageContext();
  const { ...other } = props;

  const onChildClick = (id, childId) => {
    dispatch({type: "selectedNavigation", value: id});
    dispatch({type: "selectedSubnavigation", value: childId});
  }

  return (
    <Drawer variant="permanent" {...other}>
      <List disablePadding>
        {/* <ListItem sx={{ ...item, ...itemCategory, fontSize: 22, color: '#fff' }}>
          Paperbase
        </ListItem> */}
        <ListItem sx={{ ...item, ...itemCategory }}>
          <ListItemIcon>
            <HomeIcon />
          </ListItemIcon>
          <ListItemText>Project Overview</ListItemText>
        </ListItem>
        {categories.map(({ id, children }) => (
          <Box key={id} sx={{ bgcolor: '#101F33' }}>
            <ListItem sx={{ py: 2, px: 3 }}>
              <ListItemText sx={{ color: '#fff' }}>{id}</ListItemText>
            </ListItem>
            {children.map(({ id: childId, icon }) => (
              <ListItem disablePadding key={childId}>
                <ListItemButton onClick={() => onChildClick(id, childId)} sx={item}>
                  <ListItemIcon>{icon}</ListItemIcon>
                  <ListItemText>{childId}</ListItemText>
                </ListItemButton>
              </ListItem>
            ))}

            <Divider sx={{ mt: 2 }} />
          </Box>
        ))}
      </List>
    </Drawer>
  );
}
