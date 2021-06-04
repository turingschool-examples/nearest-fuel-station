class SearchController < ApplicationController

  def index
    @station = StationFacade.specific_station(params[:location])
    @directions = DirectionFacade.direction_details(params[:location], @station.full_address)
  end
end
