class SearchController < ApplicationController

  def index
    @station = StationFacade.specific_station(params[:location])
  end
end
