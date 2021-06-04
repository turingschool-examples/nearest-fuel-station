require 'rails_helper'

RSpec.describe 'direction facade' do
  it "returns one direction object", :vcr do

    facade = DirectionFacade.direction_details("1985 Sheridan Blvd. Edgewater, CO 80214", "4801 Fenton St Denver, CO 80212")

    expect(facade.distance).to be_a Float
    expect(facade.travel_time).to be_an Integer
  end
end
