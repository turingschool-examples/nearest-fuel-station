class DirectionsFacade
  def self.get_station_directions(from, to)
    Direction.new(DirectionsService.find_directions(from, to)[:route])
  end
end
