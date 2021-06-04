class StationService
  class << self
    def nearest_station(starting_address)
      resp = conn.get('/api/alt-fuel-stations/v1/nearest.json') do |faraday|
        faraday.params['location'] = starting_address
        faraday.params['fuel_type'] = 'ELEC'
      end
      parse_json(resp)
    end
    
    def conn
      Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
        faraday.params['api_key'] = ENV['nrel_key']
      end
    end

    def parse_json(resp)
      JSON.parse(resp.body, symbolize_names: true)
    end
  end
end