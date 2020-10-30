# As a user
# When I visit "/"
# And I select "Turing" form the start location drop down (Note: Use the existing search form)
# And I click "Find Nearest Station"
# Then I should be on page "/search"
# Then I should see the closest electric fuel station to me.
# For that station I should see
# - Name
# - Address
# - Fuel Type
# - Access Times
# I should also see:
# - the distance of the nearest station (should be 0.1 miles)
# - the travel time from Turing to that fuel station (should be 1 min)
# - The direction instructions to get to that fuel station
#   "Turn left onto Lawrence St Destination will be on the left"

require 'rails_helper'

RSpec.describe 'Station Search' do
  it 'When I find closest station, I am taken to /search and I see the stations name, address, fuel type, access times, and also distance to, travel time, and direction instructions' do
    visit(root_path)
    select('Turing', from: 'location').select_option
    click_button('Find Nearest Station')
    expect(current_path).to eq(search_path)

    expect(page).to have_css('.name')
    expect(page).to have_css('.address')
    expect(page).to have_css('.fuel')
    expect(page).to have_css('.access')

    expect(page).to have_css('.distance')
    expect(page).to have_css('.travelTime')
    expect(page).to have_css('.directions')
  end
end