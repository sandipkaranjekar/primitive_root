# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'primitive_root/version'

Gem::Specification.new do |spec|
  spec.name          = "primitive_root"
  spec.version       = PrimitiveRoot::VERSION
  spec.authors       = ["Sandip Karanjekar"]
  spec.email         = ["sandipkaranjekar@gmail.com"]

  spec.summary       = %q{Primitive root and Euler's totient function}
  spec.description   = %q{Get primitive root and Euler totient by passing integer}
  spec.homepage      = "https://github.com/sandipkaranjekar/primitive_root"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 12.3.3"
end
