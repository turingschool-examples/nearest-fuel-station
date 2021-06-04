require 'rails_helper'

describe "search index" do
  scenario "user selects fuel station and redirects to a fuel station information page", :vcr do
    visit '/'
    select "The Noshery", :from => "location"
    click_button("Find Nearest Station")
    expect(current_path).to eq("/search")

    expect(page).to have_content("Nearest Station: Mollys Station 2")
    expect(page).to have_content("Address: 4801 Fenton St, Denver, CO 80212")
    expect(page).to have_content("Fuel Type: ELEC")
    expect(page).to have_content("Access Times: 24 hours daily")
    expect(page).to have_content("Distance: 24 hours daily miles away")
    expect(page).to have_content("Directions:")
    expect(page).to have_content("Start out going north on N Lowell Blvd toward W 50th Ave.")
    expect(page).to have_content("Turn right onto Regis Blvd.")
    expect(page).to have_content("Turn right onto Federal Blvd/US-287 S")
    expect(page).to have_content("Merge onto I-70 W")
    expect(page).to have_content("Take EXIT 270 toward Harlan Street")
    expect(page).to have_content("Turn right onto W 48th Ave")
    expect(page).to have_content("Turn left onto Fenton St")
    expect(page).to have_content("4801 FENTON ST is on the left")
  end
end
