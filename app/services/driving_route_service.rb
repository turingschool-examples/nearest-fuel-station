class DrivingRouteService
  class << self
    def to_station(starting_address, station_address)
      resp = conn.get('/directions/v2/optimizedroute') do |faraday|
        faraday.params['json'] = "{'locations': [#{starting_address},#{station_address}]}"
      end
      parse_json(resp)
    end
    
    def conn
      Faraday.new(url: 'http://www.mapquestapi.com') do |faraday|
        faraday.params['key'] = ENV['mapquest_key']
      end
    end

    def parse_json(resp)
      JSON.parse(resp.body, symbolize_names: true)
    end
  end
end