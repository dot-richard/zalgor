require_relative 'lib/zalgor/version'

Gem::Specification.new do |s|
  s.name        = 'zalgor'
  s.version     = Zalgor::VERSION
  s.authors     = ['Richard Kranich']
  s.homepage    = 'https://github.com/kurukuruk'
  s.license     = 'MIT'
  s.summary     = 'A string destroyer with combining chars.'
  s.description = <<-DESC
    Zalgor (Zalgo Ruby) uses combining chars to create creepy and insane string.
  DESC

  s.files = Dir['{lib}/zalgo.rb', '{lib}/**/*.rb', 'LICENSE', '*.md']

  s.require_paths = ['lib']
end
