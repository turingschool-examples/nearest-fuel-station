require 'rails_helper'

RSpec.describe 'the welcome page' do
  describe "user can visit the welcome page" do
    scenario "and see a dropdown menu" do
      visit '/'
      expect(page).to have_content("Nearest Fuel Station")
      expect(page).to have_content("Search For The Nearest Electric Charging Station")
      expect(page).to have_button("Find Nearest Station")
    end

    describe "user selects Turing from start location" do
      it 'redirects to /search and displays the closest electric fuel station and directions', :vcr do
        station = FuelFacade.get_nearest_station("1331 17th St LL100, Denver, CO 80202")
        travel_info = DirectionFacade.get_travel_info("1331 17th St LL100, Denver, CO 80202", "1225 17th St, Denver, CO 80202")
        visit '/'

        select "Turing", from: "location"
        click_button "Find Nearest Station"

        expect(current_path).to eq(search_path)
        
        expect(page).to have_content(station.name)
        expect(page).to have_content(station.address)
        expect(page).to have_content(station.fuel_type)
        expect(page).to have_content(station.hours)
        expect(page).to have_content(travel_info.distance)
        expect(page).to have_content(travel_info.travel_time)
        expect(page).to have_content(travel_info.directions)
      end
    end
  end
end