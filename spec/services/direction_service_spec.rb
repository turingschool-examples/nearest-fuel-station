require 'rails_helper'

describe DirectionService do
  context "class methods" do
    context "#get_nearest_station(address)" do
      it "returns station data" do
        address = "1438 Steele St, Denver, CO 80206"
        search = StationService.get_nearest_station(address)
        require 'pry' ; binding.pry
        expect(search).to be_a Hash
        expect(search[:results]).to be_an Array
        movie = search[:results].first

        expect(movie).to have_key :title
        expect(movie[:title]).to be_a(String)

        expect(movie).to have_key :id
        expect(movie[:id]).to be_an(Integer)

        expect(movie).to have_key :vote_average
        expect(movie[:vote_average]).to be_a(Float)
      end
    end

  end
end