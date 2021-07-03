class StationFacade
  def self.get_stations(location)
    create_stations(StationService.get_station_info(location))
  end

  private

  def self.create_stations(station)
    Station.new(station)
  end
end
