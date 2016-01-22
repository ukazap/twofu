# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twofu'

Gem::Specification.new do |spec|
  spec.name          = "twofu"
  spec.version       = Twofu::VERSION
  spec.authors       = ["Ukaza Perdana"]
  spec.email         = ["ukz@programmer.net"]

  spec.summary       = %q{A two-factor authenticator command-line app.}
  spec.description   = %q{Twofu is a compatible command-line alternative to Google Authenticator which allows you to get 2FA codes when you aren't near your phone, quickly.}
  spec.homepage      = "https://github.com/ukazap/twofu"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = ["bin/twofu", "lib/twofu.rb", "LICENSE.txt", "README.md"]
  spec.executables   = ["twofu"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "rotp", "~> 2.1"
  spec.add_dependency "terminal-table", "~> 1.5"
end
