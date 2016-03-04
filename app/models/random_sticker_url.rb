class RandomStickerUrl
  ENDPOINT = 'http://api.giphy.com/v1/stickers/random?api_key=dc6zaTOxFJmzC'

  def self.find
    new.find
  end

  def find
    parsed_response['data']['image_url']
  end

  private

  def parsed_response
    @parsed_response ||= JSON.parse(response)
  end

  def response
    Net::HTTP.get(uri)
  end

  def uri
    URI(ENDPOINT)
  end
end
