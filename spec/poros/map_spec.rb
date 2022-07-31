require 'rails_helper'

RSpec.describe 'Map Poro' do 
  it 'creates map poro' do 
    from = "1331 17th St LL100, Denver, CO 80202"
    to = "1237 Tamarac st Denver CO 80220"
    map = MapFacade.directions(from, to)
    result = [["Start out going southeast on 17th St toward Larimer St/CO-33.",
              "Turn left onto Lawrence St/CO-33.",
              "Turn right onto 19th St.",
              "Turn left onto Stout St.",
              "Turn right onto Park Ave.",
              "Turn slight left onto E Colfax Ave/I-70 Bus E/US-40 E/US-287 S.",
              "Turn right onto N Tamarac St.",
              "1237 TAMARAC ST is on the right."]]

    expect(map).to be_a(Map)
    expect(map.distance).to eq(6.291)
    expect(map.time).to eq("00:14:56")
    expect(map.instructions).to eq(result)
  end
end