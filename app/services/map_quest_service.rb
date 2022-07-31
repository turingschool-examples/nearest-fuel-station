class MapQuestService 
  def self.conn
    url = "http://www.mapquestapi.com/"
    Faraday.new(url: url)
  end

  def self.get_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_directions(from, to)
    response = conn.get('/directions/v2/route?') do |f|
      f.params[:key] = ENV['map_quest_api_key']
      f.params[:from] = from
      f.params[:to] = to
    end
    MapQuestService.get_json(response)
  end
end