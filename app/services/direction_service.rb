class DirectionService
  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com") do |faraday|
      faraday.params['key'] = ENV['mapquest_api']
    end
  end

  def self.get_travel_info(starting_location, ending_location)
    response = conn.get("/directions/v2/route?from=#{starting_location}&to=#{ending_location}")
    JSON.parse(response.body, symbolize_names: true)
  end
end