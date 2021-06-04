class StationFacade
  def self.find_nearest(location)
    json = StationService.get_nearest_station(location).first
    Station.new(json)
  end
end
