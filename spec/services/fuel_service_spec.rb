require 'rails_helper'

RSpec.describe FuelService do
  it 'returns an HTTP response of nearest station to a given location', :vcr do
    station = FuelService.get_nearest_station("1331 17th St LL100, Denver, CO 80202")

    expect(station).to be_a(Hash)
    expect(station).to have_key(:fuel_stations)
    expect(station[:fuel_stations].first).to have_key(:access_days_time)
    expect(station[:fuel_stations].first[:access_days_time]).to be_a(String)
    expect(station[:fuel_stations].first).to have_key(:fuel_type_code)
    expect(station[:fuel_stations].first[:fuel_type_code]).to be_a(String)
    expect(station[:fuel_stations].first[:station_name]).to be_a(String)
    expect(station[:fuel_stations].first[:fuel_type_code]).to be_a(String)
    expect(station[:fuel_stations].first[:street_address]).to be_a(String)
    expect(station[:fuel_stations].first[:zip]).to be_a(String)
  end
end