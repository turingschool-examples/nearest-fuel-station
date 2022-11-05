class FuelStation
  attr_reader :name,
              :fuel_type,
              :hours,
              :street_address,
              :state,
              :zip

  def initialize(data)
    @name = data[:station_name]
    @fuel_type = data[:fuel_type_code]
    @hours = data[:access_days_time]
    @street_address = data[:street_address]
    @state = data[:state]
    @city = data[:city]
    @zip = data[:zip]
  end

  def address
    "#{@street_address}, " + "#{@city}, " + "#{@state} " + "#{@zip}" 
  end
end