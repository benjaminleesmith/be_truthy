# -*- encoding: utf-8 -*-
require File.expand_path('../lib/be_truthy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Benjamin Smith"]
  gem.email         = ["benjamin.lee.smith@gmail.com"]
  gem.description   = %q{nada}
  gem.summary       = %q{nada}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "be_truthy"
  gem.require_paths = ["lib"]
  gem.version       = BeTruthy::VERSION
  gem.extensions = ["Rakefile"]
end
