class LocationFacade
  def self.get_location(location, station)
    station_address = station.map do |s|
      s.address
    end
    to_address = station_address.join(', ')
    location = LocationService.call_for_location(location, to_address)
    location.map do |data|
      Direction.new(data.second)
    end
  end
end
