class StationFacade
  def self.get_station_data(params)
    json = StationService.get_station_data(params)
    Station.new(json[:fuel_stations].second)
  end
end