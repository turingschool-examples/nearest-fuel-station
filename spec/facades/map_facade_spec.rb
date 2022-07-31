require 'rails_helper'

RSpec.describe MapFacade do 
  it 'creates poros for finding directions' do 
    from = "1331 17th St LL100, Denver, CO 80202"
    to = "1237 Tamarac st Denver CO 80220"
    
    map = MapFacade.directions(from, to)
    expect(map).to be_a(Map)
  end
end
