class NrelPoro 
  attr_reader :name,
              :street_address,
              :city,
              :state,
              :zip,
              :access_times,
              :distance,
              :ev_connector_types

  def initialize(api)
    @name = api[:station_name]
    @street_address = api[:street_address]
    @city = api[:city]
    @state = api[:state]
    @zip = api[:zip]
    @access_times = api[:access_days_time]
    @distance = api[:distance]
    @ev_connector_types = api[:ev_connector_types]
  end

  def address
    "#{@street_address}, #{@city}, #{@state} #{zip}"
  end
end