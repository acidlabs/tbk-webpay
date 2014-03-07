# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tbk/webpay/version'

Gem::Specification.new do |spec|
  spec.name          = "tbk-webpay"
  spec.version       = TBK::Webpay::VERSION
  spec.authors       = ["Gonzalo Bulnes, Ignacio Mella, Cristian Carreño, Ignacio Verdejo"]
  spec.email         = ["iverdejo@acid.cl"]
  spec.description   = %q{Ruby Implementation of Transbank Webpay Integration Kit}
  spec.summary       = %q{Ruby Implementation of Transbank Webpay Integration Kit}
  spec.homepage      = "https://github.com/acidlabs/tbk-webpay"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
