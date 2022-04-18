class SearchController < ApplicationController
  def index
    @location = params[:location]
    @station_info = StationFacade.nearest_station(@location)
  end

end
