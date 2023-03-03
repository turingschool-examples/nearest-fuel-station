require 'rails_helper'

RSpec.describe "Station Service" do 
  it "retrieves a list of nearby stations", :vcr do 
    stations = StationService.get_stations("1510, Blake St, Denver, CO")
    # require 'pry'; binding.pry 
    expect(stations).to be_a(Array)
  end
end