class Weather < ActiveRecord::Base

  def self.make_api_call
    url = "http://api.openweathermap.org/data/2.5/weather?zip=10010,us&units=imperial"
    buffer = open(url).read
    JSON.parse(buffer)
  end

  def self.forecast
    result = self.make_api_call
    [self.weather_description(result), self.weather_icon(result), self.current_temp(result)]
  end

  def self.weather_description(result)
    result["weather"].first["description"]
  end

  def self.weather_icon(result)
    result["weather"].first["icon"]
  end

  def self.current_temp(result)
    result["main"]["temp"]
  end

end
