require 'rails_helper'

RSpec.describe StationFacade do
  describe '#get_nearest_station(address)' do
    it 'returns an array with one station', :vcr do
      address = "17th St LL100, Denver, CO 80202"

      fuel_station = StationFacade.get_nearest_station(address)
      expect(fuel_station).to be_a Array
      expect(fuel_station.count).to eq(1)
      expect(fuel_station.first.class).to be(Station)
    end
  end
end
