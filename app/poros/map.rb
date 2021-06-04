class Map
  attr_reader :distance, :travel_time, :legs
  def initialize(data)
    @distance = data[:route][:distance]
    @travel_time = data[:route][:formattedTime]
    @legs = data[:route][:legs]
  end

  def directions
    @legs.first[:maneuvers].map do |man|
      man[:narrative]
    end.join
  end
end
