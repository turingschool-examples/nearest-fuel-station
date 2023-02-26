class StationsFacade
  def self.nearest_electric_station
    station = StationsService.get_electric_charging_stations
    Station.new(station)
  end
end