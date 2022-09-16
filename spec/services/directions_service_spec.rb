require 'rails_helper'

describe DirectionsService do
  context "class methods" do
    context "#nearest_station" do
      it "returns the nearest alternative charing station based on address", :vcr do
        starting_address = '1331 17th St LL100, Denver, CO 80202'
        closest_station_address = FuelStationFacade.get_closest_station(starting_address).concat_address

        directions_data = DirectionsService.call_directions(starting_address, closest_station_address)
        
        expect(directions_data).to be_a Hash
        expect(directions_data[:route]).to be_a Hash
        expect(directions_data[:route][:formattedTime]).to be_a String
        expect(directions_data[:route][:legs]).to be_an Array
        expect(directions_data[:route][:legs][0]).to be_a Hash
        expect(directions_data[:route][:legs][0][:maneuvers]).to be_an Array
        expect(directions_data[:route][:legs][0][:maneuvers][0]).to be_a Hash
        expect(directions_data[:route][:legs][0][:maneuvers][0][:narrative]).to be_a String
      end
    end
  end
end