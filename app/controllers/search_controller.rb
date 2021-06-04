class SearchController < ApplicationController

  def index
    @station = StationFacade.find_station(params[:location]).first
  end
end
