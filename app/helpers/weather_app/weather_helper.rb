module WeatherApp
  module WeatherHelper
    def get_color
      if @data.dig('weather').nil?
          render :error_message
      else
          @data = @data
      end
  
      if @data.dig('weather').nil?
        @api_color = "gray"
      elsif @data['main']['temp'] > 0 && @data['main']['temp'] < 10
        @api_color = "white"
      elsif @data['main']['temp'] > 11 && @data['main']['temp'] < 20
        @api_color = "skyblue"
      elsif @data['main']['temp'] > 21 && @data['main']['temp'] < 40
        @api_color = "orange"
      else
        @api_color = "red"
      end
    end
  end
end
