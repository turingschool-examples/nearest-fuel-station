class SearchController < ApplicationController
  def index
    conn_1 = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/") do |faraday|
      faraday.params["api_key"] = ENV["NREL_API_KEY"]
    end
    nrel_response = conn_1.get("nearest.json?limit=1&location=1331+17th+St+LL100+Denver+CO+80202")
    @nrel_parsed_response = JSON.parse(nrel_response.body, symbolize_names: true)
    
    conn_2 = Faraday.new(url: "https://www.mapquestapi.com/directions/v2/") do |faraday|
      faraday.params["key"] = ENV["MAPQUEST_API_KEY"]
    end
    
    start = params[:location]
    destination = @nrel_parsed_response[:fuel_stations].first[:street_address]
    
    mapquest_response = conn_2.get("route?from=#{start}&to=#{destination}+Denver+co&outFormat=json&ambiguities=ignore&routeType=fastest&doReverseGeocode=false&enhancedNarrative=false&avoidTimedConditions=false")
    @mapquest_parsed_response = JSON.parse(mapquest_response.body, symbolize_names: true)
  end
end

