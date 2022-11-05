class DirectionFacade 

  def self.get_directions_info(start_address, end_address)
    json = DirectionService.get_directions_info(start_address, end_address)
    directions = json[:route][:legs].map do |directions_info|
      Direction.new(directions_info)
    end
    miles_traveled, directions = [json[:route][:distance].round(1), directions]
  end

end