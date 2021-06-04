class SearchController < ApplicationController
  def index
    @station = StationFacade.find_nearest(params[:location])
  end
end
