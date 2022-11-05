require 'rails_helper'

RSpec.describe 'search for nearest charging station' do
  before :each do
    # As a user
    # When I visit "/"
    visit root_path
    # And I select "Turing" form the start location drop down (Note: Use the existing search form)\]
    select 'Turing', from: :location
    # And I click "Find Nearest Station"
    click_on 'Find Nearest Station'
  end

  it 'will get the user to the search index page for the selected start point' do
    expect(current_path).to eq('/search')
  end

  it 'will display the closest station and  demographic info', :vcr do
    @station = StationFacade.closest_station("1331 17th St LL100, Denver, CO 80202")
    # Then I should see the closest electric fuel station to me.
    # For that station I should see
    # - Name
    expect(page).to have_content(@station.name)
    # - Address
    expect(page).to have_content(@station.address)
    # - Fuel Type
    expect(page).to have_content(@station.fuel_type)
    # - Access Times
    expect(page).to have_content(@station.hours)
  end

  it 'will show distance, travel time, and directions to the station from my starting point', :vcr do
    @station = StationFacade.closest_station("1331 17th St LL100, Denver, CO 80202")
    @directions = DirectionsFacade.get_directions("1331 17th St LL100, Denver, CO 80202", @station.lat, @station.long)
    # I should also see:
    # - the distance of the nearest station (should be 0.1 miles)
    expect(page).to have_content(@directions.distance)
    # # - the travel time from Turing to that fuel station (should be 1 min)
    expect(page).to have_content(@directions.time)
    # # - The direction instructions to get to that fuel station
    expect(page).to have_content(@directions.directions)
    #   "Turn left onto Lawrence St Destination will be on the left"
  end

end