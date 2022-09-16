require 'rails_helper'

RSpec.describe FuelStation do
  it 'exists' do
    attributes = {:latitude=>39.750614,
      :longitude=>-104.996775,
      :location_country=>"US",
      :precision=>{:value=>9, :name=>"premise", :types=>["premise"]},
      :station_locator_url=>"https://afdc.energy.gov/stations/",
      :total_results=>224,
      :station_counts=>
        {:total=>516,
        :fuels=>
          {:BD=>{:total=>0}, :E85=>{:total=>0}, :ELEC=>{:total=>516, :stations=>{:total=>224}}, :HY=>{:total=>0}, :LNG=>{:total=>0}, :CNG=>{:total=>0}, :LPG=>{:total=>0}}},
      :offset=>0,
      :fuel_stations=>
        [{:access_code=>"public",
          :access_days_time=>"MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified",
          :access_detail_code=>nil,
          :cards_accepted=>nil,
          :date_last_confirmed=>"2022-09-16",
          :expected_date=>"2022-09-09",
          :fuel_type_code=>"ELEC",
          :groups_with_access_code=>"TEMPORARILY UNAVAILABLE (Public)",
          :id=>212679,
          :open_date=>"2022-03-25",
          :owner_type_code=>nil,
          :status_code=>"T",
          :restricted_access=>nil,
          :station_name=>"CBRE As Agent for EQC Operating Trust",
          :station_phone=>"800-663-5633",
          :updated_at=>"2022-09-16T00:38:25Z",
          :facility_type=>nil,
          :geocode_status=>"GPS",
          :latitude=>39.7502666,
          :longitude=>-104.9951694,
          :city=>"Denver",
          :intersection_directions=>nil,
          :plus4=>nil,
          :state=>"CO",
          :street_address=>"1225 17th Street, Suite 130",
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
          :ev_network=>"SemaCharge Network",
          :ev_network_web=>"https://semaconnect.com/",
          :ev_other_evse=>nil,
          :ev_pricing=>"FREE",
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
          :groups_with_access_code_fr=>"TEMPORAIREMENT SUSPENDU (Public)",
          :ev_pricing_fr=>nil,
          :ev_network_ids=>{:station=>["5965"], :posts=>["2642", "2643"]},
          :distance=>0.0888,
          :distance_km=>0.14291}]
        }

    fuel_station = FuelStation.new(attributes)

    expect(fuel_station).to be_a FuelStation
    expect(fuel_station.name).to eq "CBRE As Agent for EQC Operating Trust"
    expect(fuel_station.access_times).to eq "MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified"
    expect(fuel_station.street_address).to eq "1225 17th Street, Suite 130"
    expect(fuel_station.city).to eq "Denver"
    expect(fuel_station.state).to eq "CO"
    expect(fuel_station.zip).to eq "80202"
    expect(fuel_station.concat_address).to eq "1225 17th Street, Suite 130, Denver, CO 80202"
    expect(fuel_station.fuel_type).to eq "ELEC"
    expect(fuel_station.distance_miles).to eq 0.0888
  end
end