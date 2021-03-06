Gem::Specification.new do |s|
  s.name        = 'confire'
  s.version     = '0.1.3'
  s.date        = '2015-03-21'
  s.summary     = "Very easy project setup for google codejam problems"
  s.description = "Setups the necessary classes and tests for a codejam solution."
  s.authors     = ["Jon Keam"]
  s.email       = 'jpkeam@gmail.com'
  s.files       = ["lib/confire.rb"]
  s.homepage    = 'https://github.com/jkeam/confire'
  s.license     = 'MIT'
  s.executables << 'confire'
  s.files       = [
    "lib/confire.rb", 
    "lib/confire/project_creator.rb",
    "lib/confire/templates/Gemfile", 
    "lib/confire/processor.rb",
    "lib/confire/templates/driver.rb", 
    "lib/confire/templates/custom_processor.rb",
    "lib/confire/main.rb", 
    "lib/confire/templates/Rakefile", 
    "lib/confire/templates/README.txt",
    "Rakefile", 
    "spec", 
    "spec/processor_spec.rb",
    "lib/confire/templates/spec", 
    "lib/confire/templates/spec/custom_processor_spec.rb",
    "lib/confire/parser.rb", 
    "lib/confire/templates/config.yml",
    "lib/confire/templates/input_sample.txt", 
    "lib/confire/templates/run.sh"
  ]
  s.add_development_dependency "simplecov", ">= 0.9.2"
  s.add_development_dependency 'coveralls', '>= 0.7.11'
end
