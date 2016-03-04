# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class StickerChannel < ApplicationCable::Channel
  def subscribed
    stream_from "sticker"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def stick(coordinates)
    Services::StickerCreation.new(
      x: coordinates['x'],
      y: coordinates['y']
    ).create
  end
end
