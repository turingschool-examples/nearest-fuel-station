require 'rails_helper'

RSpec.describe NrelFacade do
  it 'creates a FuelStation poro from nearest station call', :vcr do
    location = ('1331 17th St LL100, Denver, CO 80202')
    fuel_station = NrelFacade.create_fuel_station(location)

    expect(fuel_station).to be_an_instance_of(FuelStation)
  end
end
