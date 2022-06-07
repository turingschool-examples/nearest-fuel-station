class SearchController < ApplicationController

  def index
    @station = StationFacade.get_nearest_station(params[:location])

    destination = "#{@station.address} #{@station.city} #{@station.state} #{@station.zip}"
    
    @directions = MapFacade.get_directions(params[:location], destination)
  end
end
