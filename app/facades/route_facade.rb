class RouteFacade
  def self.directions(to, from)
    data = RouteService.directions(to, from)


    route = Route.new(data[:route])
  end
end