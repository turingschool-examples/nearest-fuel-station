class Directions
  attr_reader :distance,
              :time,
              :directions

  def initialize(data)
    @distance = data[:route][:distance]
    @time = data[:route][:formattedTime]
    @directions = data[:route][:legs][0][:maneuvers][0][:narrative]
  end
end