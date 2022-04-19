require 'rails_helper'

RSpec.describe 'Search Method' do
  it "can search for nearest stations" do
    visit '/'

    select("Turing")

    click_button("Find Nearest Station")
    expect(current_path).to eq("/search")

    expect(page).to have_content("Station Name:")
    expect(page).to have_content("Station Address:")
    expect(page).to have_content("Station Fuel Type:")
    expect(page).to have_content("Station Access Times:")
  end

  it "can show directions and info to nearest station" do
    visit '/'

    select("Turing")

    click_button("Find Nearest Station")

    expect(page).to have_content("Distance to Station:")
    expect(page).to have_content("Travel Time:")
    expect(page).to have_content("Directions:")
  end
end
