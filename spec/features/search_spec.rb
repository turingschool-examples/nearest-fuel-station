require 'rails_helper'

RSpec.describe "Search" do
  describe "As an user" do
    it "It tells me the closest electric charging station for my selection" do
      visit "/"
      expect(page).to have_button("Find Nearest Station")
      
      select "Turing", from: :location
      click_on "Find Nearest Station"
      
      
      
      # expect(current_path).to eq("/search")
      # #first result
      # expect(current_path).to eq("/foods")
      # expect(page).to have_content("Description: SWEET POTATOES")
      # expect(page).to have_content("GTIN/UPC code: 070560951975")
      # expect(page).to have_content("Brand Owner: The Pictsweet Company")
      # expect(page).to have_content("Ingredients: SWEET POTATOES.")
      # #last result
      # expect(current_path).to eq("/foods")
      # expect(page).to have_content("Description: SWEET POTATOES")
      # expect(page).to have_content("GTIN/UPC code: 095829400193")
      # expect(page).to have_content("Brand Owner: C.H. Robinson Company")
      # expect(page).to have_content("Ingredients: ORGANIC SWEET POTATOES")
      # # expect(page).to have_content("")
    end
  end
end