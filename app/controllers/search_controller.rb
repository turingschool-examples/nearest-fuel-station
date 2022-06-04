class SearchController < ApplicationController

  def index
    @station = StationFacade.get_nearest_station(params[:location])
    require 'pry'; binding.pry
  end
end
