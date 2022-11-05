class DirectionService

  def self.get_directions_info(start_address, end_address)
    response = conn.get("/directions/v2/route?key=#{ENV['mapquest_api_key']}&from=#{start_address}&to=#{end_address}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com") 
  end

end