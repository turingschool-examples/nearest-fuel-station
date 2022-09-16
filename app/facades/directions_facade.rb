class DirectionsFacade 
  def self.get_directions(starting_address, station_address)
    directions_data = DirectionsService.call_directions(starting_address, station_address)

    Directions.new(directions_data)
  end
end