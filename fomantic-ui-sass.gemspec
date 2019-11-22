lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fomantic/ui/sass/version'

Gem::Specification.new do |spec|
  spec.name          = 'fomantic-ui-sass'
  spec.version       = Fomantic::Ui::Sass::VERSION
  spec.authors       = %w[doabit shanecav84]
  spec.email         = ['doinsist@gmail.com', 'shane@shanecav.net']
  spec.description   = 'Fomantic UI, converted to Sass and ready to drop into Rails, Compass, or Sprockets.'
  spec.summary       = 'Fomantic UI, converted to Sass and ready to drop into Rails, Compass, or Sprockets.'
  spec.homepage      = 'https://github.com/fomantic/Fomantic-UI-SASS'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'autoprefixer-rails'
  spec.add_runtime_dependency 'rails', '>= 3.2.0'
  spec.add_runtime_dependency 'sassc', '>= 2.2'
  spec.add_runtime_dependency 'sassc-rails', '>= 2.1'
  spec.add_runtime_dependency 'sprockets-rails', '>= 2.1.3'

  spec.add_development_dependency 'bundler', '>= 1.3'
  spec.add_development_dependency 'dotenv'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-rails', '>= 3.0'
  spec.add_development_dependency 'rubocop'
end
