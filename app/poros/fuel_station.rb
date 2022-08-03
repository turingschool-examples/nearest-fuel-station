class FuelStation
  attr_reader :access_times,
              :fuel_type,
              :name,
              :address,
              :distance


  def initialize(data)
    @access_times = data[:access_days_time]
    @fuel_type = data[:fuel_type_code]
    @name = data[:station_name]
    @address = [data[:street_address], data[:city], data[:state], data[:zip]].join(", ")
    @distance = data[:distance]
  end
end
