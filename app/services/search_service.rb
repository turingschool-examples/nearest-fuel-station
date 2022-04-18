class SearchService
  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov/') do |faraday|
      faraday.params['api_key'] = ENV['nrel_key']
      faraday.params['fuel_type'] = 'ELEC'
    end
  end
  
  def self.find_closest_station(location)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{location}")
    JSON.parse(response.body, symbolize_names: true)
  end
end