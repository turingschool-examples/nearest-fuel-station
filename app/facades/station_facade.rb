class StationFacade
  require "./app/services/station_service.rb"

  def self.get_stations(location)
    station = StationService.call_for_locations(location)
    station[:fuel_stations].map do |data|
      Station.new(data)
    end
  end
end
