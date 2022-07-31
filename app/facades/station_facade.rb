class StationFacade 
  def self.get_nearest(location)
    data = StationService.nearest_station(location)
    Station.new(data)
  end
end