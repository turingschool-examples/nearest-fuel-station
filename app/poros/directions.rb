class Directions
  attr_reader :time_to_destination,
              :directions_array
              
  def initialize(data)
    @time_to_destination = format_time_to_destination(data[:route][:formattedTime])
    @directions_array = concatenate_directions(data[:route][:legs])
  end

  def format_time_to_destination(time)
    hours = time[0..1]
    minutes = time[3..4]
    seconds = time[6..7]
    hours + " hours, " + minutes + " minutes, and " + seconds + " seconds."
  end
  
  def concatenate_directions(legs) 
    output = []
    legs[0][:maneuvers].each_with_index do |leg, index|
      step_number = index + 1
      output << "Step #{step_number}: #{leg[:narrative]}"
    end
    return output
  end
end