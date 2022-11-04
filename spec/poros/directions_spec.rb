require 'rails_helper'

RSpec.describe Directions do
  it 'will get the info necessary from API call', :vcr do
    address = "1331 17th St LL100, Denver, CO 80202"
    lat = 39.750284
    long = -104.995227
    directions = DirectionsService.get_directions(address, lat, long)

    final = Directions.new(directions)

    expect(final.distance).to eq(0.303)
    expect(final.time).to eq("00:01:02")
    expect(final.directions).to eq("Start out going southeast on 17th St toward Larimer St/CO-33.")
  end
end