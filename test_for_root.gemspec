# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_for_root/version'

Gem::Specification.new do |gem|
  gem.name          = "test_for_root"
  gem.version       = TestForRoot::VERSION
  gem.authors       = ["Peter Bomars"]
  gem.email         = ["pbomars@gmail.com"]
  gem.description   = %q{A gem that tests for root}
  gem.summary       = %q{A gem that tests for root on *nix systems with a basic API}
  gem.homepage      = "https://github.com/gekken/test_for_root"
  gem.license       = "GPLv3"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}) { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end
