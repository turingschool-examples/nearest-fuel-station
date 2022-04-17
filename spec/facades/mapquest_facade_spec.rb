require 'rails_helper'

RSpec.describe MapquestFacade, :vcr do 
  context 'class methods' do
    context '#route(start_address, end_address)' do 
      before(:each) do 
        @start_address = '1331 17th St, Denver, CO 80202'
        @end_address = '1225 17th Street, Denver, CO 80202'
        @route = MapquestFacade.route(@start_address, @end_address)
      end
      it 'creates a Route object' do 
        expect(@route).to be_a Route
      end
    end
  end 
end 