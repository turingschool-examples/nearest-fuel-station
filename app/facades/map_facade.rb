class MapFacade
  def self.find_directions(from, to)
    data = MapService.get_directions(from, to)
    map_data = data[:route]
    Map.new(map_data)
  end
end