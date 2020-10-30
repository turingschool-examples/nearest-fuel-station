class DirectionsService
  def self.search(query)
    conn = Faraday.get("") do |faraday|
      faraday.params[:api_key] = ENV['NREL_API_KEY']
      faraday.params[:location] = query
      faraday.params[:fuel_type] = "ELEC"
      faraday.params[:limit] = "1"
    end
    JSON.parse(conn.body, symbolize_names: true)
  end
end
