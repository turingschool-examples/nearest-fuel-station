require 'rails_helper'

RSpec.describe StationFacade do 
  it "gets data for stations by location" do 
    stations = StationFacade.create_stations("1510, Blake St, Denver, CO")

    expect(stations).to be_a(Array)
    expect(stations[0]).to be_a(Station)
  end
end