require 'rails_helper'

RSpec.describe Station do
  it 'exists' do
    attrs = {:access_code=>"public",
      :access_days_time=>"Garage business hours; pay lot",
      :access_detail_code=>nil,
      :cards_accepted=>nil,
      :date_last_confirmed=>"2022-01-10",
      :expected_date=>nil,
      :fuel_type_code=>"ELEC",
      :groups_with_access_code=>"Public",
      :id=>43833,
      :open_date=>"2011-02-28",
      :owner_type_code=>"P",
      :status_code=>"E",
      :restricted_access=>false,
      :station_name=>"Tremont Street Garage",
      :station_phone=>"303-534-7559",
      :updated_at=>"2022-02-10T19:42:29Z",
      :facility_type=>"PAY_GARAGE",
      :geocode_status=>"200-9",
      :latitude=>39.742113,
      :longitude=>-104.991416,
      :city=>"Denver",
      :intersection_directions=>nil,
      :plus4=>nil,
      :state=>"CO",
      :street_address=>"400 15th St",
      :zip=>"80202",
      :country=>"US",
      :bd_blends=>nil,
      :cng_dispenser_num=>nil,
      :cng_fill_type_code=>nil,
      :cng_psi=>nil,
      :cng_renewable_source=>nil,
      :cng_total_compression=>nil,
      :cng_total_storage=>nil,
      :cng_vehicle_class=>nil,
      :e85_blender_pump=>nil,
      :e85_other_ethanol_blends=>nil,
      :ev_connector_types=>["J1772"],
      :ev_dc_fast_num=>nil,
      :ev_level1_evse_num=>nil,
      :ev_level2_evse_num=>2,
      :ev_network=>"Non-Networked",
      :ev_network_web=>nil,
      :ev_other_evse=>nil,
      :ev_pricing=>"Free",
      :ev_renewable_source=>nil,
      :hy_is_retail=>nil,
      :hy_pressures=>nil,
      :hy_standards=>nil,
      :hy_status_link=>nil,
      :lng_renewable_source=>nil,
      :lng_vehicle_class=>nil,
      :lpg_primary=>nil,
      :lpg_nozzle_types=>nil,
      :ng_fill_type_code=>nil,
      :ng_psi=>nil,
      :ng_vehicle_class=>nil,
      :access_days_time_fr=>nil,
      :intersection_directions_fr=>nil,
      :bd_blends_fr=>nil,
      :groups_with_access_code_fr=>"Public",
      :ev_pricing_fr=>nil}

    fuel_station = Station.new(attrs)
    expect(fuel_station.street_address).to eq("400 15th St")
    expect(fuel_station.city).to eq("Denver")
    expect(fuel_station.state).to eq("CO")
    expect(fuel_station.zipcode).to eq("80202")
    expect(fuel_station.fuel_type).to eq("ELEC")
    expect(fuel_station.hours_of_operation).to eq("Garage business hours; pay lot")
    expect(fuel_station.station_name).to eq("Tremont Street Garage")
    expect(fuel_station.full_address).to eq("400 15th St Denver CO 80202")
  end
end

