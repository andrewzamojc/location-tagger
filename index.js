var express    = require('express');

var app    = express();
var port   = process.env.PORT || 8080;

app.get('/', function(req, res) {
    res.json({ message: 'Welcome to Location Tagger' });
});

app.listen(port);
console.log('server running on port ' + port);
