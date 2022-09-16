require 'rails_helper'

RSpec.describe Directions do
  it 'exists' do
      attributes = {
        "route": {
            "hasTollRoad": false,
            "hasBridge": false,
            "boundingBox": {
                "lr": {
                    "lng": -97.473015,
                    "lat": 35.675838
                },
                "ul": {
                    "lng": -97.491821,
                    "lat": 35.714951
                }
            },
            "distance": 3.898,
            "hasTimedRestriction": false,
            "hasTunnel": false,
            "hasHighway": false,
            "computedWaypoints": [],
            "routeError": {
                "errorCode": -400,
                "message": ""
            },
            "formattedTime": "00:09:41",
            "sessionId": "6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
            "hasAccessRestriction": false,
            "realTime": 629,
            "hasSeasonalClosure": false,
            "hasCountryCross": false,
            "fuelUsed": 0.27,
            "legs": [
                {
                    "hasTollRoad": false,
                    "hasBridge": false,
                    "destNarrative": "Proceed to 638 E OAK PL.",
                    "distance": 3.898,
                    "hasTimedRestriction": false,
                    "hasTunnel": false,
                    "hasHighway": false,
                    "index": 0,
                    "formattedTime": "00:09:41",
                    "origIndex": 3,
                    "hasAccessRestriction": false,
                    "hasSeasonalClosure": false,
                    "hasCountryCross": false,
                    "roadGradeStrategy": [
                        []
                    ],
                    "destIndex": 5,
                    "time": 581,
                    "hasUnpaved": false,
                    "origNarrative": "Go northeast on N Boulevard St.",
                    "maneuvers": [
                        {
                            "distance": 0.063,
                            "streets": [
                                "Heatherstone Rd"
                            ],
                            "narrative": "Start out going north on Heatherstone Rd toward Timberdale Dr.",
                            "turnType": 6,
                            "startPoint": {
                                "lng": -97.473015,
                                "lat": 35.676735
                            },
                            "index": 0,
                            "formattedTime": "00:00:15",
                            "directionName": "North",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.676734924316406,-97.47301483154297|marker-1||35.677574157714844,-97.473388671875|marker-2||&center=35.677154541015625,-97.47320175170898&defaultMarker=none&zoom=14&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 15,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/icon-dirs-start_sm.gif",
                            "direction": 1
                        },
                        {
                            "distance": 0.244,
                            "streets": [
                                "Timberdale Dr"
                            ],
                            "narrative": "Turn left onto Timberdale Dr.",
                            "turnType": 6,
                            "startPoint": {
                                "lng": -97.473389,
                                "lat": 35.677574
                            },
                            "index": 1,
                            "formattedTime": "00:01:03",
                            "directionName": "West",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.677574157714844,-97.473388671875|marker-2||35.67585754394531,-97.47634887695312|marker-3||&center=35.67671585083008,-97.47486877441406&defaultMarker=none&zoom=12&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 63,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                            "direction": 7
                        },
                        {
                            "distance": 0.107,
                            "streets": [
                                "Timberdale Ter"
                            ],
                            "narrative": "Turn right onto Timberdale Ter.",
                            "turnType": 2,
                            "startPoint": {
                                "lng": -97.476349,
                                "lat": 35.675858
                            },
                            "index": 2,
                            "formattedTime": "00:00:23",
                            "directionName": "West",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.67585754394531,-97.47634887695312|marker-3||35.675838470458984,-97.47825622558594|marker-4||&center=35.67584800720215,-97.47730255126953&defaultMarker=none&zoom=14&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 23,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                            "direction": 7
                        },
                        {
                            "distance": 0.478,
                            "streets": [
                                "N Boulevard St"
                            ],
                            "narrative": "Turn right onto N Boulevard St.",
                            "turnType": 2,
                            "startPoint": {
                                "lng": -97.478256,
                                "lat": 35.675838
                            },
                            "index": 3,
                            "formattedTime": "00:00:43",
                            "directionName": "Northeast",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.675838470458984,-97.47825622558594|marker-4||35.681766510009766,-97.47518157958984|marker-5||&center=35.678802490234375,-97.47671890258789&defaultMarker=none&zoom=10&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 43,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                            "direction": 3
                        },
                        {
                            "distance": 2.039,
                            "streets": [
                                "N Broadway"
                            ],
                            "narrative": "N Boulevard St becomes N Broadway.",
                            "turnType": 0,
                            "startPoint": {
                                "lng": -97.475182,
                                "lat": 35.681767
                            },
                            "index": 4,
                            "formattedTime": "00:03:36",
                            "directionName": "North",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.681766510009766,-97.47518157958984|marker-5||35.71088409423828,-97.4782943725586|marker-6||&center=35.69632530212402,-97.47673797607422&defaultMarker=none&zoom=8&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 216,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_straight_sm.gif",
                            "direction": 1
                        },
                        {
                            "distance": 0.315,
                            "streets": [
                                "W Sorghum Mill Rd"
                            ],
                            "narrative": "Turn left onto W Sorghum Mill Rd.",
                            "turnType": 6,
                            "startPoint": {
                                "lng": -97.478294,
                                "lat": 35.710884
                            },
                            "index": 5,
                            "formattedTime": "00:00:35",
                            "directionName": "West",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.71088409423828,-97.4782943725586|marker-6||35.710975646972656,-97.48388671875|marker-7||&center=35.71092987060547,-97.4810905456543&defaultMarker=none&zoom=12&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 35,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                            "direction": 7
                        },
                        {
                            "distance": 0.365,
                            "streets": [
                                "Country Club Dr"
                            ],
                            "narrative": "Turn right onto Country Club Dr.",
                            "turnType": 2,
                            "startPoint": {
                                "lng": -97.483887,
                                "lat": 35.710976
                            },
                            "index": 6,
                            "formattedTime": "00:01:23",
                            "directionName": "Northwest",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.710975646972656,-97.48388671875|marker-7||35.71495056152344,-97.48729705810547|marker-8||&center=35.71296310424805,-97.48559188842773&defaultMarker=none&zoom=11&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 83,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_right_sm.gif",
                            "direction": 2
                        },
                        {
                            "distance": 0.074,
                            "streets": [
                                "Country Club Ter"
                            ],
                            "narrative": "Turn left onto Country Club Ter.",
                            "turnType": 6,
                            "startPoint": {
                                "lng": -97.487297,
                                "lat": 35.714951
                            },
                            "index": 7,
                            "formattedTime": "00:00:21",
                            "directionName": "Southwest",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.71495056152344,-97.48729705810547|marker-8||35.714439392089844,-97.48823547363281|marker-9||&center=35.71469497680664,-97.48776626586914&defaultMarker=none&zoom=15&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 21,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_left_sm.gif",
                            "direction": 6
                        },
                        {
                            "distance": 0.11,
                            "streets": [
                                "E Oak Pl"
                            ],
                            "narrative": "Stay straight to go onto E Oak Pl.",
                            "turnType": 0,
                            "startPoint": {
                                "lng": -97.488235,
                                "lat": 35.714439
                            },
                            "index": 8,
                            "formattedTime": "00:00:56",
                            "directionName": "West",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.714439392089844,-97.48823547363281|marker-9||35.71451950073242,-97.49007415771484|marker-10||&center=35.71447944641113,-97.48915481567383&defaultMarker=none&zoom=14&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 0,
                            "time": 56,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_straight_sm.gif",
                            "direction": 7
                        },
                        {
                            "distance": 0.103,
                            "streets": [
                                "E Oak Pl"
                            ],
                            "narrative": "Keep right at the fork to continue on E Oak Pl (Gate access required).",
                            "turnType": 16,
                            "startPoint": {
                                "lng": -97.490074,
                                "lat": 35.71452
                            },
                            "index": 9,
                            "formattedTime": "00:00:26",
                            "directionName": "West",
                            "maneuverNotes": [],
                            "linkIds": [],
                            "signs": [],
                            "mapUrl": "http://www.mapquestapi.com/staticmap/v5/map?key=JyNrlaNofgUkNdk8Bek7GjKQE7EeEU6B&size=225,160&locations=35.71451950073242,-97.49007415771484|marker-10||35.7148551940918,-97.4918212890625|marker-11||&center=35.71468734741211,-97.49094772338867&defaultMarker=none&zoom=14&rand=-2090499880&session=6324f0ee-02e8-5f21-02b4-381e-021d133e9f25",
                            "transportMode": "AUTO",
                            "attributes": 8,
                            "time": 26,
                            "iconUrl": "http://content.mqcdn.com/mqsite/turnsigns/rs_fork_right2_sm.gif",
                            "direction": 7
                        },
                        {
                            "distance": 0,
                            "streets": [],
                            "narrative": "638 E OAK PL is on the left.",
                            "turnType": -1,
                            "startPoint": {
                                "lng": -97.491821,
                                "lat": 35.714855
                            },
                            "index": 10,
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
                        "lng": -97.473015,
                        "lat": 35.676735
                    },
                    "adminArea4": "Oklahoma",
                    "adminArea5": "Edmond",
                    "postalCode": "73034-4226",
                    "adminArea1": "US",
                    "adminArea3": "OK",
                    "type": "s",
                    "sideOfStreet": "R",
                    "geocodeQualityCode": "P1AAA",
                    "adminArea4Type": "County",
                    "linkId": 46246443,
                    "street": "2201 Heatherstone Rd",
                    "adminArea5Type": "City",
                    "geocodeQuality": "POINT",
                    "adminArea1Type": "Country",
                    "adminArea3Type": "State",
                    "latLng": {
                        "lng": -97.473018,
                        "lat": 35.676735
                    }
                },
                {
                    "dragPoint": false,
                    "displayLatLng": {
                        "lng": -97.491821,
                        "lat": 35.714863
                    },
                    "adminArea4": "Oklahoma",
                    "adminArea5": "Edmond",
                    "postalCode": "73025-2712",
                    "adminArea1": "US",
                    "adminArea3": "OK",
                    "type": "s",
                    "sideOfStreet": "L",
                    "geocodeQualityCode": "P1AAA",
                    "adminArea4Type": "County",
                    "linkId": 73783457,
                    "street": "638 E Oak Pl",
                    "adminArea5Type": "City",
                    "geocodeQuality": "POINT",
                    "adminArea1Type": "Country",
                    "adminArea3Type": "State",
                    "latLng": {
                        "lng": -97.491821,
                        "lat": 35.714863
                    }
                }
            ],
            "time": 581,
            "hasUnpaved": false,
            "locationSequence": [
                0,
                1
            ],
            "hasFerry": false
        },
        "info": {
            "statuscode": 0,
            "copyright": {
                "imageAltText": "© 2022 MapQuest, Inc.",
                "imageUrl": "http://api.mqcdn.com/res/mqlogo.gif",
                "text": "© 2022 MapQuest, Inc."
            },
            "messages": []
        }
    }

    directions = Directions.new(attributes)

    expect(directions).to be_a Directions
    expect(directions.time_to_destination).to eq "00 hours, 09 minutes, and 41 seconds."
    expect(directions.directions_array).to eq ["Step 1: Start out going north on Heatherstone Rd toward Timberdale Dr.",
      "Step 2: Turn left onto Timberdale Dr.",
      "Step 3: Turn right onto Timberdale Ter.",
      "Step 4: Turn right onto N Boulevard St.",
      "Step 5: N Boulevard St becomes N Broadway.",
      "Step 6: Turn left onto W Sorghum Mill Rd.",
      "Step 7: Turn right onto Country Club Dr.",
      "Step 8: Turn left onto Country Club Ter.",
      "Step 9: Stay straight to go onto E Oak Pl.",
      "Step 10: Keep right at the fork to continue on E Oak Pl (Gate access required).",
      "Step 11: 638 E OAK PL is on the left."]
  end
end