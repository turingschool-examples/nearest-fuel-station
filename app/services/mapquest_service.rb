class MapquestService
  class << self

    def routing(start_address, end_address)
      response = conn.get("/directions/v2/route?key=#{ENV['mapquest_key']}&from=#{start_address}&to=#{end_address}")
      #binding.pry
      parse_data(response)
    end

    private

    def conn
        Faraday.new(url: "http://www.mapquestapi.com") do |faraday|
        faraday.params['key'] = ENV['mapquest_key']
        #binding.pry
        end
    end

    def parse_data(response)
      #binding.pry
        data = JSON.parse(response.body, symbolize_names: true)
    end
  end
end
