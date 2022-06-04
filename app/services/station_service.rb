class StationService

  def self.get_nearest_station(location)
    conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json")
    response = conn.get("?limit=1&location=#{location}&api_key=#{ENV['nrel_api_key']}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
