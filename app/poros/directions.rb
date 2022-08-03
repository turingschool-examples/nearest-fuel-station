class Directions
  attr_reader :travel_time,
              :instructions

  def initialize(data)
    @travel_time = data.first[:formattedTime]
    @instructions = data.map { |maneuvers| maneuvers[:narrative] }
  end
end
