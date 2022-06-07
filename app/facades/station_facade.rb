class StationFacade
  def self.get_nearest_station(search)
    station = StationService.find_station(search)
    Station.new(station[:fuel_stations][0])
  end
end