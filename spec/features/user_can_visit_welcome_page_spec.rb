require 'rails_helper'

# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")

    select "Turing", from: :location
    click_button "Find Nearest Station"

    station = StationFacade.get_nearest_station('1331 17th St LL100, Denver, CO 80202')
    expect(current_path).to eq('/search')
    expect(page).to have_content(station.name)
    expect(page).to have_content(station.address)
    expect(page).to have_content(station.fuel_type)
    expect(page).to have_content(station.access_times)
    # expect(page).to have_content("CBRE As Agent for EQC Operating Trust")
  end
end
