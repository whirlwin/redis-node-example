redis = require 'redis'

class RedisClient

  client = redis.createClient()

  set: (key, value) ->
    client.set key, value, redis.print

  get: (key, cb) ->
    client.get(key, cb)

  client.on 'error', (err) ->
    console.error err

module.exports = new RedisClient()