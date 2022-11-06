require 'rails_helper'

RSpec.describe FuelService do
  it 'returns gas station data', :vcr do
    location = 'Denver, CO 80202'
    search = FuelService.get_station_data(location)

    expect(search).to be_a Hash
    expect(search[:fuel_stations]).to be_an Array

    fuel_station = search[:fuel_stations][0]
    expect(fuel_station).to have_key :station_name
    expect(fuel_station[:station_name]).to be_a String
    expect(fuel_station).to have_key :street_address
    expect(fuel_station[:street_address]).to be_a String
    expect(fuel_station).to have_key :zip
    expect(fuel_station[:zip]).to be_a String
    expect(fuel_station).to have_key :state
    expect(fuel_station[:state]).to be_a String
    expect(fuel_station).to have_key :fuel_type_code
    expect(fuel_station[:fuel_type_code]).to be_a String
    expect(fuel_station).to have_key :access_days_time
    expect(fuel_station[:access_days_time]).to be_a String
  end
end