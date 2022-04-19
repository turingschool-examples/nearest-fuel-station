class MapService

  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com")
  end

  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_directions(from, to)
    get_url("/directions/v2/route?key=#{ENV['api_key_maps']}&from=#{from}&to=#{to}")
  end

end
