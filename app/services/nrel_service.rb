class NrelService 
  def self.conn 
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday| 
      faraday.headers["X-API-KEY"] = ENV['nrel_api_key']
    end
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end

  def self.nearest_fuel_station_endpoint(location)
    response = conn.get('/api/alt-fuel-stations/v1/nearest',
      format: 'json',
      radius: 0.1,
      fuel_type: 'ELEC',
      location: location
    )
    parse(response)
  end
end