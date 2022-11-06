require 'rails_helper'

RSpec.describe MapService do
  it 'returns map data' do
    from = '1331 17th St, Denver, CO'
    to = '1225 17th St, Denver, CO'
    search = MapService.get_directions(from, to)

    expect(search).to be_a Hash
    expect(search[:route]).to be_a Hash

    expect(search[:route]).to have_key :distance
    expect(search[:route][:distance]).to be_a Float

    expect(search[:route]).to have_key :formattedTime
    expect(search[:route][:formattedTime]).to be_a String

    expect(search[:route][:legs]).to be_an Array
    expect(search[:route][:legs][0][:maneuvers]).to be_an Array

    expect(search[:route][:legs][0][:maneuvers][0]).to have_key :narrative
    expect(search[:route][:legs][0][:maneuvers][0][:narrative]).to be_a String
  end
end