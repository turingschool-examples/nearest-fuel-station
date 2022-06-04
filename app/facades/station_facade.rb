class StationFacade
  def self.get_nearest_station(location)
    raw_data = StationService.get_nearest_station(location)
    data = raw_data[:fuel_stations][0]
    Station.new(data)
  end
end
