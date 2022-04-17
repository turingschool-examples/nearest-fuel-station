require 'rails_helper'

describe "user can search by location" do
  it "returns information about the station" do
    visit '/'
    select "Turing"
    click_button "Find Nearest Station"
    expect(current_path).to eq('/search')
    expect(page).to have_content("CBRE As Agent for EQC Operating Trust")
    expect(page).to have_content("1225 17th Street, Suite 130")
    expect(page).to have_content("Denver")
    expect(page).to have_content("CO")
    expect(page).to have_content("80202")
    expect(page).to have_content("ELEC")
    expect(page).to have_content("MO: Not Specified; TU: Not Specified; WE: Not Specified; TH: Not Specified; FR: Not Specified; SA: Not Specified; SU: Not Specified")
  end
end
