# -*- encoding: utf-8 -*-
require File.expand_path('../lib/lattice/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tony Arcieri"]
  gem.email         = ["tony.arcieri@gmail.com"]
  gem.description   = "A concurrent realtime web framework for Ruby"
  gem.summary       = "Lattice is a pervasively multithreaded web framework for Ruby which makes building realtime web applications with WebSockets simple and fun"
  gem.homepage      = "https://github.com/tarcieri/lattice"

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'lattice'
  gem.require_paths = ['lib']
  gem.version       = Lattice::VERSION
  gem.licenses      = ['MIT']
  
  gem.add_runtime_dependency 'celluloid',     '>= 0.15.1'
  gem.add_runtime_dependency 'reel',          '>= 0.4.0'
  gem.add_runtime_dependency 'webmachine',    '~> 1.2.1'
  gem.add_runtime_dependency 'activesupport', '~> 4.0.0'
  gem.add_runtime_dependency 'thor',          '>= 0.18.0'
  gem.add_runtime_dependency 'colorize',      '>= 0.5.0'
  
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '>= 2.7.0'
end
