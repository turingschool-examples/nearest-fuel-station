require 'rails_helper'

RSpec.describe MapService do 
  it 'establishes connection to find location' do 
    from = "1331 17th St LL100, Denver, CO 80202"
    to = "1237 Tamarac st Denver CO 80220"

    expect(MapService.find_directions(from, to)).to be_a(Hash)
  end
end