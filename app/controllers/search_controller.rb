class SearchController < ApplicationController 
  def index
    station = NrelFacade.nearest_fuel_station(params[:location])
    require 'pry'; binding.pry
    # directions = MapQuestFacade.directions(params[:location], directions)
  end
end