class Station
  attr_reader :name, :address, :access_time, :fuel_type
  def initialize(data)
    @name = data[:station_name]
    @address = "#{data[:street_address]}, #{data[:city]}, #{data[:state]}, #{data[:zip]}"
    @access_time = data[:access_days_time]
    @fuel_type = data[:fuel_type_code]
  end
end