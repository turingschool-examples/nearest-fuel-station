class SearchService
  def self.find_closest_station(location)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{location}")
    body = parse_json(response)
  end

  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov/') do |faraday|
      faraday.params['api_key'] = ENV['api_key']
    end
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
