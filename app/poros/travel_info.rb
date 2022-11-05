class TravelInfo
  attr_reader :distance,
              :travel_time,
              :data

  def initialize(data)
    @distance = data[:distance]
    @travel_time = data[:formattedTime]
    @data = data
  end

  def directions
    directions = @data[:legs].first[:maneuvers].map do |direction|
      direction[:narrative]
    end
    directions.join(', ').delete('.')
  end
end