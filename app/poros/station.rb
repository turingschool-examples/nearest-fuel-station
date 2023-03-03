class Station 
  attr_reader :station_name, :city, :street_address, :state, :access_days_time, :fuel_type_code
  def initialize(data)
    @station_name = data[:station_name]
    @city = data[:city]
    @street_address = data[:street_address]
    @state = data[:state]
    @access_days_time = data[:access_days_time]
    @fuel_type_code = data[:fuel_type_code]
  end
end