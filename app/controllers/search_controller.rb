class SearchController < ApplicationController
  def index
    @station = StationsFacade.nearest_electric_station
  end
end