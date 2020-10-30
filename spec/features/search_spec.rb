require 'rails_helper'

RSpec.describe 'Search alternative fueling stations' do
  describe 'As a visitor on the home page' do
    describe "When I select 'Turing' from the start location drop down" do
      describe "And I click 'Find Nearest Station'" do
        before :each do
          visit '/'
          click_button 'Find Nearest Station'
        end

        it "Then I should be on the page '/search'" do
          expect(current_path).to eq('/search')
        end

        it "I should see the closest electric fuel station to me" do
          expect(page).to have_content("Name: Seventeenth Street Plaza")
          expect(page).to have_content("Address: 1225 17th St., Denver, CO, 80202")
          expect(page).to have_content("Fuel Type: ELEC")
          expect(page).to have_content("Access Times: MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
        end
      end
    end
  end
end
