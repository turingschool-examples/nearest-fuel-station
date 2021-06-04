class StationService
  class << self
    def call_for_locations(location)
      response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{location}&limit=1")
      parse_data(response)
    end

    private

    def conn
      Faraday.new(
        url: "https://developer.nrel.gov",
        params: { api_key: ENV['NREL_KEY']}
      )
    end

    def parse_data(response)
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
