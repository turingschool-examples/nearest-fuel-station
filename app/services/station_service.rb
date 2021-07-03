class StationService
  class << self
    def get_station_info(location)
      response = conn.get("/api/alt-fuel-stations/v1/nearest?location=#{location}")
        parse_data(response)[:fuel_stations].first
    end

    private

    def conn
      Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
        faraday.params['api_key'] = ENV['nrel_key']
        faraday.params['format'] = 'json'
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
