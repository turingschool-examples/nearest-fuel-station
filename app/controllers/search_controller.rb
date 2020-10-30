class SearchController < ApplicationController
  def index
    # params = location => "address as string"
    station_data = StationsService.nearest_station(params[:location])
    @station = Station.new(station_data)
  end
end