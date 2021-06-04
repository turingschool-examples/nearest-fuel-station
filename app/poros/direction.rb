class Direction
  attr_reader :starting_instructions,
              :maneuvers,
              :travel_time
  def initialize(directions)
    @travel_time = directions[:route][:formattedTime]
    @starting_instructions = directions[:route][:legs][0][:destNarrative]
    @maneuvers = get_maneuvers(directions[:route][:legs][0][:maneuvers])
  end

  def get_maneuvers(maneuvers)
    maneuvers.map do |maneuver|
      maneuver[:narrative]
    end
  end
end
