require 'rails_helper'

RSpec.describe StationService do 
  it 'establishes connection to find nearest station' do 
    location = "1331 17th St LL100, Denver, CO 80202"

    expect(StationService.nearest_station(location)).to be_a(Hash)
  end
end