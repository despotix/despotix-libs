# start Primus
http   = require 'http'
Primus = require 'primus'
#Pool   = require './pool.coffee'

module.exports = (app, spark_callback)->
  #pool = new Pool
  server = http.createServer app
  primus = new Primus server,
    #transformer: 'websockets'
    transformer: 'engine.io'
    parser: 'JSON'

  # got incoming connection
#  primus.on 'connection', (spark) ->
#    pool.subscribe userId : 1, spark
#
#    spark.on 'end', ->
#      pool.subscribe userId : 1, spark
#
#    spark.on 'data', ->
#      console.log 'socket data', arguments

  # run server
  # WARN! but not app.listen 3000
  server : server
  primus : primus
  #pool   : pool