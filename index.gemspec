# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'index/version'

Gem::Specification.new do |spec|
  spec.name          = 'index'
  spec.version       = Index::VERSION
  spec.authors       = ['Ontohub Core Developers']
  spec.email         = ['ontohub-dev-l@ovgu.de']

  spec.summary       = 'A gem that contains all indexes for search'
  spec.description   =
    "#{spec.summary} - used by the indexer and the ontohub-backend."
  spec.homepage      = 'https://github.com/ontohub/index'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.test_files = Dir['spec/**/*']

  # Prevent pushing this gem to RubyGems.org.
  unless spec.respond_to?(:metadata)
    raise "We don't want to publish this outside of the Ontohub project."
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'chewy', '~> 0.10.1'

  # General Development
  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 12.3.0'

  spec.add_development_dependency 'pry-byebug', '~> 3.5.0'
  spec.add_development_dependency 'pry-rescue', '~> 1.4.4'
  spec.add_development_dependency 'pry-stack_explorer', '~> 0.4.9.2'

  # CI services
  spec.add_development_dependency 'rubocop', '~> 0.52.1'

  # We want to have these in the production environment as well in case we need
  # to debug the application:
  spec.add_dependency 'awesome_print', '~> 1.8.0'
  spec.add_dependency 'pry', '~> 0.11.0'
end
