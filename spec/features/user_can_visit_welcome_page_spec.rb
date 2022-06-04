require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")
  end
  # As a user
  # When I visit "/"
  # And I select "Turing" form the start location drop down (Note: Use the existing search form)
  # And I click "Find Nearest Station"
  # Then I should be on page "/search"
  # Then I should see the closest electric fuel station to me.
  #
  # For that station I should see - NERL
  # - Name
  # - Address
  # - Fuel Type
  # - Access Times
  #
  # I should also see: - MapQuest
  # - the distance of the nearest station (should be 0.1 miles)
  # - the travel time from Turing to that fuel station (should be 1 min)
  # - The direction instructions to get to that fuel station
  #   "Turn left onto Lawrence St Destination will be on the left"
  scenario "and it displays closest fuel station, info & directions " do
    visit "/"
    select('Turing')
    click_on "Find Nearest Station"
    expect(current_path).to eq("/search")
    expect(page).to have_content('Name: CBRE As Agent for EQC Operating Trust')
    expect(page).to have_content('Address: 1225 17th Street, Suite 130')
    expect(page).to have_content('Fuel type: ELEC')
    expect(page).to have_content("Access times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")

    expect(page).to have_content('Distance: 0.1 miles')
    expect(page).to have_content('Travel time: 1 minute')
    expect(page).to have_content('Directions: Turn left onto Lawrence St Destination will be on the left')
  end
end
