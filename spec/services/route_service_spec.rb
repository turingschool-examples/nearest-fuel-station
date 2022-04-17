require 'rails_helper'

RSpec.describe 'Route Service' do
  it 'gets a route from a place' do
    to = "1225 17th Street, Suite 130, Denver, CO 80202"
    from = "1331 17th St, Ste LL100, Denver, CO 80202"
    route = RouteService.directions(to, from)
    
    expect(route[:route][:distance]).to eq(0.081)
    expect(route[:route][:formattedTime]).to eq("00:00:18")
  end
end