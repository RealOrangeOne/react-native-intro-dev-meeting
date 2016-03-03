var connect = require('connect');
var serveStatic = require('serve-static');

const serveDir = __dirname + '/../build';


connect().use(serveStatic(serveDir)).listen(8080, function(){
    console.log('Server running on 8080...');
});
