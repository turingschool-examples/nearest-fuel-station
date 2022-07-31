class StationService 

  def self.conn
    Faraday.new("https://developer.nrel.gov")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.nearest_station(location)
    response = conn.get("/api/alt-fuel-stations/v1/nearest") do |f|
      f.params['api_key'] = ENV['afs_key']
      f.params['format'] = 'json'
      f.params['location'] = location 
      end
    get_json(response)
  end
end