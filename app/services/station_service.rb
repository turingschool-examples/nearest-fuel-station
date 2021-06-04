class StationService
  def self.get_nearest_station(location)
    response = conn.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['FUEL_KEY']}&location=#{location}&fuel_type=ELEC&limit=1")
    parse_json(response)[:fuel_stations]
  end

  def self.conn
    Faraday.new(url: "https://developer.nrel.gov")
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
