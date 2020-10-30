require 'rails_helper'

describe "As a visitor" do
  describe "user can select Turing from drop down on search form" do
    it "and see the nearest station" do
      visit '/'

      select "Turing", from: :location

      click_on "Find Nearest Station"

      expect(current_path).to eq('/search')

      within(".name") do
        expect(page).to have_content("station name here")
      end
      within(".address") do
        expect(page).to have_content("address here")
      end
      within(".fuel") do
        expect(page).to have_content("fuel type here")
      end
      within(".times") do
        expect(page).to have_content("access times here")
      end
      within(".distance") do
        expect(page).to have_content("0.1 miles")
      end
      within(".travel_time") do
        expect(page).to have_content("1 min")
      end
      within(".directions") do
        expect(page).to have_content("Turn left onto Lawrence St Destination will be on the left")
      end
    end
  end
end
