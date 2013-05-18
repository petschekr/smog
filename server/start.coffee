express = require "express"
http = require "http"
join = require("path").join

class parseArgs
	constructor: ->
		@args = process.argv
		@args.shift()
		@args.shift()
		@argsToParse = []
		return
	addCharacterSwitch: (name, boolean = false) ->
		parseObj =
			"Type": "single"
			"Name": name
			"Boolean": boolean
		@argsToParse.push parseObj
		parseObj
	addMultiCharacterSwitch: (name, boolean = false) ->
		parseObj =
			"Type": "multi"
			"Name": name
			"Boolean": boolean
		@argsToParse.push parseObj
		parseObj
	parse: ->
		lookoutFor = []
		for arg in @argsToParse
			if arg.Type is "single" then lookoutFor.push "-#{arg.Name}"
			if arg.Type is "multi" then lookoutFor.push "--#{arg.Name}"

if process.argv[2] is "-p" then port = parseInt(process.argv[3]) else port = process.env.PORT or 8080
if port is NaN
  console.error "Listening port was invalid"
  port = process.env.PORT or 8080

# Web server
app = express()
app.use express.static join __dirname, "./public/"
server = http.createServer(app).listen port

console.log "smog2 started on #{port}"