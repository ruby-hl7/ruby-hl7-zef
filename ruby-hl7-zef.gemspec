# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hl7/zef/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-hl7-zef"
  spec.version       = HL7::ZEF::VERSION
  spec.authors       = ["Enrique Carlos Mogollan"]
  spec.email         = ["emogollan@gmail.com"]
  spec.summary       = %q{Provides a custom ZEF segment to the ruby-hl7 gem.}
  spec.description   = %q{ZEF is a custom segment commonly used to embed PDFs}
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^spec/}) }
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ruby-hl7", "~> 1.1"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
