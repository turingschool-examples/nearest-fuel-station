class DirectionsService
  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com") do |faraday|
      faraday.params['key'] = ENV['mapquest_api_key']
    end
  end

  def self.call_directions(starting_address, fuel_station_address)
    response = conn.get("/directions/v2/route?from=#{starting_address}&to=#{fuel_station_address}")

    JSON.parse(response.body, symbolize_names: true)
  end
end