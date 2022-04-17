require 'rails_helper'

RSpec.describe 'Search Service' do
  it 'finds closest station' do
    station = SearchService.find_closest_station('1331 17th St, Ste LL100, Denver, CO 80202')

    expect(station).to be_a Hash

    expect(station[:fuel_stations][0][:station_name]).to eq("CBRE As Agent for EQC Operating Trust")
    expect(station[:fuel_stations][0][:street_address]).to eq("1225 17th Street, Suite 130")
    expect(station[:fuel_stations][0][:city]).to eq("Denver")
    expect(station[:fuel_stations][0][:state]).to eq("CO")
    expect(station[:fuel_stations][0][:zip]).to eq("80202")
  end
end