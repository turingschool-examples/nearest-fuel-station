class SearchController < ApplicationController
  def index
    @station = FuelFacade.get_nearest_station(params[:location])
    @location = params[:location]
  end
end