class SearchController < ApplicationController
  def index
    location = params[:location]
    @station = SearchFacade.closest_station(location)
    @route = RouteFacade.directions(@station.address, location)
  end
end