class SearchFacade
  def self.find_station(query)
    fuel_station = FuelStationService.search(query)
    FuelStation.new(fuel_station[:fuel_stations].first)
  end

  def self.get_directions(start, end)
    directions = DirectionsService.search(start, end)
    Directions.new(directions)
  end
end
