require 'rails_helper'

RSpec.describe 'search service' do
  it 'can return a fuel station' do
    station = SearchService.find_closest_station('1331 17th St, Ste LL100, Denver, CO 80202')

    expect(station).to be_a(Hash)
    expect(station).to have_key(:fuel_stations)
    expect(station[:fuel_stations]).to be_an(Array)

    station[:fuel_stations].each do |station_info|
      expect(station_info).to have_key(:station_name)
      expect(station_info[:station_name]).to be_a(String)

      expect(station_info).to have_key(:street_address)
      expect(station_info[:street_address]).to be_a(String)

      expect(station_info).to have_key(:access_days_time)
      expect(station_info[:access_days_time]).to be_a(String)

      expect(station_info).to have_key(:fuel_type_code)
      expect(station_info[:fuel_type_code]).to be_a(String)

      expect(station_info).to have_key(:distance)
      expect(station_info[:distance]).to be_a(Float)

      expect(station_info).to have_key(:city)
      expect(station_info[:city]).to be_a(String)

      expect(station_info).to have_key(:state)
      expect(station_info[:state]).to be_a(String)

      expect(station_info).to have_key(:zip)
      expect(station_info[:zip]).to be_a(String)
    end
  end
end
