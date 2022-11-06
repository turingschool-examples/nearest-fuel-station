require 'rails_helper'

RSpec.describe 'Search Page' do
  describe 'As a user' do
    describe 'When I visit "/"' do
      describe 'And I select "Turing" from the start location drop down' do
        describe 'And I click "Find Nearest Station"' do
          before :each do
            visit '/'
            select 'Turing', from: :location
            click_button 'Find Nearest Station'
          end

          it 'I should be on page "/search"' do
            expect(current_path).to eq('/search')
          end

          it 'I should see the closest electric fuel station to me' do
            expect(page).to have_content('Closest Station: ')
          end

          describe 'the station' do
            it 'I should see the station name' do
              expect(page).to have_content('Name: ')
            end

            it 'I should see the station address' do
              expect(page).to have_content('Address: ')
            end

            it 'I should see the fuel type' do
              expect(page).to have_content('Fuel Type: ')
            end

            it 'I should see the access times' do
              expect(page).to have_content('Access Times: ')
            end

            it 'I should see the distance to the nearest station' do
              expect(page).to have_content('Distance to Station: 0.1 miles')
            end

            it 'I should see the travel time from Turing to that fuel station' do
              expect(page).to have_content('Travel Time: 1 min')
            end

            it 'I should see the direction instructions to get to that fuel station' do
              expect(page).to have_content('Turn left onto Lawrence St Destination will be on the left')
            end
          end
        end
      end
    end
  end
end
