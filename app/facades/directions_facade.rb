class DirectionsFacade
  def self.get_directions(starting_location, nearest_station)
    create_directions(DirectionsService.get_direction_info(starting_location, nearest_station))
  end

  private

  def self.create_directions(directions)
    Direction.new(directions)
  end
end
