class StationFacade
  def self.find_nearest(location)
    json = StationService.get_nearest_station(location).first
    Station.new(name: json[:station_name],
                street: json[:street_address],
                city: json[:city],
                state: json[:state],
                zip: json[:zip],
                fuel_type: json[:fuel_type_code],
                hours: json[:access_days_time])
  end
end
