class MapquestService
  
  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com') do |faraday|
      faraday.params['key'] = ENV['mapquest_key']
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.route(start_address, end_address)
    response = conn.get("/directions/v2/route?from=#{start_address}&to=#{end_address}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
end