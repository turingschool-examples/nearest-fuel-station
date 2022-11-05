class SearchController < ApplicationController
  def index
    @station = FuelFacade.get_nearest_station(params[:location])
    @location = params[:location]
    @travel_info = DirectionFacade.get_travel_info(params[:location], @station.address)
  end
end