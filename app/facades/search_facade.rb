class SearchFacade
  def self.get_closest_station(location)
    data = SearchService.find_closest_station(location)

    data[:fuel_stations].map do |station_info|
      FuelStation.new(station_info)
    end
  end
end
