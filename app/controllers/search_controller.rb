class SearchController < ApplicationController

  def index
    @nearest_elec_station = StationFacade.get_nearest_station(params[:location])
  end
end