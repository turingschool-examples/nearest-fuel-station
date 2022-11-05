class TravelInfo
  attr_reader :distance,
              :travel_time,
              :data

  def initialize(data)
    @distance = data[:distance]
    @travel_time = data[:formattedTime]
    @data = data
  end

  def travel_time
    time = @travel_time.split(':')
    time[0] + " hours " + time[1] + " minutes " + time[2] + " seconds"
  end

  def distance
    "#{@distance.round(1)} " + "miles"
  end

  def directions
    directions = @data[:legs].first[:maneuvers].map do |direction|
      direction[:narrative]
    end
    directions.join(', ').delete('.')
  end
end