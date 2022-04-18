class DirectionsService
  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com") do |faraday|
      faraday.params[:key] = ENV['key']
    end
  end

  def self.find_directions(from, to)
    response = conn.get("/directions/v2/route?from=#{from}&to=#{to}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
