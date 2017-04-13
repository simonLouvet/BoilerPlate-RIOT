"use strict";
var express = require('express')
var app = express();
var server = require('http').Server(app);
var env = process.env;

server.listen(env.NODE_PORT || 3000, env.NODE_IP || 'localhost', function() {
  console.log('Listening on port ');
  console.log(this.address().port);
})

app.use(express.static('public'));
app.use(express.static('node_modules'));
