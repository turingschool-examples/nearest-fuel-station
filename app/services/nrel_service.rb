class NrelService 
  def self.conn 
    Faraday.new(url: 'https://developer.nrel.gov') do |faraday| 
      faraday.headers["X-API-KEY"] = ENV['mapquest_api_key']
    end
  end

  def self.parse 
    JSON.parse(api_data.body, symbolize_names: true)
  end
end