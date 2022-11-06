class Map
  attr_reader :distance, :travel_time, :direction_instructions

  def initialize(map_data)
    @distance = map_data[:distance].round(1)
    if map_data[:realTime] <= 60
      @travel_time = '1 min'
    else
      @travel_time = "#{map_data[:realTime]/60} min #{map_data[:realTime]%60} sec"
    end
    @direction_instructions = map_data[:legs][0][:maneuvers].map { |direction| direction[:narrative] }.join(" ")
  end
end