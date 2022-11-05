class StationService

  def self.get_nearest_station(address)
    street_address = address.split(",")[0]
    city = address.split(",")[1]
    state = address.split(",")[2].split(" ")[0]
    zipcode = address.split(",")[2].split(" ")[1]

    response = conn.get("/api/alt-fuel-stations/v1.json?street_address=#{street_address}&city=#{city}&state=#{state}&zip=#{zipcode}&fuel_type=ELEC&limit=1&api_key=#{ENV['fuel_station_api_key']}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new(url: "https://developer.nrel.gov") 
  end

end