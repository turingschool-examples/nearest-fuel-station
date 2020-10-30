class DestinationService
  def self.get_directions(start_point, end_point)
    response = conn.get("route?") do |f|
      f.params[:key] = ENV['DIRECTIONS_API_KEY']
      f.params[:from] = start_point
      f.params[:to] = end_point
      f.params[:routeType] = "fastest"
    end
    json = JSON.parse(response.body, symbolize_names: true)
  end

  private

  def self.conn
    Faraday.new("https://www.mapquestapi.com/directions/v2/")
  end
end

