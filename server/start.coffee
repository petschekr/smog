express = require "express"
http = require "http"
join = require("path").join
commander = require "commander"

commander.version "2.0.0"
commander.usage "[options]"
commander.option "-p, --port <n>", "The port for smog to listen on", parseInt
commander.parse process.argv

port = commander.port
if isNaN port
  console.error "Listening port was invalid"
  port = process.env.PORT or 8080
if port is undefined
	port = 8080
# Web server
app = express()
app.use express.static join __dirname, "./public/"
server = http.createServer(app).listen port

console.log "smog2 started on #{port}"