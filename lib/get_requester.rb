# Write your code here
require "net/http"
require "open-uri"
require "json"

class GetRequester
  # url =
  #   "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json "
  @@url = ""
  def initialize(url)
    @@url = url
  end
  def get_response_body
    uri = URI.parse(@@url)
    response = Net::HTTP.get_response(uri)
    response.body
  end

  def parse_json
    people = JSON.parse(self.get_response_body)
    people.collect { |person| person }
  end
end
