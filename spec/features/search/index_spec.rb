require 'rails_helper'

RSpec.describe 'Search Index Page' do

  it "exists" do
    visit '/'
    expect(page).to have_content('Find Nearest Station')
  end

  it "when a user selects Turing from the drop down, and clicks Find Nearest Station, they are redirected to /search" do
    visit '/'
    select "Turing", :from => "location"
    click_button 'Find Nearest Station'

    expect(current_path).to eq('/search')
  end
end
