require 'rails_helper'

RSpec.describe Destination do
  it "Has attributes" do
    data = 
          {:route=>
            {
            :distance=>0.081,
            :formattedTime=>"00:00:40",
            :legs=>
              [{:maneuvers=>
                [{:narrative=>"Start out going southeast on 17th St toward Larimer St/CO-33."}]
              }]
            }
          }
    destination = Destination.new(data)

    expect(destination.distance).to eq(0.081)
    expect(destination.travel_time).to eq('00:00:40')
    expect(destination.directions).to eq("Start out going southeast on 17th St toward Larimer St/CO-33.")
  end
end