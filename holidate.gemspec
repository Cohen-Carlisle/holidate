Gem::Specification.new do |s|
  s.name        = 'holidate'
  s.version     = '0.0.1'
  s.date        = '2015-01-19'
  s.summary     = 'Holiday Dates'
  s.description = 'A simple gem that returns Date objects for holidays'
  s.authors     = ['Cohen Carlisle']
  s.email       = 'holidate.gem@gmail.com'
  s.files       = ['lib/holidate.rb']
  s.homepage    = 'http://rubygems.org/gems/holidate'
  s.license     = 'MIT'

  s.add_development_dependency 'bundler', '~> 1.7'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'minitest', '~> 5.5'
end
