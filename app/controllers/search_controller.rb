class SearchController < ApplicationController
  def index
    @location = params[:location]
    @station = StationFacade.get_stations(@location)
    @map_info = LocationFacade.get_location(@location, @station)
  end
end
