class SearchController < ApplicationController 
  def index
    station = NrelFacade.nearest_fuel_station(params[:location])
    require 'pry'; binding.pry
    directions = MapquestFacade.directions(params[:location], station.address)
    
  end
end