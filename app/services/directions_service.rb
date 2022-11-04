class DirectionsService

  def self.get_directions(start_point, dest_lat, dest_long)
    response = conn.get("/directions/v2/route?from=#{start_point}&to=#{dest_lat},#{dest_long}")
    JSON.parse(response.body, symbolize_names: true )
  end

  private
  def self.conn
    Faraday.new(url: "http://www.mapquestapi.com" ) do |f|
      f.params['key'] = ENV['map_api_key']
    end
  end
end


# http://www.mapquestapi.com/directions/v2/route?from=1331 17th St LL100, Denver, CO 80202&to=39.750284,-104.995227&key=U16RGHuCwcLbNH1LNewCAdwNAnfXdLLA