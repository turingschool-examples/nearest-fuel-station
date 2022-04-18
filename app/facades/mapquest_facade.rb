class MapquestFacade

  def self.route(start_address, end_address)
    json  = MapquestService.route(start_address, end_address)
    route = Route.new(json[:route])
  end
end
