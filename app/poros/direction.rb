class Direction
  attr_reader :distance,
              :travel_time,
              :narrative
  def initialize(direction_data)
    @distance = direction_data[:distance]
    @travel_time = direction_data[:formattedTime]
    @narrative = direction_data[:legs].first[:maneuvers].first[:narrative]
  end
end