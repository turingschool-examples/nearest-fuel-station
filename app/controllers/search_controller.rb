class SearchController < ApplicationController
  def index
    address = params[:location]
    @station = NrelFacade.closest_station(address)
    @route = MapquestFacade.route(address, @station.address)
  end
end
