class SearchController < ApplicationController
  def index
    @nearest_station = NrelFacade.create_fuel_station(params[:location])
    @directions = MapquestFacade.create_directions(params[:location])
  end
end
