require 'rails_helper'

RSpec.describe Directions do
  xit 'exists with attributes' do
    data = [travel_time, directions]
    directions = Directions.new(data)

    expect(directions.travel_time).to eq("00:00:18")
    expect(directions.instructions).to eq(["Start out going southeast on 17th St toward Larimer St/CO-33." "1225 17TH ST is on the right."])
  end
end
