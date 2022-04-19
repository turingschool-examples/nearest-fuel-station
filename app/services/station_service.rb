class StationService

  def self.conn
    Faraday.new(url: "https://developer.nrel.gov")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_nearest_station(address)
    get_url("/api/alt-fuel-stations/v1/nearest.json?api_key=#{ENV['api_key']}&location=#{address}&limit=1")
  end

end
