class FuelService
  def self.conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params['api_key'] = ENV['NREL_api']
    end
  end
  
  def self.get_nearest_station(location)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{location}&limit=1")
    JSON.parse(response.body, symbolize_names: true)
  end
end