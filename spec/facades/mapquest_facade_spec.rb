require 'rails_helper'

RSpec.describe 'Mapquest Facade' do
  describe 'class methods' do
    it "creates route objects" do
      start_address = '1331 17th St, Denver, CO 80202'
      end_address   = '1225 17th Street, Denver, CO 80202'
      route = MapquestFacade.route(start_address, end_address)

      expect(route).to be_a Route
    end
  end
end
