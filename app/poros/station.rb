class Station
  attr_reader :name, :address, :fuel_type, :access_times
  def initialize(data)
    @name = data[:station_name]
    @street = data[:street_address]
    @city = data[:city]
    @state = data[:state]
    @zip = data[:zip]
    @address = "#{@street} #{@city}, #{@state} #{@zip}"
    @fuel_type = data[:fuel_type_code]
    @access_times = data[:access_days_time]
  end
end
