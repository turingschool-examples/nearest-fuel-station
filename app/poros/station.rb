class Station
  attr_reader :name,
              :address,
              :fuel_type,
              :access_times,
              :city,
              :state,
              :distance,
              :zip
  def initialize(station)
    @name = station[:station_name].titleize
    @address = station[:street_address]
    @fuel_type = station[:fuel_type_code]
    @access_times = station[:access_days_time]
    @city = station[:city]
    @state = station[:state]
    @distance = station[:distance].round(2)
    @zip = station[:zip]
  end
end
