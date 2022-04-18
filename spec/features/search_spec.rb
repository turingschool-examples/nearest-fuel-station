require 'rails_helper'

RSpec.describe 'user can search for fuel station' do
  it 'can select a dropdown menu item' do
    visit '/'

    select 'Turing'

    click_button 'Find Nearest Station'

    expect(current_path).to eq('/search')
    
    expect(page).to have_content("Closest Fuel Station")
    within("#station-info") do
      expect(page).to have_content("Name: CBRE As Agent for EQC Operating Trust")
      expect(page).to have_content("Address: 1225 17th Street, Suite 130, Denver, CO, 80202")
      expect(page).to have_content("Fuel Type: ELEC")
      expect(page).to have_content("Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
    end
  end

  it 'displays directions to the nearest fuel station' do
    visit '/'
    select 'Turing', from: :location
    click_button "Find Nearest Station"

    within("#travel-info") do
      expect(page).to have_content("Directions:")
      expect(page).to have_content("Travel Time: 00:00:18")
      expect(page).to have_content("Instructions:")
      expect(page).to have_content("Start out going southeast on 17th St toward Larimer St/CO-33.")
      expect(page).to have_content("1225 17TH ST, SUITE 130 is on the right.")
    end
  end
end
