require 'rails_helper'

RSpec.describe NrelFacade, :vcr do 
  context 'class methods' do
    context '#nearest_station' do 
      before(:each) do 
        @address = '1331 17th St, Denver, CO 80202'
        @station = NrelFacade.nearest_station(@address)
      end
      it 'creates a Station object' do 
        expect(@station).to be_a Station
      end
    end
  end 
end 