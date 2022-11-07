class NrelFacade < NrelService 
  def self.nearest_fuel_station(location)
    test = nearest_fuel_station_endpoint(location)[:fuel_stations].first
  end
end