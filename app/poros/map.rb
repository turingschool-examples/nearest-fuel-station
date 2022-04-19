class Map
  attr_reader :directions, :distance, :travel_time

  def initialize(data)
    @distance = data[:distance]
    @directions = data[:narrative]
    @travel_time = data[:formattedTime]
  end

end
