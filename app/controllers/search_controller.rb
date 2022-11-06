class SearchController < ApplicationController
  def index
    location = params[:location]
    @station = FuelFacade.get_nearest_station(location)
    from = location
    to = @station.address
    @map = MapFacade.find_directions(from, to)
  end
end