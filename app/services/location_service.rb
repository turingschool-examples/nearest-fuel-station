class LocationService
  class << self
    def call_for_location(location, to_address)
      response = conn.get("/directions/v2/route?to=#{to_address}&from=#{location}")
      parse_data(response)
    end

    private

    def conn
      Faraday.new(
        url: "http://www.mapquestapi.com",
        params: { key: ENV['MAP_QUEST_TOKEN']}
      )
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
