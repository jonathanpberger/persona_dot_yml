# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'persona_dot_yml/version'

Gem::Specification.new do |gem|
  gem.name          = "persona_dot_yml"
  gem.version       = PersonaDotYML::VERSION
  gem.authors       = ["Jonathan Berger + David Edwards"]
  gem.email         = ["persona_dot_yml@gmail.com"]
  gem.description   = %q{Make builds go red if you abandon personas.}
  gem.summary       = %q{Make builds go red if you abandon personas.}
  gem.homepage      = ""

  gem.add_development_dependency "rspec"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "zeus"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
