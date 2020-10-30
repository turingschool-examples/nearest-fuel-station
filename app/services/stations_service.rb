class StationsService
  def self.nearest_station(location)
    response = conn.get("nearest.json?") do |f|
      f.params[:api_key] = ENV['STATIONS_API_KEY']
      f.params[:location] = location
      f.params[:fuel_type] = 'ELEC'
      f.params[:limit] = 1
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/")
  end
end