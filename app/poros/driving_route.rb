class DrivingRoute
  def initialize(route)
    @distance = route[:]
    @travel_time = route[:]
    @directions = route[:]
  end
end