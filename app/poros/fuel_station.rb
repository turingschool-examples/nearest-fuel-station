class FuelStation
  attr_reader :name, :access_times, :address, :fuel_type, :distance

  def initialize(station_data)
    @name = station_data[:station_name]
    @access_times = station_data[:access_days_time]
    @address = "#{station_data[:street_address]}, #{station_data[:city]}, #{station_data[:state]} #{station_data[:zip]}"
    @fuel_type = station_data[:fuel_type_code]
    @distance = station_data[:distance]
  end
end