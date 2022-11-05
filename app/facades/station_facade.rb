class StationFacade 

  def self.get_nearest_station(address)
    json = StationService.get_nearest_station(address)
    json[:results].map do |fuel_station_data|
      require 'pry' ; binding.pry
      Station.new(fuel_station_data)
    end
  end

end