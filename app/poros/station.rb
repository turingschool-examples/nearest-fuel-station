class Station
  attr_reader :name,
              :fuel_type,
              :access_times
  
  def initialize(station)
    @name = station[:station_name]
    @fuel_type = 'Electric'
    @access_times = station[:access_days_time]
    @station_info = station
  end

  def address
    @station_info[:street_address] + ', ' + @station_info[:city] + ', ' + @station_info[:state] + ' ' + @station_info[:zip]
  end
end