class MapFacade
  def self.directions_to_station(from, to)
    json = MapService.get_directions(from, to)
    Map.new(json)
  end
end
