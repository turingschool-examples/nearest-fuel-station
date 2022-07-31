require 'rails_helper'

RSpec.describe 'search index' do 

  it 'shows station details' do 
    visit '/'

    select "Turing", from: :location
    click_button "Find Nearest Station"

    expect(current_path).to eq('/search')
    expect(page).to have_content("1225 17th Street, Suite 130 Denver CO 80202")
    expect(page).to have_content("ACCESS TIMES:")
    expect(page).to have_content("FUEL TYPE:")
  end

  it 'shows map details' do 
    visit '/'

    select "Turing", from: :location
    click_button "Find Nearest Station"

    expect(current_path).to eq('/search')
    save_and_open_page
    expect(page).to have_content("DISTANCE: 0.081")
    expect(page).to have_content("TIME TO TRAVEL: 00:00:18")
    expect(page).to have_content("Start out going southeast on 17th St toward Larimer St/CO-33.")
  end
end