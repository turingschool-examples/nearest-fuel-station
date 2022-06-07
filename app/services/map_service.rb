class MapService
  def self.get_directions(origin, destination)
    conn = Faraday.new(url: "http://www.mapquestapi.com/directions/v2/route")

    response = conn.get("?key=#{ENV['mapquest_api_key']}&from=#{origin}&to=#{destination}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
