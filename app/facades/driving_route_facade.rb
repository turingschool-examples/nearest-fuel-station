class DrivingRouteFacade
  class << self
    def best_route(starting_address, station_address)
      route = DrivingRouteService.to_station(starting_address, station_address)
      # binding.pry
      # DrivingRoute.new(route)
    end
  end
end