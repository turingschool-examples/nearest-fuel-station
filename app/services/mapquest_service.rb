class MapQuestService 
  def self.conn
    Faraday.new('http://www.mapquestapi.com')
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end

  def self.directions(from, to)
    response = conn.get('/directions/v2/route', from: from, to: to)
  end
end