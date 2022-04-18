class Route
  attr_reader :distance, :travel_time, :directions

  def initialize(data)
    @distance    = data[:distance]
    @travel_time = data[:formattedTime]
    @maneuvers   = data[:legs][0][:maneuvers]
    @directions  = directions_crunch
  end

  def directions_crunch
    directions = @maneuvers.map do |direction|
      direction[:narrative]
    end
  end
end
