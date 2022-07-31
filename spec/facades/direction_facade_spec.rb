require 'rails_helper'

RSpec.describe DirectionFacade do 
  it 'makes objects with service data' do 
    from = '1331 17th St LL100, Denver, CO 80202'
    to = '1550 Market St'

    direction_data = DirectionFacade.get_directions(from, to)

    expect(direction_data).to be_an_instance_of(Direction)
  end
end