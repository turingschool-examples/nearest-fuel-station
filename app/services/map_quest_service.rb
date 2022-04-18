class MapquestService

  def self.conn
    Faraday.new(url: 'http://www.mapquestapi.com') do |faraday|
      faraday.params['key'] = ENV['map_quest_api']
      faraday.adapter Faraday.default_adapter
    end
  end

  def self.route(start, end)
    response = conn.get("/directions/v2/route?from=#{start}&to=#{end}")
    json = JSON.parse(response.body, symbolize_names: true)
  end
