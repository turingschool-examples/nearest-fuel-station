class Station
  attr_reader :name, :street, :city, :state, :zip, :fuel_type, :hours
  def initialize(data)
    @name = data[:station_name]
    @street  = data[:street_address]
    @city = data[:city]
    @state = data[:state]
    @zip = data[:zip]
    @fuel_type = data[:fuel_type_code]
    @hours = data[:access_days_time]
  end

  def address
    "#{@street} #{@city}, #{@state} #{@zip}"
  end
end
