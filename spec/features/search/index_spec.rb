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
            location = "1331 17th St LL100, Denver, CO 80202"
            @station = FuelFacade.get_nearest_station(location)
            from = location
            to = @station.address
            @map = MapFacade.find_directions(from, to)
          end

          it 'I should be on page "/search"' do
            expect(current_path).to eq('/search')
          end

          it 'I should see the closest electric fuel station to me' do
            expect(page).to have_content("Closest Station: #{@station.name}")
          end

          describe 'the station' do
            it 'I should see the station address' do
              expect(page).to have_content("Address: #{@station.address}")
            end

            it 'I should see the fuel type' do
              expect(page).to have_content("Fuel Type: #{@station.fuel_type}")
            end

            it 'I should see the access times' do
              expect(page).to have_content("Access Times: #{@station.access_times}")
            end

            it 'I should see the distance to the nearest station' do
              expect(page).to have_content("Distance to Station: #{@map.distance} miles")
            end

            it 'I should see the travel time from Turing to that fuel station' do
              expect(page).to have_content("Travel Time: #{@map.travel_time}")
            end

            it 'I should see the direction instructions to get to that fuel station' do
              expect(page).to have_content("Directions: #{@map.direction_instructions}")
            end
          end
        end
      end
    end
  end
end
