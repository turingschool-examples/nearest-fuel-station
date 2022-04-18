class Station
  attr_reader :name, :address, :fuel_type, :open

  def initialize(data)
    #binding.pry
    @name = data[:station_name]
    @street = data[:street_address]
    @city = data[:city]
    @state = data[:state]
    @zip = data[:zip]
    @address = "#{@street} #{@city}, #{@state} #{@zip}"
    @fuel_type = data[:fuel_type_code]
    @open = data[:access_days_times]
  end
end
