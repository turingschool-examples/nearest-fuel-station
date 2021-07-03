require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")
  end

  scenario "from dropdown, selects station, clicks find nearest station, and redirects", :vcr do
    visit '/'
    select "The Noshery", :from => "location"
    click_button("Find Nearest Station")
    expect(current_path).to eq("/search")
    # Then I should see the closest electric fuel station to me.
    # For that station I should see
  end
end
