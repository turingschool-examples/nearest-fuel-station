class Map 
  attr_reader :distance,
              :time, 
              :instructions

  def initialize(attributes)
    @distance     = attributes[:route][:distance]
    @time         = attributes[:route][:formattedTime]
    @legs         = attributes[:route][:legs]
    @instructions = full_directions
  end

  def full_directions 
    @legs.map do |l|
      l[:maneuvers].map do |m|
        m[:narrative]
      end 
    end
  end
end