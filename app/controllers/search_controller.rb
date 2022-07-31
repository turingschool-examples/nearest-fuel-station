class SearchController < ApplicationController
  def index
    @station = StationFacade.get_station_data(params[:location])
  end
end