require 'rails_helper'

RSpec.describe MapquestFacade do
  it 'creates a Directions poro from get directions call', :vcr do
    from = ("1331 17th St, Denver, CO 80202")
    to = ("1225 17th Street, Denver, CO 80202")
    directions = MapquestFacade.create_directions(from, to)

    expect(directions).to be_an_instance_of(Directions)
  end
end
