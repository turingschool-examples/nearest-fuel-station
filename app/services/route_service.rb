class RouteService
  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com/') do |faraday|
      faraday.params['key'] = ENV['mapq_key']
    end
  end

  def self.directions(to, from)
    response = conn.get("/directions/v2/route?from=#{from}&to=#{to}")
    JSON.parse(response.body, symbolize_names: true)
  end
end