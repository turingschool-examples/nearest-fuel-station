class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :hours,
              :distance,
              :lat,
              :long

  def initialize(station_data)
    @name = station_data[:station_name]
    @address = station_data[:street_address]
    @fuel_type = station_data[:fuel_type_code]
    @hours = station_data[:access_days_time]
    @distance = station_data[:distance]
    @lat = station_data[:latitude]
    @long = station_data[:longitude]
  end
end