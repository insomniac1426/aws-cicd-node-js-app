const http = require('http');
const fs = require('fs');

//create a server object:
http.createServer(function (req, res) {
const htmlFile = fs.readFileSync('./index.html');
    res.writeHead(200, {
        'Content-Type': 'text/html'
        })
    res.write(htmlFile); //write a response to the client
    res.end(); //end the response
}).listen(8080); //the server object listens on port 8080
