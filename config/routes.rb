WeatherApp::Engine.routes.draw do
  resources :weathers
  root to: 'weathers#index'
end