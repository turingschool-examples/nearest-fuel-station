class MapquestFacade
  class << self
    def route(address, end_address)
      #binding.pry
      json = MapquestService.routing(address, end_address)
      #binding.pry
      route = Route.new(json[:route])
    end
  end
end
