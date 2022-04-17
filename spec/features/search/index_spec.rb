require 'rails_helper'

RSpec.describe 'Search Index Page' do
  before(:each) do 
    visit root_path
    select "Turing", :from => "location"
    click_button 'Find Nearest Station'
  end

  it 'current path should be search_index' do
    expect(current_path).to eq(search_path)
  end

end