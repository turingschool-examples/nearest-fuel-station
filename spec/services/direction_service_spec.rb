require 'rails_helper'

describe DirectionService do
  context "class methods" do
    context "#get_directions_info(start_address, end_address)" do
      it "returns directions ifnormation" do
        start_address = "1438 N Steele St Denver CO 80206"
        end_address = "400 15th St Denver CO 80202"

        search = DirectionService.get_directions_info(start_address, end_address)
        expect(search).to be_a Hash

        expect(search).to have_key :route

        expect(search[:route][:distance]).to be_a(Float)

        expect(search[:route][:legs]).to be_an(Array)
        expect(search[:route][:legs][0]).to be_an(Hash)
        expect(search[:route][:legs][0]).to have_key(:maneuvers)
        expect(search[:route][:legs][0][:maneuvers][0]).to be_an(Hash)

        expect(search[:route][:legs][0][:maneuvers][0][:narrative]).to be_an(String)
      end
    end

  end
end