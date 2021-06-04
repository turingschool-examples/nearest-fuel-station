class StationService < BaseService
  def self.find_station(location)

    response = conn('https://developer.nrel.gov').get("/api/alt-fuel-stations/v1/nearest.json") do |f|
      f.params['location'] = location
      f.params['api_key'] = ENV['station_key']
    end
    json = format_json(response)
    json[:fuel_stations]
  end
end
