module Services
  class StickerCreation
    def initialize(x:, y:)
      self.x = x
      self.y = y
    end

    def create
      create_sticker
      broadcast_creation
    end

    private

    attr_accessor :x, :y, :sticker

    def create_sticker
      self.sticker = Sticker.create(
        url: random_sticker_url,
        x:   x,
        y:   y
      )
    end

    def broadcast_creation

    end

    def random_sticker_url
      RandomStickerUrl.find
    end
  end
end
