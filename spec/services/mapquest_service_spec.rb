require 'rails_helper'

RSpec.describe MapquestService, :vcr do
  describe 'directions endpoint' do
    it 'returns directions' do
      from = "1331 17th St, Denver, CO 80202"
      to = "1225 17th Street, Denver, CO 80202"
      json = MapquestService.get_directions(from, to)

      expect(json).to be_a(Hash)
      expect(json).to have_key(:distance)
      expect(json).to have_key(:formattedTime)
      expect(json).to have_key(:formattedTime)
      expect(json).to have_key(:legs)
      expect(json[:legs][0]).to have_key(:maneuvers)
      expect(json[:legs][0][:maneuvers][0]).to have_key(:narrative)
    end
  end
end
