class NrelFacade
  class << self
    def closest_station(address)
      #binding.pry
      json = NrelService.nearest(address)
      station = Station.new(json[:fuel_stations][0])
    end
  end
end
