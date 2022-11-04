class DirectionsFacade
  def self.get_directions(start_point, dest_lat, dest_long)
    data = DirectionsService.get_directions(start_point, dest_lat, dest_long)

    directions = Directions.new(data)
  end
end