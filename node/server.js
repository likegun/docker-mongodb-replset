'use strict';
const http = require('http');

var server = http.createServer(function(req, res) {
  res.end('Over!');
});

server.listen(3000);  
