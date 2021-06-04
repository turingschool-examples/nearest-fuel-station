class SearchController < ApplicationController
  def index
    @station = StationFacade.find_nearest(params[:location])
    @map = MapFacade.directions_to_station(params[:location], @station.address)
  end
end
