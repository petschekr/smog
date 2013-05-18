define ["smog/server", "smog/notify", "templates/connect"], (server, notify, templ) ->
  show: ->
    info = {}
    info.connectionURI = if localStorage.connectionURI? then localStorage.connectionURI else "mongodb://localhost:27017/test?auto_reconnect"
    $('#content').html templ info
    
    $('#connect-modal').modal backdrop: false
    $('#connect-button').click ->
      host = $('#host').val()

      localStorage.connectionURI = host

      server.connect host, (err, okay) ->
        if err?
          err = "Server unavailable" if typeof err is 'object' and Object.keys(err).length is 0
          notify.error "Connection error: #{err.err or err}"
        else
          $('#connect-modal').modal 'hide'
          window.location.hash = '#/home'