class NrelService 
  def self.conn 
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday| 
      faraday.headers["X-API-KEY"] = ENV['mapquest_api_key']
    end
  end

  def self.parse 
    JSON.parse(api_data.body, symbolize_names: true)
  end

  def self.nearest_fuel_station_endpoint(location)
    response = conn.get(uri: '/api/alt-fuel-stations/v1/nearest',
    params: {
      format: json,
      radius: 0.1,
      fuel_type: ELEC,
      location: location
    })
  end
end