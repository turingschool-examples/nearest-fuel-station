class Station

  attr_reader :name, :address, :city, :state, :zip, :fuel, :times, :full_address

  def initialize(data)
    @name = data[:fuel_stations][0][:station_name]
    @address = data[:fuel_stations][0][:street_address]
    @city = data[:fuel_stations][0][:city]
    @state = data[:fuel_stations][0][:state]
    @zip = data[:fuel_stations][0][:zip]
    @fuel = data[:fuel_stations][0][:fuel_type_code]
    @times = data[:fuel_stations][0][:access_days_time]
    @full_address = "#{@address}, #{@city}, #{@state}, #{@zip}"
  end
end