require 'rails_helper'

RSpec.describe StationService do
  it 'will return the closest station to address provided', :vcr do
    address = "1331 17th St LL100, Denver, CO 80202"
    station_data = StationService.find_station(address)

    station = station_data[:fuel_stations][0]

    expect(station[:station_name]).to be_a String
    expect(station[:street_address]).to be_a String
    expect(station[:fuel_type_code]).to be_a String
    expect(station[:access_days_time]).to be_a String
  end
end