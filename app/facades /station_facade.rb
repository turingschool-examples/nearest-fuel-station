class StationFacade
  def self.closest_station(address)
    station_data = StationService.find_station(address)
    @station = Station.new(station_data[:fuel_stations][0])
  end
end