require 'rails_helper'

RSpec.describe StationFacade do 
  it 'creates poros for station' do 
    location = "1331 17th St LL100, Denver, CO 80202"
    station = StationFacade.get_nearest(location)

    expect(station).to be_a(Station)
  end
end