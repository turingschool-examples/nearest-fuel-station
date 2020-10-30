class SearchController < ApplicationController
  def index
    conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/") do |faraday|
      faraday.params["api_key"] = ENV["NREL_API_KEY"]
    end
    response = conn.get("nearest.json?limit=1&location=1331+17th+St+LL100+Denver+CO+80202")
    @parsed_response = JSON.parse(response.body, symbolize_names: true)
  end
end

