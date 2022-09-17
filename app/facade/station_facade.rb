class StationFacade
  def self.create_stations(location)
    stations = StationService.get_stations(location)
    stations.map do |station|
      # require 'pry'; binding.pry 
      Station.new(station)
      #why am i getting undefined method 'map' for nilclass error
      #when i pry into stations i see an array of hashes
    end
  end
end
