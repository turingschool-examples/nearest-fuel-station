class SearchFacade
  def self.find_station(query)
    fuel_station = FuelStationService.search(query)
    FuelStation.new(fuel_station[:fuel_stations].first)
  end

  def self.get_directions(origin, destination)
    directions = DirectionsService.search(origin, destination)
    Directions.new(directions)
  end
end
