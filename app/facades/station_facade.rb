class StationFacade
  class << self
    def find_station(location)
      station = StationService.nearest_station(location)

      Station.new(station[:fuel_stations].first)
    end
  end
end