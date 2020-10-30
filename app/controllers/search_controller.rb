class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: 'https://developer.nrel.gov')
    response = conn.get('/api/alt-fuel-stations/v1/nearest.json') do |req|
      req.params['api_key'] = ENV['NREL_API_KEY']
      req.params['location'] = params[:location]
      req.params['status'] = 'E'
    end
    data = JSON.parse(response.body, symbolize_names: true)
    @station = data[:fuel_stations][0]

    lat = @station[:latitude]
    long = @station[:longitude]
    conn = Faraday.new(url: 'http://www.mapquestapi.com')
    response = conn.get('/directions/v2/route') do |req|
      req.params['key'] = ENV['MAP_API_KEY']
      req.params['from'] = params[:location]
      req.params['to'] = "#{lat}, #{long}"
    end
    data = JSON.parse(response.body, symbolize_names: true)
    @map = data[:route]
  end
end