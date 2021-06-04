require 'rails_helper'

RSpec.describe 'station facade' do
  it "returns one station object", :vcr do

    facade = StationFacade.specific_station("1985 Sheridan Blvd. Edgewater, CO 80214")

    expect(facade.access_time).to eq("24 hours daily")
  end
end
