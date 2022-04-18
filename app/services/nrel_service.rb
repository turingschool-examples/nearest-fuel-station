class NrelService

  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday|
      faraday.params['api_key'] = ENV['d_n_api']
      faraday.params['limit'] = 1
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.nearest_station(address)
    response = conn.get("/api/alt-fuel-stations/v1/nearest.json?location=#{address}")
    json = JSON.parse(response.body, symbolize_names: true)
    require "pry"; binding.pry
  end

end
