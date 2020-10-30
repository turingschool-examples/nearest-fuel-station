class SearchFacade
  def self.find_station(query)
    fuel_station = FuelStationService.search(query)
    FuelStation.new(fuel_station[:fuel_stations].first)
  end
end
