class DirectionFacade 

  def self.get_directions_info(start_address, end_address)
    json = DirectionService.get_directions(start_address, end_address)
    require 'pry' ; binding.pry
    json[:directions].map do |directions_info|
      Directions.new(directions_info)
    end
  end

end