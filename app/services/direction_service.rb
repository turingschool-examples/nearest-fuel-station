class DirectionService < BaseService

  def self.navigate(start, finish)
    response = conn('http://www.mapquestapi.com').get("/directions/v2/route") do |f|
      f.params['key'] = ENV['map_key']
      f.params['from'] = start
      f.params['to'] = finish
    end
    format_json(response)
  end
end
