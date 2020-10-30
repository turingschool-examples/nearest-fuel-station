require 'rails_helper'

describe "As a visitor" do
  describe "user can select Turing from drop down on search form" do
    it "and see the nearest station" do
      visit '/'

      select "Turing", from: :location

      click_on "Find Nearest Station"

      expect(current_path).to eq('/search')

      within(".name") do
        expect(page).to have_content("Seventeenth Street Plaza")
      end
      within(".address") do
        expect(page).to have_content("1225 17th St.")
      end
      within(".fuel") do
        expect(page).to have_content("ELEC")
      end
      within(".times") do
        expect(page).to have_content("Not Specified")
      end
      within(".distance") do
        expect(page).to have_content(0.081)
      end
      within(".travel_time") do
        expect(page).to have_content("00:00:40")
      end
      within(".directions") do
        expect(page).to have_content("Start out going southeast on 17th St toward Larimer St/CO-33.")
      end
    end
  end
end
