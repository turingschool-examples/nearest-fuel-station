class Map
  attr_reader :distance, :travel_time, :directions

  def initialize(data)
    @distance = data[:route][:distance]
    @travel_time = data[:route][:time]
    @directions = data[:route][:legs][0][:maneuvers].map {|maneuver| maneuver[:narrative]}
  end
end
