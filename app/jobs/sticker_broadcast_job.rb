class StickerBroadcastJob < ApplicationJob
  queue_as :default

  def perform(sticker)
    ActionCable.server.broadcast 'sticker', sticker: render_sticker(sticker)
  end

  private

  def render_sticker(sticker)
    ApplicationController.render(
      partial: 'stickers/sticker',
      locals: { sticker: sticker }
    )
  end
end
