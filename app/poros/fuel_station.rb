class FuelStation
  attr_reader :name,
              :access_times,
              :street_address,
              :city,
              :state,
              :zip,
              :concat_address,
              :fuel_type,
              :distance_miles

  def initialize(data)
    @name = data[:fuel_stations][0][:station_name]
    @access_times = data[:fuel_stations][0][:access_days_time]
    @street_address = data[:fuel_stations][0][:street_address]
    @city = data[:fuel_stations][0][:city]
    @state = data[:fuel_stations][0][:state]
    @zip = data[:fuel_stations][0][:zip]
    @fuel_type = data[:fuel_stations][0][:fuel_type_code]
    @distance_miles = data[:fuel_stations][0][:distance]
    @concat_address = @street_address + ', ' + @city + ', ' + @state + ' ' + @zip
  end
end