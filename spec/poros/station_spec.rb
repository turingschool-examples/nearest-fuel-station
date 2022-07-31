require 'rails_helper'

RSpec.describe Station do 
  it 'exists and has attributes' do 
    location = "1331 17th St LL100, Denver, CO 80202"
    station = StationFacade.get_nearest(location)

    expect(station).to be_a(Station)
    expect(station.full_address).to eq("1225 17th Street, Suite 130 Denver CO 80202")
  end
end