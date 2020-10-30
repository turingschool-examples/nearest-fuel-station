class SearchController < ApplicationController

  def index
    @fuel_station = SearchFacade.find_station(params[:location])
  end
end
