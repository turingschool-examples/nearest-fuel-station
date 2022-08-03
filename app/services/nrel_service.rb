class NrelService
  def self.conn
    conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_nearest_station(location)
    response = conn.get("nearest.json?api_key=#{ENV['nrel_api_key']}&location=#{location}&fuel_type=ELEC")
    data = get_json(response)
    data[:fuel_stations]
  end
end
