require 'rails_helper'

RSpec.describe Direction do 
  it 'exists and has attributes' do 
    route = 
    {
        "distance": 0.333,
        "formattedTime": "00:01:00",
        "legs": 
        [
            {
                "origNarrative": "Go southwest on Larimer St/CO-33.",
                "maneuvers": 
                [
                    {
                        "distance": 0.043,
                        "streets": 
                        [
                            "17th St"
                        ],
                        "narrative": "Start out going southeast on 17th St toward Larimer St/CO-33."
                    }
                ]
              }
            ]
          }
    directions = Direction.new(route)
    
    expect(directions.distance).to eq(0.333)
    expect(directions.travel_time).to eq("00:01:00")
    expect(directions.narrative).to eq("Start out going southeast on 17th St toward Larimer St/CO-33.")
  end
end