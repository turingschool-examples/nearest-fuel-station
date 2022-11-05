class SearchController < ApplicationController

  def index
    @nearest_elec_station = StationFacade.get_nearest_station(params[:location])
    start_address = params[:location]
    end_address = @nearest_elec_station.first.full_address
    @directions_information = DirectionFacade.get_directions_info(start_address, end_address)
  end

end