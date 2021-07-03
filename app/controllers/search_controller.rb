class SearchController < ApplicationController
  def index
    starting_location = params[:location]
    @nearest_station = StationFacade.get_stations(starting_location)
    @directions = DirectionsFacade.get_directions(starting_location, @nearest_station)
  end
end
