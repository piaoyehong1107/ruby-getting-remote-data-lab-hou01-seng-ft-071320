class GetRequester

  def initialize (url)
    @url=url
  end
  
  def get_response_body
    require 'open-uri'
    require 'net/http'
    url=@url
    uri=URI.parse(url)
    response= Net::HTTP.get_response(uri)
    response.body 
  end
  def parse_json
    require 'json'
    JSON.parse(self.get_response_body)
    end
end
  
  