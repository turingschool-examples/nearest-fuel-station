require 'rails_helper'

RSpec.describe DirectionsService do
  it 'will get directions to the station', :vcr do
    address = "1331 17th St LL100, Denver, CO 80202"
    lat = 39.750284
    long = -104.995227
    directions = DirectionsService.get_directions(address, lat, long)

    expect(directions).to be_a Hash
  end
end