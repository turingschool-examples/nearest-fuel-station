require 'rails_helper'

RSpec.describe 'Nrel Facade' do
  describe 'class methods' do
    it "creates station objects" do
      address = '1331 17th St, Denver, CO 80202'
      station = NrelFacade.nearest_station(address)

      expect(station).to be_a Station
    end
  end
end
