# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/pixi/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'opal-pixi'
  s.version     = Opal::PIXI::VERSION
  s.authors     = [ 'George D. Plymale II', 'Gabriel Rios' ]
  s.email       = [ 'gabrielfalcaorios@gmail.com']
  s.homepage    = [ 'http://github.com/orbitalimpact/opal-pixi']
  s.summary     = [ 'Pixi wrapper for opal' ]
  s.description = [ 'Pixi wrapper for opal' ]

  s.files         = `git ls-files`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']

  s.add_runtime_dependency 'opal', '~> 0.6.0'
  s.add_development_dependency 'rake'
end
