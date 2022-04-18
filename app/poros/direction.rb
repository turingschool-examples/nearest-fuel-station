class Direction
  attr_reader :instructions,
              :travel_time

  def initialize(direction_info)
    @travel_time = direction_info[:formattedTime]
    @instructions = direction_info[:legs][0][:maneuvers].map {|narrative| narrative[:narrative]}
  end
end
