require 'rails_helper'

RSpec.describe DirectionFacade do
  describe '#get_directions_info(start_address, end_address)' do
    it 'returns an array of two items, the distance to travel and a list of directions to follow' do

      start_address = "17th St LL100, Denver, CO 80202"
      end_address = "400 15th St Denver CO 80202"

      direction_info = DirectionFacade.get_directions_info(start_address, end_address)
      expect(direction_info).to be_a Array
      expect(direction_info.count).to eq(2)
      expect(direction_info.first.class).to be(Float)
      expect(direction_info.first.class).to be(Float) #test for rounding
      expect(direction_info.second[0].class).to be(Direction)
      expect(direction_info.second[0].directions_list
      ).to be_an(Array)
    end
  end
end
