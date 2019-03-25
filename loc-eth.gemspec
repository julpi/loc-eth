# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'web3/eth/version'

Gem::Specification.new do |spec|
  spec.name          = "loc-eth"
  spec.version       = Loc::Eth::VERSION
  spec.authors       = ["Jules Piccotti"]
  spec.email         = ["julpi@jules.it"]

  spec.summary       = %q{High level client to connect and perform transactions to an Ethereum node by RPC.}
  spec.description   = %q{Calling RPC methods of Ethereum node with Ruby.}
  spec.homepage      = "https://github.com/julpi/loc-eth"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
