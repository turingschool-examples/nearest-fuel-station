require 'rails_helper'

RSpec.describe 'Search Index' do 
  it 'can produce data from the search' do 
    visit '/'

    select 'Turing', from: :location
    click_on 'Find Nearest Station'

    expect(current_path).to eq('/search')
  end
end