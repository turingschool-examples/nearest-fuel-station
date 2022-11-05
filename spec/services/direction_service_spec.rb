require 'rails_helper'

RSpec.describe DirectionService do
  it 'returns an HTTP response of travel info given a starting and ending point', :vcr do
    travel_info = DirectionService.get_travel_info("1331 17th St LL100, Denver, CO 80202", "1225 17th St, Denver, CO 80202")

    expect(travel_info).to be_a(Hash)
    expect(travel_info[:route]).to have_key(:distance)
    expect(travel_info[:route][:distance]).to be_a(Float)
    expect(travel_info[:route]).to have_key(:formattedTime)
    expect(travel_info[:route][:formattedTime]).to be_a(String)
    expect(travel_info[:route]).to have_key(:legs)
    expect(travel_info[:route][:legs].first).to have_key(:maneuvers)
    expect(travel_info[:route][:legs].first[:maneuvers].first).to have_key(:narrative)
    expect(travel_info[:route][:legs].first[:maneuvers].first[:narrative]).to be_a(String)
  end
end