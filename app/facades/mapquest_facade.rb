class MapquestFacade
  def self.create_directions(location)
    json = MapquestService.get_directions(location)
    data = json[:legs].map { |leg| leg[:maneuvers] }.flatten
    Directions.new(data)
  end
end
