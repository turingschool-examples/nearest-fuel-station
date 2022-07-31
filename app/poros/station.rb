class Station 
  attr_reader :street_address,
              :city,
              :state,
              :zip, 
              :full_address,
              :fuel_type,
              :access_times

  def initialize(attributes)
    @street_address = attributes[:fuel_stations][0][:street_address]
    @city           = attributes[:fuel_stations][0][:city]
    @state          = attributes[:fuel_stations][0][:state]
    @zip            = attributes[:fuel_stations][0][:zip]
    @fuel_type      = attributes[:fuel_stations][0][:fuel_type_code]
    @access_times   = attributes[:fuel_stations][0][:access_days_time]
    @full_address = get_full_address
  end

  def get_full_address
    "#{@street_address}" + " #{@city}" + " #{@state}" + " #{@zip}"
  end
end