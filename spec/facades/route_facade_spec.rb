require 'rails_helper'

RSpec.describe 'Route Facade' do
  it 'collects route data' do
    to = "1225 17th Street, Suite 130, Denver, CO 80202"
    from = "1331 17th St, Ste LL100, Denver, CO 80202"
    route = RouteFacade.directions(to, from)

    expect(route).to be_a Route
  end
end