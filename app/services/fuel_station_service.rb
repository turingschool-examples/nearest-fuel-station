class FuelStationService
  def self.conn
    Faraday.new(url: "https://developer.nrel.gov") do |faraday|
      faraday.params['api_key'] = ENV['nrel_api_key']
    end
  end

  def self.nearest_station(address)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{address}&fuel_type=ELEC&limit=1")

    JSON.parse(response.body, symbolize_names: true)
  end
end