class Destination
  attr_reader :distance, :travel_time, :directions
  def initialize(data)
    @distance = data[:route][:distance]
    @travel_time = data[:route][:formattedTime]
    @directions = data[:route][:legs][0][:maneuvers][0][:narrative]
  end
end