class MapQuestFacade < MapQuestService 
  def self.directions(from, to)
    directions_endpoint[:route]
  end
end