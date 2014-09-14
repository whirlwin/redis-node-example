debug  = require('debug')('redis-node-example')
config = require '../config'
router = require '../router'

app = config.configure()
router.route app

server = app.listen app.get('port'), ->
  debug 'Express server listening on port ' + server.address().port
