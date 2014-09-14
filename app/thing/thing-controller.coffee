redisClient = require './redis-client'

class ThingController

  index: (req, res) ->
    res.render 'thing/index'

  setThing: (req, res) ->
    redisClient.set req.body.thingKey, req.body.thingValue
    res.send 200

  getThing: (req, res) ->
    redisClient.get req.query.thingKey, (err, thingValue) ->
      res.send thingValue

module.exports = new ThingController()