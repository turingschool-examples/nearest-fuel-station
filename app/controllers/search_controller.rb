class SearchController < ApplicationController
  def index
    starting_address = params[:location]
    @station = StationFacade.find_station(starting_address)
    @driving_route = DrivingRouteFacade.best_route(starting_address, @station.address)
  end
end