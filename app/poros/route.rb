class Route
  attr_reader :distance, :eta, :parsed_directions

  def initialize(data)
    #binding.pry
    @distance = data[:distance]
    @eta = data[:formattedTime]
    @maneuvers = data[:legs][0][:maneuvers]
    @parsed_directions = parse_directions
  end

  def parse_directions
    route = @maneuvers.map { |direction| direction[:narrative]}
  end
end
