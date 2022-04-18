require 'rails_helper'

RSpec.describe FuelStation do
  it 'can return fuel station data' do
    station_attributes = {
      access_days_time: "24 hours daily",
      distance: 0.12268,
      fuel_type_code: "ELEC",
      station_name: "16M BUILDING 16M B-1",
      street_address: "1550 Market St",
      city: "Denver",
      state: "CO",
      zip: "80202"
    }

    fuel_station = FuelStation.new(station_attributes)

    expect(fuel_station).to be_a(FuelStation)
    # expect(fuel_station.name).to eq("16M BUILDING 16M B-1")
    expect(fuel_station.address).to eq("1550 Market St, Denver, CO, 80202")
    expect(fuel_station.access_times).to eq("24 hours daily")
    expect(fuel_station.distance).to eq(0.12268)
    expect(fuel_station.fuel_type).to eq("ELEC")
  end
end
