express = require 'express'
path    = require 'path'
fs      = require 'fs'
coffee  = require 'express-coffee-script'

app  = express()
port = process.env.PORT or 8080

# static files
app.use '/bower_components', express.static(__dirname + '/bower_components')
app.use '/dist', express.static(__dirname + '/dist')

# coffee-script
app.use coffee(
  src: path.join __dirname, '/src'
  dest: path.join __dirname, '/dist'
  prefix: '/js' # removes the default '/js' from filepath
  compilerOpts: bare: true
)

# jade views
app.set 'views', './views'
app.set 'view engine', 'jade'

# routes
app.get '/', (req, res) ->
    res.render 'index'
    return

# start the server
app.listen port
console.log 'server running on port ' + port