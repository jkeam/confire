Gem::Specification.new do |s|
  s.name        = 'confire'
  s.version     = '0.0.1'
  s.date        = '2014-05-11'
  s.summary     = "Very easy project setup for google codejam problems"
  s.description = "Setups the necessary classes and tests for a codejam solution."
  s.authors     = ["Jon Keam"]
  s.email       = 'jpkeam@gmail.com'
  s.files       = ["lib/confire.rb"]
  s.homepage    = 'http://rubygems.org/gems/confire'
  s.license     = 'MIT'
  s.executables << 'confire'
  s.files       = ["lib/confire.rb", "lib/confire/project_creator.rb",
    "lib/confire/templates/Gemfile",
    "lib/confire/templates/main.rb", "lib/confire/templates/Rakefile",
    "lib/confire/templates/spec", "lib/confire/templates/spec/processor_spec.rb",
    "lib/confire/templates/parser.rb", "lib/confire/templates/config.yml",
    "lib/confire/templates/input_sample.txt", "lib/confire/templates/run.sh"
  ]
end
