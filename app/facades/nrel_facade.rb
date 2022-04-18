class NrelFacade

  def self.nearest_station(address)
    json = NrelService.nearest_station(address)

    station = Station.new(json[:fuel_stations][0])
  end
end
