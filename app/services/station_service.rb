class StationService
  def self.find_station(current_address)
    response = conn.get('/api/alt-fuel-stations/v1/nearest') do |faraday|

      faraday.params[:location] = current_address
      faraday.params[:fuel_type_code] = 'ELEC'
    end
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
      faraday.params[:api_key] = ENV['nrel_api_key']
      faraday.params[:format] = "json"
    end
  end
end