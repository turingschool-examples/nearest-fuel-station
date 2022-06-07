class Station

  attr_reader :name,
              :address,
              :street_address,
              :city,
              :state,
              :zip,
              :fuel_type,
              :access_times

  def initialize(data)
    @name       = data[:station_name]
    @fuel_type  = data[:fuel_type_code]
    @access_times = data[:access_days_time]
    @street_address = data[:street_address]
    @city = data[:city]
    @state = data[:state]
    @zip = data[:zip]
    @address    = "#{@street_address} #{@city} #{@state} #{@zip}"
  end
end