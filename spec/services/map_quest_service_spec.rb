require 'rails_helper'

RSpec.describe "Mapquest Service" do
  describe 'class methods' do
    it "returns directions between starting addressand end address" do
      start_address = '1331 17th St, Denver, CO 80202'
      end_address   = '1225 17th Street, Denver, CO 80202'

      data = MapquestService.route(start_address, end_address)

      distance     = data[:route][:distance]
      time_seconds = data[:route][:formattedTime]

      expect(distance).to eq(0.081)
      expect(time_seconds).to eq("00:00:18")
    end
  end
end
