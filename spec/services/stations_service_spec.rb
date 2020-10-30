require 'rails_helper'

RSpec.describe StationsService do
  it "Can get data for nearest station" do
      station = StationsService.nearest_station('1331 17th St LL100, Denver, CO 80202')
      
      expect(station).to be_a(Hash)
      expect(station[:fuel_stations][0][:station_name]).to eq("Seventeenth Street Plaza")
      expect(station[:fuel_stations][0][:street_address]).to eq("1225 17th St.")
  end
end