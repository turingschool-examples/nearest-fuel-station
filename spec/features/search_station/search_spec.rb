require 'rails_helper'

RSpec.describe "Station Search" do
  scenario 'search_stations_by_current_location', :vcr do
    visit '/'
    select 'The Noshery', from: :location
    click_button 'Find Nearest Station'
    expect(current_path).to eq('/search')

    expect(page).to have_content('Closest Station')
    expect(page).to have_css('.stations', count: 16)

    expect(page).to have_css('.name')
    expect(page).to have_css('.address')
    expect(page).to have_css('.fuel-type')
    expect(page).to have_css('.distance')
    expect(page).to have_css('.travel-time')
    expect(page).to have_css('.directions')
  end
end