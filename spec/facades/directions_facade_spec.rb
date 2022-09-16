require 'rails_helper'

RSpec.describe 'DirectionsFacade', :vcr do
  it 'makes a call and returns directions based on starting and ending addresses' do
    starting_address = '1331 17th St LL100, Denver, CO 80202'
    ending_address = '1225 17th Street, Suite 130, Denver, CO 80202'
    directions_data = DirectionsFacade.get_directions(starting_address, ending_address)

    expect(directions_data).to be_a Directions
    expect(directions_data.time_to_destination).to be_a String
    expect(directions_data.directions_string).to be_a String
  end
end