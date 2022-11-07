class MapquestService 
  def self.conn
    Faraday.new('http://www.mapquestapi.com', key: ENV['mapquest_api_key'])
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end

  def self.directions_endpoint(from, to)
    response = conn.get('/directions/v2/route', from: from, to: to)
    parse(response)
  end
end