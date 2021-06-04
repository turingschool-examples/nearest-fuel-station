class DirectionFacade
  def self.navigate(start, finish)
    DirectionService.navigate(start, finish)
  end

  def self.direction_details(start, finish)
    data = navigate(start, finish)
    Direction.new(data)
  end
end
