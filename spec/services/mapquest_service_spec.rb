require 'rails_helper'

RSpec.describe 'MapquestService', :vcr do
  context 'class methods' do 
    context '#route' do 
      before(:each) do 
        @start_address = '1331 17th St, Denver, CO 80202'
        @end_address = '1225 17th Street, Denver, CO 80202'
      end

      it 'returns route directions between starting and ending address' do 
        data = MapquestService.route(@start_address, @end_address)

        distance = data[:route][:distance]
        time_in_seconds = data[:route][:formattedTime]

        expect(distance).to eq(0.081)
        expect(time_in_seconds).to eq("00:00:18")
      end
    end
  end
end