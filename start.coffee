express = require "express"
http = require "http"
join = require("path").join
Vein = require "vein"

port = process.env.PORT or 8080

# Web server
app = express()
app.use express.staticCache()
app.use express.static join __dirname, "./public/"
server = http.createServer(app).listen port

# Vein
vein = Vein.createServer server
vein.addFolder join __dirname, "./lib/services/"

console.log "Server started on #{port}"