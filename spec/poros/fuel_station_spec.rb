require 'rails_helper'

RSpec.describe FuelStation do
  it 'exists with attributes' do
    data = {
      :access_days_time=>
    "MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified",
      :fuel_type_code=>"ELEC",
      :station_name=>"CBRE As Agent for EQC Operating Trust",
      :city=>"Denver",
      :state=>"CO",
      :street_address=>"1225 17th Street, Suite 130",
      :zip=>"80202",
      :distance=>0.0888
    }
    fuel_station = FuelStation.new(data)

    expect(fuel_station.fuel_type).to eq("ELEC")
  end
end
