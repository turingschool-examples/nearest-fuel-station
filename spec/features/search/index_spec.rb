require 'rails_helper'

RSpec.describe "Search Index Page", :vcr do
  it 'Shows location and directions to the nearest alternative fuel station' do
    visit root_path

    find('#location').find(:xpath, 'option[3]').select_option
    click_button 'Find Nearest Station'

    expect(current_path).to eq search_path
    expect(page).to have_content 'Closest Station to 1331 17th St LL100, Denver, CO 80202'
    expect(page).to have_content 'CBRE As Agent for EQC Operating Trust'
    expect(page).to have_content 'Address: 1225 17th Street, Suite 130, Denver, CO 80202'
    expect(page).to have_content 'Fuel Type: Elec'
    expect(page).to have_content 'Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified'
    expect(page).to have_content 'Distance From 1331 17th St LL100, Denver, CO 80202: 0.1 miles'
    expect(page).to have_content 'Time to Destination: 00 hours, 00 minutes, and 18 seconds.'
    expect(page).to have_content 'Step 1: Start out going southeast on 17th St toward Larimer St/CO-33.'
    expect(page).to have_content 'Step 2: 1225 17TH ST, SUITE 130 is on the right.'
  end
end
