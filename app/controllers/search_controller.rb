class SearchController < ApplicationController
  def index
    location = 'Denver, CO 80202' #This is temporary
    from = '1331 17th St, Denver, CO' #temp
    to = '1225 17th St, Denver, CO' #temp
    @station = FuelFacade.get_nearest_station(location)
    @map = MapFacade.find_directions(from, to)
  end
end