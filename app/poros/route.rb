class Route
  attr_reader :distance, :travel_time, :directions
  def initialize(data)
    @distance = data[:route][:distance]
    @travel_time = data[:route][:formattedTime]
    @maneuvers = data[:route][:legs][0][:maneuvers]
    require "pry"; binding.pry
  end
end