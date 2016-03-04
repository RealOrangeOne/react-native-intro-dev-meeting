const connect = require('connect');
const serveStatic = require('serve-static');

const SERVE_DIR = __dirname + '/../build';
const PORT = 8070;


connect().use(serveStatic(SERVE_DIR)).listen(PORT, function() {
  console.log('Server running on', PORT, '...');
});
