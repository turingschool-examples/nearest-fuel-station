class StationFacade

  def self.nearest_station(address)
    nearest_station = StationService.find_nearest_station(address)
    nearest_station[:fuel_stations].map do |station|
      Station.new(station)
    end
  end

end
