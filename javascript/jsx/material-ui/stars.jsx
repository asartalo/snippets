/**
 * Create a 5-star rating display like in reviews
 */

import React from 'react';
import Typography from '@material-ui/core/Typography';
import { makeStyles } from '@material-ui/core/styles';
import '@material-ui/icons';

const starContent = `"${'star '.repeat(5)}"`;
const starStyling = () => ({
  '&::before': {
    fontFamily: 'Material Icons',
    fontSize: '1.5rem',
    content: starContent,
  },
});

const useStyles = makeStyles((theme) => ({
  starWrapper: {
    position: 'relative',
    display: 'inline-block',
    color: '#aaa',
    ...starStyling(theme),
  },

  stars: {
    position: 'absolute',
    top: 0,
    left: 0,
    overflow: 'hidden',
    whiteSpace: 'nowrap',
    color: '#ffc315',
    ...starStyling(theme),

  },
}));

const Stars = ({ value }) => {
  const classes = useStyles();
  const width = (value / 5) * 100;
  return (
    <Typography component="span" title={`${value} of 5 stars`} className={classes.starWrapper}>
      <span className={classes.stars} style={{ width: `${width}%` }}></span>
    </Typography>
  );
};

export default Stars;

