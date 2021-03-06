$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "witch_doctor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "witch_doctor"
  s.version     = WitchDoctor::VERSION
  s.authors     = ["Tomas Valent"]
  s.email       = ["equivalent@eq8.eu"]
  s.homepage    = "https://github.com/equivalent/witch_doctor"
  s.summary     = "Rails engine for virus scaning"
  s.description = "Rails engine that provides simple API so that external antivirus " +
                  "script can pull down files that need to be scanned and update their " +
                  "results."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "rails", "~> 4.0.0"

  s.add_development_dependency "sqlite3", '~> 1.3'
  s.add_development_dependency "rspec-rails", '~> 3.2'
  s.add_development_dependency "capybara", '>= 2.4.0'
  s.add_development_dependency "factory_girl_rails", '~> 4.5'
  s.add_development_dependency "database_cleaner", '~> 1.1.0'
  s.add_development_dependency "codeclimate-test-reporter"
end
