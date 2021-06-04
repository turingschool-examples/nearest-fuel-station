require 'rails_helper'

RSpec.describe 'fuel station search' do

  describe 'when user searches for the station and directions', :vcr do

    it 'shows info requested' do
      visit root_path
      select("Griffin Coffee", from: :location)

      click_button 'Find Nearest Station'

      expect(current_path).to eq("/search")
      expect(page).to have_content('Station name: Target T2225')
      expect(page).to have_content('Distance to final point: 0.42 mi')
    end
  end
end
