require 'rails_helper'

RSpec.describe FuelStation do
  before :each do
    @station = 
    FuelStation.new({:access_code=>"public",
      :access_days_time=>"24 hours daily",
      :access_detail_code=>nil,
      :cards_accepted=>nil,
      :date_last_confirmed=>"2022-11-05",
      :expected_date=>nil,
      :fuel_type_code=>"ELEC",
      :groups_with_access_code=>"Public",
      :id=>233490,
      :open_date=>"2022-10-14",
      :owner_type_code=>nil,
      :status_code=>"E",
      :restricted_access=>nil,
      :station_name=>"17TH ST PLAZA P1 EV STATION",
      :station_phone=>"888-758-4389",
      :updated_at=>"2022-11-05T01:45:51Z",
      :facility_type=>nil,
      :geocode_status=>"GPS",
      :latitude=>39.750284,
      :longitude=>-104.995227,
      :city=>"Denver",
      :intersection_directions=>nil,
      :plus4=>nil,
      :state=>"CO",
      :street_address=>"1225 17th St",
      :zip=>"80202",
      :country=>"US"})
  end

  it 'exists' do
    expect(@station).to be_a(FuelStation)
  end

  it 'has a name' do
    expect(@station.name).to eq("17TH ST PLAZA P1 EV STATION")
  end

  it 'has a fuel type' do
    expect(@station.fuel_type).to eq("ELEC")
  end

  it 'has operating hours' do
    expect(@station.hours).to eq("24 hours daily")
  end

  it 'has an address' do
    expect(@station.address).to eq("1225 17th St, Denver, CO 80202")
  end
end