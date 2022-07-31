require 'rails_helper'

RSpec.describe MapQuestService do 
  it 'returns the data for the station closest to Turing' do 
    from = '1331 17th St LL100, Denver, CO 80202'
    to = '1550 Market St'

    direction_data = MapQuestService.get_directions(from, to)
    # binding.pry
    expect(direction_data).to be_a(Hash)
    expect(direction_data[:route]).to have_key(:distance)
    expect(direction_data[:route]).to have_key(:formattedTime)
    expect(direction_data[:route][:legs].first).to have_key(:maneuvers)

  end
end