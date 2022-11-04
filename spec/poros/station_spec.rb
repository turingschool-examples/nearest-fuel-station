require 'rails_helper'

RSpec.describe Station do
  it 'will only grab the info it needs from service call', :vcr do
    station_data = {
      "access_code": "public",
      "access_days_time": "24 hours daily",
      "access_detail_code": nil,
      "cards_accepted": nil,
      "date_last_confirmed": "2022-11-04",
      "expected_date": nil,
      "fuel_type_code": "ELEC",
      "groups_with_access_code": "Public",
      "id": 233490,
      "open_date": "2022-10-14",
      "owner_type_code": nil,
      "status_code": "E",
      "restricted_access": nil,
      "station_name": "17TH ST PLAZA P1 EV STATION",
      "station_phone": "888-758-4389",
      "updated_at": "2022-11-04T01:44:34Z",
      "facility_type": nil,
      "geocode_status": "GPS",
      "latitude": 39.750284,
      "longitude": -104.995227,
      "city": "Denver",
      "intersection_directions": nil,
      "plus4": nil,
      "state": "CO",
      "street_address": "1225 17th St",
      "zip": "80202",
      "country": "US",
      "bd_blends": nil,
      "cng_dispenser_num": nil,
      "cng_fill_type_code": nil,
      "cng_psi": nil,
      "cng_renewable_source": nil,
      "cng_total_compression": nil,
      "cng_total_storage": nil,
      "cng_vehicle_class": nil,
      "e85_blender_pump": nil,
      "e85_other_ethanol_blends": nil,
      "ev_connector_types": [
          "J1772"
      ],
      "ev_dc_fast_num": nil,
      "ev_level1_evse_num": nil,
      "ev_level2_evse_num": 2,
      "ev_network": "ChargePoint Network",
      "ev_network_web": "http://www.chargepoint.com/",
      "ev_other_evse": nil,
      "ev_pricing": nil,
      "ev_renewable_source": nil,
      "hy_is_retail": nil,
      "hy_pressures": nil,
      "hy_standards": nil,
      "hy_status_link": nil,
      "lng_renewable_source": nil,
      "lng_vehicle_class": nil,
      "lpg_primary": nil,
      "lpg_nozzle_types": nil,
      "ng_fill_type_code": nil,
      "ng_psi": nil,
      "ng_vehicle_class": nil,
      "access_days_time_fr": nil,
      "intersection_directions_fr": nil,
      "bd_blends_fr": nil,
      "groups_with_access_code_fr": "Public",
      "ev_pricing_fr": nil,
      "ev_network_ids": {
          "station": [
              "USCPIL13129851"
          ],
          "posts": [
              "22450591",
              "22450601"
          ]
      },
      "distance": 0.08212,
      "distance_km": 0.13216
  }

  station = Station.new(station_data)

  expect(station.address).to eq("1225 17th St")
  expect(station.distance).to eq(0.08212)
  expect(station.fuel_type).to eq("ELEC")
  expect(station.hours).to eq("24 hours daily")
  expect(station.name).to eq("17TH ST PLAZA P1 EV STATION")
  end
end