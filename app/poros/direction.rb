class Direction
  attr_reader :travel_distance,
              :directions_list

    def initialize(data)
      @directions_list = data[:maneuvers].map do |direction_instruction|
        direction_instruction[:narrative]
      end
    end
end