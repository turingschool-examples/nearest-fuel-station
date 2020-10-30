require 'rails_helper'

RSpec.describe "Search" do
  describe "As an user" do
    it "It tells me the closest electric charging station for my selection" do
      visit "/"
      expect(page).to have_button("Find Nearest Station")
      
      select "Turing", from: :location
      click_on "Find Nearest Station"
      
      expect(current_path).to eq("/search")
      expect(page).to have_content("Name: Seventeenth Street Plaza")
      expect(page).to have_content("Street Address: 1225 17th St.")
      expect(page).to have_content("Fuel Type: ELEC")
      expect(page).to have_content("Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
      
      expect(page).to have_content("Distance to nearest station: 0.1 miles")
      expect(page).to have_content("Travel time to nearest station: 00:00:40")
      expect(page).to have_content("Directions to nearest station:")
      expect(page).to have_content("Start out going southeast on 17th St toward Larimer St/CO-33.")
      expect(page).to have_content("1225 17TH ST is on the right.")

    end
  end
end