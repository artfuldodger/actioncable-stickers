App.sticker = App.cable.subscriptions.create "StickerChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('body').append(data.sticker)

  stick: (x, y) ->
    @perform 'stick', x: x, y: y
