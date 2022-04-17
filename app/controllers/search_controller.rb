class SearchController < ApplicationController

  def index
    @start_address = params[:location]
    @station = NrelFacade.nearest_station(@start_address)
    @route = MapquestFacade.route(@start_address, @station.address)
  end
end