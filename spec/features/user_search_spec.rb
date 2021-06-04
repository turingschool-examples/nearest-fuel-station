require 'rails_helper'

RSpec.describe 'user can select location and search for station' do
  before :each do

    visit "/"
    select 'The Noshery', from: :location
    click_on 'Find Nearest Station'
  end

  describe 'when user clicks find nearest station' do
    it 'can see closest electric fuel station and info' do
      expect(current_path).to eq("/search")
      expect(page.status_code).to eq 200
      expect(page).to have_content("MOLLYS STATION 2")
      expect(page).to have_content("4801 Fenton St Denver, CO 80212")
      expect(page).to have_content("ELEC")
      expect(page).to have_content("24 hours daily")
    end

    it 'can see distance, travel time and directions to that station' do
      expect(page).to have_content("2.669")
      expect(page).to have_content("00:04:13")
      expect(page).to have_content("Start out going north on N Lowell Blvd toward W 50th Ave.Turn right onto Regis Blvd.Turn right onto Federal Blvd/US-287 S.Merge onto I-70 W.Take EXIT 270 toward Harlan Street.Turn right onto W 48th Ave.Turn left onto Fenton St.4801 FENTON ST is on the left.")
    end
  end
end
