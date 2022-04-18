require 'rails_helper'

RSpec.describe 'directions service' do
  it 'can connect to a directions api' do
    from = '1331 17th St, Ste LL100, Denver, CO 80202'
    to = '1225 17th Street, Suite 130, Denver CO, 80202'

    directions = DirectionsService.find_directions(from, to)

    expect(directions).to be_a(Hash)
    expect(directions).to have_key(:route)

    expect(directions[:route]).to have_key(:formattedTime)
    expect(directions[:route][:formattedTime]).to be_a(String)

    expect(directions[:route]).to have_key(:legs)
    expect(directions[:route][:legs]).to be_an(Array)

    expect(directions[:route][:legs].first).to have_key(:maneuvers)
    expect(directions[:route][:legs].first[:maneuvers]).to be_an(Array)

    directions[:route][:legs].first[:maneuvers].each do |manuever|
      expect(manuever).to have_key(:narrative)
    end
  end
end
