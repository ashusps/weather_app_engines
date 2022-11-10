Rails.application.routes.draw do
  mount WeatherApp::Engine => "/weather_app"
end
