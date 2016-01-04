var express    = require('express');

var app    = express();
var port   = process.env.PORT || 8080;

app.set('views', './views');
app.set('view engine', 'jade');

app.get('/', function(req, res) {
    res.render('index');
});

app.listen(port);
console.log('server running on port ' + port);
