class StationService
  def self.conn
    url = "https://developer.nrel.gov"
    Faraday.new(url: url)
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_station_data(location)
    response = conn.get('/api/alt-fuel-stations/v1/nearest.json') do |f|
      f.params[:api_key] = ENV['nrel_api_key']
      f.params[:location] = location
    end
    StationService.get_json(response)
  end
end