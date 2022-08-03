class NrelFacade
  def self.create_fuel_station(location)
    json = NrelService.get_nearest_station(location)
    stations = json.map { |data| FuelStation.new(data) }
    nearest = stations[0]
  end
end
