class Route
  attr_reader :distance, :travel_time, :directions
  def initialize(data)
    @distance = data[:distance]
    @travel_time = data[:formattedTime]
    @maneuvers = data[:legs][0][:maneuvers]
    @directions = get_directions
  end

  def get_directions
    @maneuvers.map do |maneuv|
      maneuv[:narrative]
    end
  end
end