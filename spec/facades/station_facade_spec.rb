require 'rails_helper'

RSpec.describe StationFacade do 
  it 'produces station objects' do 
    params = {location: '1331 17th St LL100, Denver, CO 80202'}
    station = StationFacade.get_station_data(params)

    expect(station).to be_an_instance_of(Station)
  end
end