class Station
  attr_reader :name,
              :street_address,
              :city,
              :state,
              :zip,
              :full_address,
              :fuel_type,
              :access_time

  def initialize(station_data)
    @name = station_data[:station_name]
    @street_address = station_data[:street_address]
    @city = station_data[:city]
    @state = station_data[:state]
    @zip = station_data[:zip]
    @full_address = "#{@street_address} #{@city}, #{@state} #{@zip}"
    @fuel_type = station_data[:fuel_type_code]
    @access_time = station_data[:access_days_time]
  end

end


# class Park
#   attr_reader :full_name,
#               :description,
#               :directions_info,
#               :operating_hours
#
#   def initialize(park_data)
#     @full_name = park_data[:fullName]
#     @description = park_data[:description]
#     @directions_info = park_data[:directionsInfo]
#     @ohours = park_data[:operatingHours]
#   end
#
#     def operating_hours
#       @ohours.map do |h|
#            h[:standardHours].map do |day, hours|
#               "#{day.capitalize}, #{hours}"
#             end
#           end.flatten
#         end
# end
