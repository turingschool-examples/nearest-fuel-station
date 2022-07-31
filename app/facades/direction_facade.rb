class DirectionFacade
  def self.get_directions(from, to)
    json = MapQuestService.get_directions(from, to)
    Direction.new(json[:route])
  end
end