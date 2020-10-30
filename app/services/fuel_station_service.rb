class FuelStationService
  def self.search(query)
    conn = Faraday.get("https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?") do |faraday|
      faraday.params[:api_key] = "UqgIbp8CQg0G98d8Pt4gjC51r0SiImZ6AJ7EAIkB"
      faraday.params[:location] = query
      faraday.params[:fuel_type] = "ELEC"
      faraday.params[:limit] = "1"
    end
    JSON.parse(conn.body, symbolize_names: true)
  end
end
