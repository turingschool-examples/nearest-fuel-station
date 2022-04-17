class SearchController < ApplicationController
  def index
    location = params[:location]
    @stations = SearchFacade.closest_station(location)
  end
end