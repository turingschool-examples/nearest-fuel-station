class NrelService
  def self.conn
    url = "https://developer.nrel.gov"
    Faraday.new(url: url)
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_station_data(params)
    response = conn.get('/api/alt-fuel-stations/v1/nearest.json') do |f|
      f.params[:api_key] = ENV['nrel_api_key']
      f.params[:location] = params[:location]
    end
    NrelService.get_json(response)
  end
end