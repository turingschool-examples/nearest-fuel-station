class MapquestFacade < MapquestService 
  def self.directions(from, to)
    test = directions_endpoint(from, to)[:route]
    require 'pry'; binding.pry
  end
end