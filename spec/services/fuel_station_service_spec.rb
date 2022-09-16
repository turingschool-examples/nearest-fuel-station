require 'rails_helper'

describe FuelStationService do
  context "class methods" do
    context "#nearest_station" do
      it "returns the nearest alternative charing station based on address", :vcr do
        search = FuelStationService.nearest_station('1331 17th St LL100, Denver, CO 80202')
        
        expect(search).to be_a Hash
        expect(search[:fuel_stations]).to be_an Array
        expect(search[:fuel_stations][0]).to be_a Hash

        # Station Name
        expect(search[:fuel_stations][0][:station_name]).to be_a String

        # Address of Station
        expect(search[:fuel_stations][0][:street_address]).to be_a String
        expect(search[:fuel_stations][0][:city]).to be_a String
        expect(search[:fuel_stations][0][:state]).to be_a String
        expect(search[:fuel_stations][0][:zip]).to be_a String

        # Fuel Type
        expect(search[:fuel_stations][0][:fuel_type_code]).to be_a String

        # Access Times
        expect(search[:fuel_stations][0][:access_days_time]).to be_a String

        # Distance to Station
        expect(search[:fuel_stations][0][:distance]).to be_a Float

      end
    end
  end
end