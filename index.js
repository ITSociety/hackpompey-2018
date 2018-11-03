const express = require('express');
const http = require('http');
const logger = require('morgan')('dev');
const socket = require('socket.io');
const path = require('path');
const exphbs  = require('express-handlebars');

const router = require('./router');

const sockLog = (...args) => console.log(`>socket ${new Date()}`, ...args)


const app = express();
const server = http.createServer(app);
const io = socket(server);

io.on('connection', sock => {
  sockLog('client connected');
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
