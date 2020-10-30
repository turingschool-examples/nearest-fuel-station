require 'rails_helper'

RSpec.describe DestinationService do
  it "Can get longitude and latitude of queried city/state location" do
      directions = DestinationService.get_directions('1331 17th St LL100, Denver, CO 80202', '1225 17th St., Denver, CO 80202')
      
      expect(directions).to be_a(Hash)
      expect(directions[:route][:distance]).to eq(0.081)
      expect(directions[:route][:formattedTime]).to eq("00:00:40")
      expect(directions[:route][:legs][0][:maneuvers][0][:narrative]).to eq("Start out going southeast on 17th St toward Larimer St/CO-33.")
  end
end