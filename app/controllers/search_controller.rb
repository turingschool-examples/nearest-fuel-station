class SearchController < ApplicationController
  def index
    @station = StationFacade.get_station_data(params[:location])
    # binding.pry
    @direction = DirectionFacade.get_directions(params[:location], @station.address)
  end
end