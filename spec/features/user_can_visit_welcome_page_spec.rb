require 'rails_helper'

describe "user can visit the welcome page" do
  scenario "and see a dropdown menu" do
    visit '/'
    expect(page).to have_content("Nearest Fuel Station")
    expect(page).to have_content("Search For The Nearest Electric Charging Station")
    expect(page).to have_button("Find Nearest Station")
  end

  scenario "And I select Turing form the start location drop down (Note: Use the existing search form) And I click Find Nearest Station Then I should be on page /search" do

    visit '/'
    select "Turing", from: "location" 
    click_button("Find Nearest Station")
    expect(current_path).to eq("/search")
  end
end
