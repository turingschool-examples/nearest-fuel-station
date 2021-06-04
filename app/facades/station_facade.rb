class StationFacade
  def self.find_station(location)
    StationService.find_station(location)
  end
end
