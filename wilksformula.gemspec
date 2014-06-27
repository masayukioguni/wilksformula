# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wilksformula/version'

Gem::Specification.new do |spec|
  spec.name          = "wilksformula"
  spec.version       = Wilksformula::VERSION
  spec.authors       = ["masayuki_oguni"]
  spec.email         = ["masayuki_oguni.dev@gmail.com"]
  spec.summary       = %q{The Wilks formula is used in IPF meets to determine the best lifter by formula.}
  spec.description   = %q{The Wilks formula is used in IPF meets to determine the best lifter by formula. A table is used to determine the factor to multiply by the lifters total or single lift to give the Wilks Total..}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
