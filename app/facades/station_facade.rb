class StationFacade
  def self.find_station(location)
    StationService.find_station(location)
  end

  def self.specific_station(location)
    station_data = find_station(location).first
    Station.new(station_data)
  end
end
