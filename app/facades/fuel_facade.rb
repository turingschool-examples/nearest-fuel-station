class FuelFacade
  def self.get_nearest_station(location)
    data = FuelService.get_station_data(location)
    station_data = data[:fuel_stations][0]
    FuelStation.new(station_data)
  end
end