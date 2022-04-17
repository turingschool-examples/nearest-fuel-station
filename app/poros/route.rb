class Route 
  attr_reader :distance, :travel_time, :directions

  def initialize(attributes)
    @distance = attributes[:distance]
    @travel_time = attributes[:formattedTime]
    @maneuvers = attributes[:legs][0][:maneuvers]
    @directions = get_directions
  end

  def get_directions 
    directions = @maneuvers.map do |direction|
      direction[:narrative]
    end
  end
end