const express = require('express');
const app = express();
const port = 3001;

const horses = [
  { id: 1, name: 'Thunder', breed: 'Arabian' },
  { id: 2, name: 'Lightning', breed: 'Thoroughbred' },
  { id: 3, name: 'Blaze', breed: 'Mustang' }
];

app.get('/api/horses', (req, res) => {
  res.json(horses);
});

app.get('/', (req, res) => {
    res.send("Welcome to Horse API")
  });

app.listen(port, () => {
  console.log(`Horse API listening on port ${port}`);
});
