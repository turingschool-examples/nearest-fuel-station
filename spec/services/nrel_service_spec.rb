require 'rails_helper'

RSpec.describe NrelService, :vcr do 
  describe 'nearest fuel station endpoint' do
    it 'returns nearest fuel station' do
      location = ('1331 17th St LL100, Denver, CO 80202')
      json = NrelService.get_nearest_station(location)

      expect(json).to be_a(Array)
      expect(json[0]).to have_key(:fuel_type_code)
      expect(json[0]).to have_key(:station_name)
      expect(json[0]).to have_key(:street_address)
      expect(json[0]).to have_key(:access_days_time)
      expect(json[0]).to have_key(:distance)
      expect(json[0][:station_name]).to eq("CBRE As Agent for EQC Operating Trust")
    end
  end
end
