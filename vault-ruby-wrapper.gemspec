Gem::Specification.new do |s|
  s.name        = 'vault-ruby-wrapper'
  s.version     = '0.1.2'
  s.date        = '2017-02-16'
  s.summary     = "Hola!"
  s.description = "A simple hello world gem"
  s.authors     = ["Baptiste Bonnaudet"]
  s.email       = 'baptiste.bonnaudet@lightpseedhq.com'
  s.files       = ["lib/vault-ruby-wrapper.rb"]
  s.add_runtime_dependency 'vault', '~> 0.7.0'
  s.add_runtime_dependency 'json'
  s.homepage    =
    'http://rubygems.org/gems/hola'
  s.license       = 'MIT'
end
