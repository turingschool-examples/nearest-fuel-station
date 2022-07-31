require 'rails_helper'

RSpec.describe NrelService do
  it 'returns the data from the nearest station to turing' do
    params = {location: '1331 17th St LL100, Denver, CO 80202'}
    station_data = NrelService.get_station_data(params)

    expect(station_data).to be_a(Hash)
    expect(station_data).to have_key(:fuel_stations)
  end
end