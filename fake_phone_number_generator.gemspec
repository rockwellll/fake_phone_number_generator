Gem::Specification.new do |s|
  s.name        = "fake_phone_number_generator"
  s.version     = "1.0.2"
  s.summary     = "Generate random, valid, unique phone numbers for a specific country"
  s.description = "A simple class that generates a random valid unique phone number"
  s.authors     = ["Rockwell"]
  s.email       = "dev.ahmad.khattab@gmail.com"
  s.files       = ["lib/fake_phone_number_generator.rb"]
  s.homepage    = "https://github.com/rockwellll/fake_phone_number_generator"
  s.license       = 'MIT'

  s.add_runtime_dependency "phonelib", '~> 0.6.45'
  s.add_runtime_dependency "countries", '~> 4.2', '>= 4.2.1'
end