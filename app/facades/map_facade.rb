class MapFacade
  def self.get_directions(origin, destination)
    data = MapService.get_directions(origin, destination)
    Map.new(data)
  end
end
