class NrelService
  class << self

    def nearest(address)
      response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{address}")
      parse_data(response)
    end

    private

    def conn
      Faraday.new(url: "https://developer.nrel.gov") do |faraday|
        faraday.params['limit'] = 1
        faraday.params['api_key'] = ENV['nrel_key']
        faraday.adapter Faraday.default_adapter
      end
    end

    def parse_data(response)
      data = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
