class StationService

  def self.find_station(address)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?limit=1&location=#{address}")
    JSON.parse(response.body, symbolize_names:true )
  end

  private
  def self.conn
    Faraday.new(url: "https://developer.nrel.gov") do |f|
      f.params['api_key'] = ENV['nrel_api_key']
    end
  end
end