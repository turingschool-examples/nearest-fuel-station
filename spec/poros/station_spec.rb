require 'rails_helper'

RSpec.describe Station do 
  it "exists and has attributes" do 
    response = JSON.parse(File.read('spec/fixtures/station.json'), symbolize_names: true)
    station = Station.new(response)

    expect(station).to be_a(Station)
    expect(station.station_name).to eq(response[:station_name])
    expect(station.city).to eq(response[:city])
    expect(station.street_address).to eq(response[:street_address])
    expect(station.state).to eq(response[:state])
    expect(station.access_days_time).to eq(response[:access_days_time])
  end
end