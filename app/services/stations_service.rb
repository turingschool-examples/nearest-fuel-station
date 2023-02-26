class StationsService
  def self.conn
    Faraday.new(url: 'https://developer.nrel.gov')
  end

  def self.get_electric_charging_stations
    stations = '/api/alt-fuel-stations/v1.json'
  end
end

'?fuel_type=E85,ELEC&state=CA&limit=2&api_key=hfbu7TBadrk08tU0XYoX0t9OH1amlPM5ZzZ35Ewz'



