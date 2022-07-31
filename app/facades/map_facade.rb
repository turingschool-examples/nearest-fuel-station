class MapFacade
  
  def self.directions(from, to)
    data = MapService.find_directions(from, to)
    Map.new(data)
  end
end