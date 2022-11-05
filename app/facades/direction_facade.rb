class DirectionFacade
  def self.get_travel_info(starting_location, ending_location)
    travel_info = DirectionService.get_travel_info(starting_location, ending_location)
    require 'pry' ; binding.pry
    TravelInfo.new(travel_info[:route])
  end
end