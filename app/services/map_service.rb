require 'faraday'
require 'json'

class MapService
  def self.get_directions(from, to)
    response = self.conn.get('/directions/v2/route', params = { from: from, to: to })
    parse(response)
  end

  private

  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com') do |faraday|
      faraday.params['key'] = ENV['map_api_key']
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end