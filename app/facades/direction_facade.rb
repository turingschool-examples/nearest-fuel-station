class DirectionFacade
  def self.get_travel_info(starting_location, ending_location)
    travel_info = DirectionService.get_travel_info(starting_location, ending_location)
    TravelInfo.new(travel_info[:route])
  end
end