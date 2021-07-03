# Nearest Fuel Station

### Versions

Ruby 2.5.3

Rails 5.2.4.3

### Set Up

- Clone this repo
- `bundle install`
- `bundle exec figaro install`
- `rails db:{create,migrate}``
- `rails s`

- Stories
As a user
When I visit "/"
And I select "The Noshery" or "Griffin Coffee" form the start location drop down (Note: Use the existing search form)
And I click "Find Nearest Station"
Then I should be on page "/search"
Then I should see the closest electric fuel station to me.
For that station I should see
- Name
- Address
- Fuel Type
- Access Times
I should also see:
- the distance of the nearest station
- the travel time from my starting location to that fuel station
- The direction instructions to get to that fuel station
  ex: ".... Turn left onto Lowell,  Destination will be on the right"
