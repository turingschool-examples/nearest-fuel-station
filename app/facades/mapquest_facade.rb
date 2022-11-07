class MapquestFacade < MapquestService 
  def self.directions(from, to)
    MapquestPoro.new(directions_endpoint(from, to)[:route])
  end
end