class MapquestService
  def self.conn
    conn = Faraday.new(url: "http://www.mapquestapi.com/directions/v2/")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_directions(location)
    destination = NrelFacade.create_fuel_station(location)
    response = conn.get("route?key=#{ENV['mapquest_key']}&from=#{location}&to=#{destination.address}")
    data = get_json(response)
    data[:route]
  end
end
