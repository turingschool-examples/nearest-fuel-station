class DirectionsService
  class << self
    def get_direction_info(starting_location, nearest_station)
      station_location = nearest_station.address + ', ' + nearest_station.city + ', ' + nearest_station.state + ' ' + nearest_station.zip
      response = conn.get("/directions/v2/route?from=#{starting_location}&to=#{station_location}")
        parse_data(response)
    end

    private

    def conn
      Faraday.new(url: 'http://www.mapquestapi.com') do |faraday|
        faraday.params['key'] = ENV['map_quest_key']
      end
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
