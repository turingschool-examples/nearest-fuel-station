class FuelStation
  attr_reader :name,
              :address,
              :access_times,
              :fuel_type,
              :distance

  def initialize(station_info)
    @name = station_info[:station_name]
    @address = station_info[:street_address] + ", " + station_info[:city] + ", " + station_info[:state] + ", " + station_info[:zip]
    @access_times = station_info[:access_days_time]
    @fuel_type = station_info[:fuel_type_code]
    @distance = station_info[:distance]
  end
end
