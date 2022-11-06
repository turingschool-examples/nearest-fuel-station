class SearchController < ApplicationController
  def index
    location = 'Denver, CO 80202' #This is temporary
    @station = FuelFacade.get_nearest_station(location)
  end
end