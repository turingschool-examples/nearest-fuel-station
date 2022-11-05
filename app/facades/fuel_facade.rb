class FuelFacade
  def self.get_nearest_station(location)
    station = FuelService.get_nearest_station(location)
    FuelStation.new(station[:fuel_stations].first)
  end
end