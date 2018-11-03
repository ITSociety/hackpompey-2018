const express = require('express');

const router = express.Router();

router.get('/', (_, res) => {
  res.render('index', { title: 'home' });
});

router.get('/leaderboard', (_, res) => {
  res.render('leaderboard');
});

module.exports = router;
