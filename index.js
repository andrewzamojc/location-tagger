var express    = require('express');

var app    = express();
var port   = process.env.PORT || 8080;

// static files
app.use('/bower_components',  express.static(__dirname + '/bower_components'));

// jade views
app.set('views', './views');
app.set('view engine', 'jade');

// routes
app.get('/', function(req, res) {
    res.render('index');
});

// start the server
app.listen(port);
console.log('server running on port ' + port);
