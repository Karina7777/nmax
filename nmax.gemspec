# coding: utf-8
require File.expand_path('../lib/nmax/version', __FILE__)
Gem::Specification.new do |gem|
  gem.authors       = ["Karina"]
  gem.email         = ["morowind777@gmail.com"]
  gem.description   = %q{Nmax}
  gem.summary       = %q{Nmax}
  gem.homepage      = "http://nmax.me"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = ["nmax"]
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "nmax"
  gem.require_paths = ["lib"]
  gem.version       = Nmax::VERSION
end
