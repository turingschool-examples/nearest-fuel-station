class MapQuestService 
  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com') do |faraday|
      faraday.headers["X-API-KEY"] = ENV['mapquest_api_key']
    end
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end

  def self.directions_endpoint(from, to)
    response = conn.get('/directions/v2/route', params: {from: from, to: to})
    parse(response)
  end
end