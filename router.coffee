thingController = require './app/thing/thing-controller'

class Router

  route: (app) ->
    app.get  '/',          thingController.index
    app.post '/set-thing', thingController.setThing
    app.get  '/get-thing', thingController.getThing

module.exports = new Router()