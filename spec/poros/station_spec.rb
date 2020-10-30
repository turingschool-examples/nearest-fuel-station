require 'rails_helper'

RSpec.describe Station do
  it "Has attributes" do
    data = {
    "latitude": 39.750614,
    "longitude": -104.996775,
    "location_country": "US",
    "precision": {
        "value": 9,
        "name": "premise",
        "types": [
            "premise"
        ]
    },
    "station_locator_url": "http://www.afdc.energy.gov/afdc/locator/stations/",
    "total_results": 129,
    "station_counts": {
        "total": 394,
        "fuels": {
            "BD": {
                "total": 0
            },
            "E85": {
                "total": 0
            },
            "ELEC": {
                "total": 394,
                "stations": {
                    "total": 129
                }
            },
            "HY": {
                "total": 0
            },
            "LNG": {
                "total": 0
            },
            "CNG": {
                "total": 0
            },
            "LPG": {
                "total": 0
            }
        }
    },
    "offset": 0,
    "fuel_stations": [
        {
            "access_code": "public",
            "access_days_time": "MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified",
            "access_detail_code": 'null',
            "cards_accepted": 'null',
            "date_last_confirmed": "2020-10-30",
            "expected_date": 'null',
            "fuel_type_code": "ELEC",
            "groups_with_access_code": "Public",
            "id": 147967,
            "open_date": 'null',
            "owner_type_code": 'null',
            "status_code": "E",
            "station_name": "Seventeenth Street Plaza",
            "station_phone": "800-663-5633",
            "updated_at": "2020-10-30T09:23:02Z",
            "facility_type": 'null',
            "geocode_status": "GPS",
            "latitude": 39.7501605,
            "longitude": -104.9951224,
            "city": "Denver",
            "intersection_directions": 'null',
            "plus4": 'null',
            "state": "CO",
            "street_address": "1225 17th St.",
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
            "ev_pricing": "$1.00-$6.00/Hr Variable Parking Fee",
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
                    "1114"
                ],
                "posts": [
                    "2642",
                    "2643"
                ]
            },
            "distance": 0.0934,
            "distance_km": 0.15031
        }
    ]
}
    station = Station.new(data)

    expect(station.name).to be_a(String)
    expect(station.address).to be_a(String)
    expect(station.city).to be_a(String)
    expect(station.state).to be_a(String)
    expect(station.zip).to be_a(String)
    expect(station.fuel).to eq("ELEC")
    expect(station.times).to eq('MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified')
  end
end