require 'geocoder'

module WeatherApp
  class WeathersController < ApplicationController
    def index
    end
  
    def create
      coords = Geocoder.coordinates(params["location"])
      if coords.present?
        url = "https://api.openweathermap.org/data/2.5/weather?lat=" + coords.first.to_s + "&lon=" + coords.second.to_s + "&units=metric&appid=57121e25ff2c75315d08ecdfd2682752"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        @data = JSON.parse(response)
  
        return render :create unless @data.dig('weather').nil?
      end
      render :error_message
    end
  end
end
