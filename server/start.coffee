http = require "http"
fs = require "fs"
{join} = require "path"

{MongoClient} = require "mongodb"
express = require "express"
WSServer = require("ws").Server

# TODO: add switch parser
if process.argv[2] is "-p" then port = parseInt(process.argv[3]) else port = process.env.PORT or 8080
if port is NaN
  console.error "Listening port was invalid"
  port = process.env.PORT or 8080

# HTTP server
app = express()
app.use express.static join __dirname, "./public/"

server = http.createServer(app).listen port
# WebSocket server
WSPort = 8079
wss = new WSServer port: WSPort
wss.on "connection", (ws) ->
	ws.on "open", ->
		# The WS connection has opened
		
	ws.on "message", (message) ->
		try
			message = JSON.parse message
		catch e
			# Terminate the connection if invalid JSON is passed
			ws.terminate()
			return
	ws.on "close", ->
		# WS connection was closed

console.log "smog2 started on #{port}"