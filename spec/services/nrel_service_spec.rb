require 'rails_helper'

RSpec.describe 'NrelService' do
  context 'class methods' do 
    context '#nearest_station' do 
      before(:each) do 
        @address = '1331 17th St, Denver, CO 80202'
      end

      it 'returns nearest stations' do 
        data = NrelService.nearest_station(@address)
        station = data[:fuel_stations][0]

        expect(data[:fuel_stations].count).to eq(1)
        expect(station[:street_address]).to eq("1225 17th Street, Suite 130")
      end
    end
  end
end