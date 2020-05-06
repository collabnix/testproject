var http = require('http');
var fs = require('fs');

var html = fs.readFileSync('index.html');

http.createServer(function (req, res) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.end(html);
}).listen(3000,'0.0.0.0');
