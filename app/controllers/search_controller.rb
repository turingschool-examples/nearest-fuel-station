class SearchController < ApplicationController
  def index
    @closest_station = FuelStationFacade.get_closest_station(params[:location])
    @directions = DirectionsFacade.get_directions(params[:location], @closest_station.concat_address)
  end
end