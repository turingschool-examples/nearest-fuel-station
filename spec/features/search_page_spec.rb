require 'rails_helper'

RSpec.describe 'search page', type: :feature do
  describe 'As a visitor' do
    describe 'When I visit the show page' do
        before :each do
          visit '/'
          select "Turing", from: "location" 
          click_button("Find Nearest Station")
          expect(current_path).to eq("/search")
        end

      it 'I can see the nearest electric fuel station to me with the name, address, fuel type, and access times' do
        within('#nearest_station') do 

          expect(page).to have_content('400 15th St Denver CO 80202') #TODO format with address, name etc to be more specific
          expect(page).to have_content('Tremont Street Garage')
          expect(page).to have_content('ELEC')
          expect(page).to have_content('Garage business hours; pay lot')
        end
      end

      it 'I should also see the distance to the nearest station to the 0.1 miles, travel time from turing to that station (nearest minute)' do 

        within('#nearest_station') do 
          expect(page).to have_content('0.8 miles away')
        end
      end

      xit 'I should also see and direction instructions to get to that fuel station ' do #  "Turn left onto Lawrence St Destination will be on the left"
        expect(page).to have_content("Start out going southwest on Blake St toward 15th St.")
        expect(page).to have_content("Turn left onto 14th St.")
        expect(page).to have_content("Turn left.")
        expect(page).to have_content("Turn left onto 15th St.")
        expect(page).to have_content("400 15TH ST is on the left.")
      end

    end
  end
end