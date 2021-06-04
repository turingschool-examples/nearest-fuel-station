class Direction
  attr_reader :distance,
              :travel_time

  def initialize(data)
    @distance = data[:route][:distance].round(2)
    @travel_time = data[:route][:time]/60
  end
end
