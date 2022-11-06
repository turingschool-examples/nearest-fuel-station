require 'rails_helper'

RSpec.describe FuelStation do
  it 'exists' do
    station_data = {
      "access_code": "public",
      "access_days_time": "MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified",
      "access_detail_code": 'null',
      "cards_accepted": 'null',
      "date_last_confirmed": "2022-11-06",
      "expected_date": 'null',
      "fuel_type_code": "ELEC",
      "groups_with_access_code": "Public",
      "id": 204479,
      "open_date": "2022-01-08",
      "owner_type_code": 'null',
      "status_code": "E",
      "restricted_access": 'null',
      "station_name": "the 410 Parking Garage",
      "station_phone": "800-663-5633",
      "updated_at": "2022-11-06T00:38:22Z",
      "facility_type": 'null',
      "geocode_status": "GPS",
      "latitude": 39.7436886,
      "longitude": -104.9893148,
      "city": "Denver",
      "intersection_directions": 'null',
      "plus4": 'null',
      "state": "CO",
      "street_address": "1635 Tremont Street",
      "zip": "80202",
      "country": "US",
      "bd_blends": 'null',
      "cng_dispenser_num": 'null',
      "cng_fill_type_code": 'null',
      "cng_psi": 'null',
      "cng_renewable_source": 'null',
      "cng_total_compression": 'null',
      "cng_total_storage": 'null',
      "cng_vehicle_class": 'null',
      "e85_blender_pump": 'null',
      "e85_other_ethanol_blends": 'null',
      "ev_connector_types": [
          "J1772"
      ],
      "ev_dc_fast_num": 'null',
      "ev_level1_evse_num": 'null',
      "ev_level2_evse_num": 2,
      "ev_network": "SemaCharge Network",
      "ev_network_web": "https://semaconnect.com/",
      "ev_other_evse": 'null',
      "ev_pricing": "$0.25/kWh Energy Fee",
      "ev_renewable_source": 'null',
      "hy_is_retail": 'null',
      "hy_pressures": 'null',
      "hy_standards": 'null',
      "hy_status_link": 'null',
      "lng_renewable_source": 'null',
      "lng_vehicle_class": 'null',
      "lpg_primary": 'null',
      "lpg_nozzle_types": 'null',
      "ng_fill_type_code": 'null',
      "ng_psi": 'null',
      "ng_vehicle_class": 'null',
      "access_days_time_fr": 'null',
      "intersection_directions_fr": 'null',
      "bd_blends_fr": 'null',
      "groups_with_access_code_fr": "Public",
      "ev_pricing_fr": 'null',
      "ev_network_ids": {
          "station": [
              "5775"
          ],
          "posts": [
              "15958",
              "15962"
          ]
      },
      "distance": 0.08144,
      "distance_km": 0.13106
  }

  station = FuelStation.new(station_data)

  expect(station).to be_a FuelStation
  expect(station.name).to eq('the 410 Parking Garage')
  expect(station.access_times).to eq('MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified')
  expect(station.address).to eq('1635 Tremont Street, Denver, CO 80202')
  expect(station.fuel_type).to eq('ELEC')
  expect(station.distance).to eq(0.08144)
  end
end