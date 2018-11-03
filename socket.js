const socket = require('socket.io');
const server = require('index');

const io = socket(server);

io.on('connection', sock => {
  console.log('oioi');
});