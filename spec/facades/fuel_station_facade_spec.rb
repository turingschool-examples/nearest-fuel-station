require 'rails_helper'

RSpec.describe 'FuelStationFacade', :vcr do
  it 'makes a call and returns an image URL based on weather description' do
    address = '1331 17th St LL100, Denver, CO 80202'
    station_data = FuelStationFacade.get_closest_station(address)

    expect(station_data).to be_a FuelStation
    expect(station_data.name).to be_a String
    expect(station_data.access_times).to be_a String
    expect(station_data.street_address).to be_a String
    expect(station_data.city).to be_a String
    expect(station_data.state).to be_a String
    expect(station_data.zip).to be_a String
    expect(station_data.concat_address).to be_a String
    expect(station_data.fuel_type).to be_a String
    expect(station_data.distance_miles).to be_a Float
  end
end