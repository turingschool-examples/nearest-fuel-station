class SearchController < ApplicationController 
  def index 
    @location = params[:location]
    @stations = StationFacade.create_stations(@location)
  end
end