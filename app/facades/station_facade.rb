class StationFacade 

  def self.get_nearest_station(address)
    json = StationService.get_nearest_station(address)
    json[:fuel_stations].map do |fuel_station_data|
      Station.new(fuel_station_data)
    end
  end

end