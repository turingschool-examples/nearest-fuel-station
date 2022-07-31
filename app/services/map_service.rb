class MapService 

  def self.conn
    Faraday.new("http://www.mapquestapi.com")
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.find_directions(from, to)
    data = conn.get("/directions/v2/route") do |f|
    f.params['key'] = ENV['map_key']
    f.params['from'] = from 
    f.params['to'] = to
    end
    get_json(data)
  end
end