require 'faraday'
require 'json'

class FuelService

  def self.get_station_data(location)
    response = self.conn.get('/api/alt-fuel-stations/v1/nearest.json', params = { location: location })
    parse(response)
  end

  private

  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
      faraday.params['api_key'] = ENV['fuel_api_key']
    end
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end