class FuelStation
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times
  def initialize(attrs)
    @name = attrs[:station_name]
    @address = combine_address(attrs[:street_address], attrs[:city], attrs[:state], attrs[:zip])
    @fuel_type = attrs[:fuel_type_code]
    @access_times = attrs[:access_days_time]
  end

  def combine_address(street, city, state, zip)
    "#{street}, #{city}, #{state}, #{zip}"
  end
end
