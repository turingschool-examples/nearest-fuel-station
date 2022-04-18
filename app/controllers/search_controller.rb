class SearchController < ApplicationController
  def index
    @fuel_station = SearchFacade.get_closest_station(params[:location]).first
    @directions = DirectionsFacade.get_station_directions(params[:location], @fuel_station.address)
  end
end
