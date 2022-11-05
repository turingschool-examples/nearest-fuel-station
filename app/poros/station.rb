class Station
  attr_reader :street_address,
              :station_name,
              :fuel_type,
              :hours_of_operation

  def initialize(data)
  @street_address = data[:street_address]
  @station_name = data[:station_name]
  @fuel_type = data[:fuel_type_code]
  @hours_of_operation = data[:access_days_time]
  end
end