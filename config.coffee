bodyParser   = require 'body-parser'
cookieParser = require 'cookie-parser'
express      = require 'express'
favicon      = require 'serve-favicon'
logger       = require 'morgan'
path         = require 'path'

class Config

  configure: ->
    app = express()
    app.set 'port', 3000
    app.set 'views', path.join(__dirname, 'app')
    app.set 'view engine', 'jade'
    app.use favicon(__dirname + '/public/favicon.ico')
    app.use logger('dev')
    app.use bodyParser.json()
    app.use bodyParser.urlencoded(extended: false)
    app.use cookieParser()
    app.use express.static(path.join(__dirname, 'public'))
    app

module.exports = new Config()
