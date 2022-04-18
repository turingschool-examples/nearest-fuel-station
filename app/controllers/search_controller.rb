class SearchController < ApplicationController
  def index
    location = params[:location]
    @stations = SearchFacade.closest_station(location)
    @routes = RouteFacade.directions(location, @stations.first.address)
  end
end