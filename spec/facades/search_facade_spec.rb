require 'rails_helper'

RSpec.describe 'search facade' do
  it 'can return fuel station data' do
    results = SearchFacade.get_closest_station('1331 17th St, Ste LL100, Denver, CO 80202')

    expect(results).to be_an(Array)
    results.each do |result|
      expect(result).to be_a(FuelStation)
    end
  end
end
