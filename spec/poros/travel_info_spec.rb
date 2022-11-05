require 'rails_helper'

RSpec.describe TravelInfo do
  before :each do
    @travel_info= TravelInfo.new(
  {
   :distance=>0.081,
   :formattedTime=>"00:00:18",
   :legs=>
    [{
      :maneuvers=>
       [{:distance=>0.081,
         :streets=>["17th St"],
         :narrative=>"Start out going southeast on 17th St toward Larimer St/CO-33.",
         :turnType=>6,
         :startPoint=>{:lng=>-104.996773, :lat=>39.75061},
         :index=>0,
         :formattedTime=>"00:00:18",
         :directionName=>"Southeast",
         :maneuverNotes=>[],
         :linkIds=>[],
         :signs=>[],
         :mapUrl=>
          "http://www.mapquestapi.com/staticmap/v5/map?key=jJik4SSZUqg9Hcr2qAnt4p03Mc89HMCk&size=225,160&locations=39.7506103515625,-104.99677276611328|marker-1||39.74977111816406,-104.99571228027344|marker-2||&cente
r=39.75019073486328,-104.99624252319336&defaultMarker=none&zoom=14&rand=-2023386539&session=6366c567-004a-6750-02b4-36f5-1206474f1421",
         :transportMode=>"AUTO",
         :attributes=>0,
         :time=>18
        },
        {:distance=>0,
         :streets=>[],
         :narrative=>"1225 17TH ST is on the right.",
         :turnType=>-1,
         :startPoint=>{:lng=>-104.995712, :lat=>39.749771},
         :index=>1,
         :formattedTime=>"00:00:00",
         :directionName=>"",
         :maneuverNotes=>[],
         :linkIds=>[],
         :signs=>[],
         :transportMode=>"AUTO",
         :attributes=>0,
         :time=>0}]}]})
  end

  it 'exists' do
    expect(@travel_info).to be_a(TravelInfo)
  end

  it 'has a distance' do
    expect(@travel_info.distance).to eq(0.081)
  end

  it 'has a travel time' do
    expect(@travel_info.travel_time).to eq("00:00:18")
  end

  it 'has directions' do
    expect(@travel_info.directions).to eq("Start out going southeast on 17th St toward Larimer St/CO-33, 1225 17TH ST is on the right")
  end
end