require 'rails_helper'

RSpec.describe 'Search Service' do
  it 'finds closest station' do
    station = SearchFacade.closest_station('1331 17th St, Ste LL100, Denver, CO 80202')

    expect(station).to be_a Station
  end
end