# -*- encoding: utf-8 -*-
require File.expand_path('../lib/opal/pixi/version', __FILE__)

Gem::Specification.new do |s|
  s.name         = 'opal-pixi'
  s.version      = Opal::PIXI::VERSION
  s.authors      = ['George Plymale', 'Keith Salisbury']
  s.email        = ['george@orbitalimpact.com&keith.salisbury@alliants.com']
  s.homepage     = 'http://github.com/orbitalimpact/opal-pixi'
  s.summary      = 'Opal access to pixi'
  s.description  = 'Opal DOM library for pixi'

  s.files          = `git ls-files`.split("\n")
  s.executables    = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.test_files     = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths  = ['lib']

  s.add_runtime_dependency 'opal', '>= 0.8.0', '< 0.9.0'
  s.add_development_dependency 'opal-rspec', '~> 0.4.0'
  s.add_development_dependency 'yard'
  s.add_development_dependency 'rake'
end
