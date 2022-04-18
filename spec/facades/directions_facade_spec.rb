require 'rails_helper'

RSpec.describe 'directions facade' do
  it 'can return directions data' do
    from = '1331 17th St, Ste LL100, Denver, CO 80202'
    to = '1225 17th Street, Suite 130, Denver CO, 80202'

    results = DirectionsFacade.get_station_directions(from, to)

    expect(results).to be_a(Direction)
  end
end
