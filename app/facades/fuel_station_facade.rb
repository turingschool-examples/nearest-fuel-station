class FuelStationFacade 
  def self.get_closest_station(address)
    station_data = FuelStationService.nearest_station(address)

    FuelStation.new(station_data)
  end
end