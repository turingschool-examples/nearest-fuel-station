class MapquestPoro 
  attr_reader :travel_time,
              :narrative

  def initialize(api)
    @travel_time = api[:realTime]
    @narrative = api[:legs][0][:maneuvers][0][:narrative]
  end
end