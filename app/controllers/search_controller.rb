class SearchController < ApplicationController
  def index
    # params = location => "address as string"
    station_data = StationsService.nearest_station(params[:location])
    @station = Station.new(station_data)
    directions_data = DestinationService.get_directions(params[:location], @station.full_address)
    @directions = Destination.new(directions_data)
  end
end