#!/usr/local/bin/node 
var io = require('socket.io-client');
var socket = io.connect('http://localhost:3000');
socket.emit("updateDb", null);
socket.emit("pushToastMessage", {type: "success", title:"CD Ripper", message:"Ripping Done"})
setTimeout(function() {process.exit()}, 3000)
