class MapService
  def self.get_directions(from, to)
    response = conn.get("/directions/v2/route?key=#{ENV['MAP_KEY']}&from=#{from}&to=#{to}")
    parse_json(response)
  end

  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com")
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
