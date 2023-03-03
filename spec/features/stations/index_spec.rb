require 'rails_helper'

RSpec.describe 'search page nrel' do 
  it "redirects to the /search page" do 
    visit "/"

    select "Turing"

    click_button "Find Nearest Station"

    expect(current_path).to eq("/search")
  end

  it "displays the nearest fuel station with its name, address, fuel type, and access times", :vcr do 

    visit "/search"

    expect(page).to have_content("Name: ")
    expect(page).to have_content("Address: ")
    expect(page).to have_content("Fuel Type: ")
    expect(page).to have_content("Access Times: ")
  end
end