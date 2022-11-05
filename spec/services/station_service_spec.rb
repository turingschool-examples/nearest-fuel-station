require 'rails_helper'

describe StationService do
  context "class methods" do
    context "#get_nearest_station(address)" do
      it "returns station data" do
        address = "1438 Steele St, Denver, CO 80206"
        search = StationService.get_nearest_station(address)
        expect(search).to be_a Hash
        expect(search[:fuel_stations]).to be_an Array

        expect(search[:fuel_stations][0][:access_days_time]).to be_a(String)
        expect(search[:fuel_stations][0][:fuel_type_code]).to be_a(String)
        expect(search[:fuel_stations][0][:station_name]).to be_a(String)
      end
    end
  end
end