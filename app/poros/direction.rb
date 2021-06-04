class Direction
  attr_reader :name,
              :travel_time,
              :directions

  def initialize(data)
    @distance = data[:distance]
    @travel_time = data[:formattedTime]
    @directions = data[:legs].first[:maneuvers].map do |direction|
      direction[:narrative]
    end
    require "pry"; binding.pry
  end
end
