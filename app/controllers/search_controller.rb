class SearchController < ApplicationController
  def index
    @location = params[:location]
    @station_info = StationFacade.nearest_station(@location)
    @destination = @station_info.first.address
    @map = MapFacade.directions(@location, @destination).first
  end

end
