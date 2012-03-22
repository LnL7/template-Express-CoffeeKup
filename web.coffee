express = require 'express'
coffeekup = require 'coffeekup'


app = express.createServer()

app.register '.coffee', coffeekup.adapters.express
app.set 'view engine', 'coffee'
app.set 'view options', layout: true

app.configure ->
	app.use express.bodyParser()
	app.use express.methodOverride()
	app.use express.static __dirname + '/public'


app.get '/favicon.ico', (req, res) ->
	res.send ''

app.get '/', (req, res) ->
	res.render 'app'

app.listen process.env.PORT || 5000
