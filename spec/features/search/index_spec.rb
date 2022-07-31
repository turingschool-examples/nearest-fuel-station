require 'rails_helper'

RSpec.describe 'Search Index' do 
  it 'can produce data from the search' do 
    visit '/'

    select 'Turing', from: :location
    click_on 'Find Nearest Station'

    expect(current_path).to eq('/search')
    expect(page).to have_content('1550 Market St')
    expect(page).to have_content('ELEC')
    expect(page).to have_content('24 hours daily')
    expect(page).to have_content('00:01:00')
  end
end