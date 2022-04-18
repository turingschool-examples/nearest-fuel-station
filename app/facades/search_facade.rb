class SearchFacade
  def self.closest_station(location)
    data = SearchService.find_closest_station(location)
    Station.new(data[:fuel_stations][0])
  end
end