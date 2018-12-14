# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fomantic/ui/sass/version'

Gem::Specification.new do |spec|
  spec.name          = "fomantic-ui-sass"
  spec.version       = Fomantic::Ui::Sass::VERSION
  spec.authors       = ["doabit", "shanecav84"]
  spec.email         = ["doinsist@gmail.com", "shane@shanecav.net"]
  spec.description   = %q{Fomantic UI, converted to Sass and ready to drop into Rails, Compass, or Sprockets.}
  spec.summary       = %q{Fomantic UI, converted to Sass and ready to drop into Rails, Compass, or Sprockets.}
  spec.homepage      = "http://github.com/shanecav84/fomantic-ui-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'autoprefixer-rails'
  spec.add_runtime_dependency 'rails', '>= 3.2.0'
  spec.add_runtime_dependency 'sass', '>= 3.2'
  spec.add_runtime_dependency 'sass-rails', '>= 3.2'
  spec.add_runtime_dependency 'sprockets-rails', '>= 2.1.3'

  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'rspec-rails', '>= 3.0'
end
