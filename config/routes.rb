Rails.application.routes.draw do
  mount WeatherApp::Engine, :at => "/temp"
  root to: "home#index"
end
