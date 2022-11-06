require 'rails_helper'

RSpec.describe Map do
  it 'exists' do
    map_data = {
      "hasTollRoad": false,
      "hasBridge": false,
      "boundingBox": {
          "lr": {
              "lng": -104.995712,
              "lat": 39.749771
          },
          "ul": {
              "lng": -104.996773,
              "lat": 39.75061
          }
      },
      "distance": 0.081,
      "hasTimedRestriction": false,
      "hasTunnel": false,
      "hasHighway": false,
      "computedWaypoints": [],
      "routeError": {
          "errorCode": -400,
          "message": ""
      },
      "formattedTime": "00:00:18",
      "sessionId": "63681122-015c-5f21-02b4-382e-0adfd5ca3731",
      "hasAccessRestriction": false,
      "realTime": 21,
      "hasSeasonalClosure": false,
      "hasCountryCross": false,
      "fuelUsed": 0.01,
      "legs": [
          {
              "hasTollRoad": false,
              "hasBridge": false,
              "destNarrative": "",
              "distance": 0.081,
              "hasTimedRestriction": false,
              "hasTunnel": false,
              "hasHighway": false,
              "index": 0,
              "formattedTime": "00:00:18",
              "origIndex": -1,
              "hasAccessRestriction": false,
              "hasSeasonalClosure": false,
              "hasCountryCross": false,
              "roadGradeStrategy": [
                  []
              ],
              "destIndex": -1,
              "time": 18,
              "hasUnpaved": false,
              "origNarrative": "",
              "maneuvers": [
                  {
                      "distance": 0.081,
                      "streets": [
                          "17th St"
                      ],
                      "narrative": "Start out going southeast on 17th St toward Larimer St/CO-33.",
                      "turnType": 6,
                      "startPoint": {
                          "lng": -104.996773,
                          "lat": 39.75061
                      },
                      "index": 0,
                      "formattedTime": "00:00:18",
                      "directionName": "Southeast",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=vflppn6eNSEyEDKv5ZX57173BVPXZOv5&size=225,160&locations=39.7506103515625,-104.99677276611328|marker-1||39.74977111816406,-104.99571228027344|marker-2||&center=39.75019073486328,-104.99624252319336&defaultMarker=none&zoom=14&rand=-970824687&session=63681122-015c-5f21-02b4-382e-0adfd5ca3731",
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 18,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif",
                      "direction": 5
                  },
                  {
                      "distance": 0,
                      "streets": [],
                      "narrative": "1225 17TH ST is on the right.",
                      "turnType": -1,
                      "startPoint": {
                          "lng": -104.995712,
                          "lat": 39.749771
                      },
                      "index": 1,
                      "formattedTime": "00:00:00",
                      "directionName": "",
                      "maneuverNotes": [],
                      "linkIds": [],
                      "signs": [],
                      "transportMode": "AUTO",
                      "attributes": 0,
                      "time": 0,
                      "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-end_sm.gif",
                      "direction": 0
                  }
              ],
              "hasFerry": false
          }
      ],
      "options": {
          "arteryWeights": [],
          "cyclingRoadFactor": 1,
          "timeType": 0,
          "useTraffic": false,
          "returnLinkDirections": false,
          "countryBoundaryDisplay": true,
          "enhancedNarrative": false,
          "locale": "en_US",
          "tryAvoidLinkIds": [],
          "drivingStyle": 2,
          "doReverseGeocode": true,
          "generalize": -1,
          "mustAvoidLinkIds": [],
          "sideOfStreetDisplay": true,
          "routeType": "FASTEST",
          "avoidTimedConditions": false,
          "routeNumber": 0,
          "shapeFormat": "raw",
          "maxWalkingDistance": -1,
          "destinationManeuverDisplay": true,
          "transferPenalty": -1,
          "narrativeType": "text",
          "walkingSpeed": -1,
          "urbanAvoidFactor": -1,
          "stateBoundaryDisplay": true,
          "unit": "M",
          "highwayEfficiency": 22,
          "maxLinkId": 0,
          "maneuverPenalty": -1,
          "avoidTripIds": [],
          "filterZoneFactor": -1,
          "manmaps": "true"
      },
      "locations": [
          {
              "dragPoint": false,
              "displayLatLng": {
                  "lng": -104.996773,
                  "lat": 39.750614
              },
              "adminArea4": "Denver",
              "adminArea5": "Denver",
              "postalCode": "80202-1507",
              "adminArea1": "US",
              "adminArea3": "CO",
              "type": "s",
              "sideOfStreet": "R",
              "geocodeQualityCode": "P1AAA",
              "adminArea4Type": "County",
              "linkId": 12471326,
              "street": "1331 17th St",
              "adminArea5Type": "City",
              "geocodeQuality": "POINT",
              "adminArea1Type": "Country",
              "adminArea3Type": "State",
              "latLng": {
                  "lng": -104.996775,
                  "lat": 39.750614
              }
          },
          {
              "dragPoint": false,
              "displayLatLng": {
                  "lng": -104.995712,
                  "lat": 39.749771
              },
              "adminArea4": "Denver",
              "adminArea5": "Denver",
              "postalCode": "80202-1501",
              "adminArea1": "US",
              "adminArea3": "CO",
              "type": "s",
              "sideOfStreet": "L",
              "geocodeQualityCode": "P1AAA",
              "adminArea4Type": "County",
              "linkId": 69805175,
              "street": "1225 17th St",
              "adminArea5Type": "City",
              "geocodeQuality": "POINT",
              "adminArea1Type": "Country",
              "adminArea3Type": "State",
              "latLng": {
                  "lng": -104.995712,
                  "lat": 39.749772
              }
          }
      ],
      "time": 18,
      "hasUnpaved": false,
      "locationSequence": [
          0,
          1
      ],
      "hasFerry": false
  }

  map = Map.new(map_data)

  expect(map).to be_a Map
  expect(map.distance).to eq(0.1)
  expect(map.travel_time).to eq('1 min')
  expect(map.direction_instructions).to eq('Start out going southeast on 17th St toward Larimer St/CO-33. 1225 17TH ST is on the right.')
  end
end