const express = require('express');
const http = require('http');
const logger = require('morgan')('dev');
const socket = require('socket.io');
const path = require('path');
const fs = require('fs');
const exphbs  = require('express-handlebars');
const router = require('./router');

fs.readFileSync(path.join(__dirname, '.env'))
.toString()
.split('\n')
.forEach(line => {
  const [key, ...vals] = line.split('=');
  const val = vals.join('=');
  process.env[key] = val;
  console.log(`set ${key} to ${val}`);
});

const db = require('./db');

const sockLog = (...args) => console.log(`>socket ${new Date()}`, ...args)


const app = express();
const server = http.createServer(app);
const io = socket(server);

io.on('connection', sock => {
  sockLog('client connected');
  db.getUnlocks().then(({rows}) => {
    setTimeout(() => sock.emit('unlocks', JSON.stringify(rows)), 100)
  });
});

const port = process.env.PORT || 8080;

app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');
app.use(logger);
app.use(router);
app.use(express.static(path.join(__dirname, 'public')));

server.listen(port, () => {
  console.log(`process listening on ${port}`);
});
