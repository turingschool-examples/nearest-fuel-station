class StationFacade
  def self.get_station_data(params)
    json = StationService.get_station_data(params)
    # binding.pry
    Station.new(json[:fuel_stations].first)
  end
end