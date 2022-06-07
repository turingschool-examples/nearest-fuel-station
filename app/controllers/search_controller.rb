class SearchController < ApplicationController
  def index
    @station = StationFacade.get_nearest_station(params[:location])
  end
end
