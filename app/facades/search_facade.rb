class SearchFacade
  def self.closest_station(location)
    data = SearchService.find_closest_station(location)

    data[:fuel_stations].map do |fuel_station|
      Station.new(fuel_station)
    end
  end
end