class StationService < BaseService
  def self.find_station(location)

    response = conn('https://developer.nrel.gov').get("/api/alt-fuel-stations/v1/nearest.json") do |f|
      f.params['location'] = location
      f.params['api_key'] = ENV['station_key']
    end
    format_json(response)
  end
end
