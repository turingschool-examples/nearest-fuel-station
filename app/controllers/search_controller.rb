class SearchController < ApplicationController

  def index 
    from = params[:location]
    @station = StationFacade.get_nearest(from)
    to = @station.full_address
    @map = MapFacade.directions(from, to)
    # redirect_to '/search'
  end
end