require_relative "lib/weather_app/version"

Gem::Specification.new do |spec|
  spec.name        = "weather_app"
  spec.version     = WeatherApp::VERSION
  spec.authors     = ["Abhishek Rastogi"]
  spec.email       = ["abhishek_rastogi@softprodigy.com"]
  # spec.homepage    = "This is a weather display engine"
  spec.summary     = "This helps users to see weather information in any location they enter."
  spec.description = "This is a useful rails engine."
  spec.license     = "MIT"
  
  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.0.4"
  spec.add_dependency "bootstrap"
  spec.add_dependency "jquery-rails"
  spec.add_dependency "json"
  spec.add_dependency "geocoder"
  spec.add_dependency "puma"
end