class SearchController < ApplicationController 
  def index
    directions = NrelFacade.nearest_fuel_station(params[:location])
    require 'pry'; binding.pry
    # directions = MapQuestFacade.directions(params[:location], directions)
  end
end