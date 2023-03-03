class StationService 
  def self.get_stations(location)
    conn = Faraday.new("https://developer.nrel.gov/")
    response = conn.get("/api/alt-fuel-stations/v1/nearest?format=json&api_key=#{ENV['NREL_key']}&location=#{location}")
    parsed = JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end
end