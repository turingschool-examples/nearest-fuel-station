class SearchController < ApplicationController

  def index
    @fuel_station = SearchFacade.find_station(params[:location])
    @directions = SearchFacade.get_directions(params[:location], @fuel_station.address)
  end
end
