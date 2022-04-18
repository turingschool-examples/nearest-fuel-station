class MapFacade

  def self.directions(from, to)
    data = MapService.find_directions(from, to)
    data[:route][:legs][0][:maneuvers].map do |routes|
      Map.new(routes)
    end
  end

end
