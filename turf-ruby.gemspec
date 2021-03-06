# frozen_string_literal: true

require_relative "lib/turf/version"

Gem::Specification.new do |spec|
  spec.name          = "turf-ruby"
  spec.version       = Turf::VERSION
  spec.authors       = ["Rafael Santos"]
  spec.email         = ["santos@rafael.nz"]

  spec.summary       = "A modular geospatial engine. Ruby port of TurfJS."
  spec.description   = [
    "Turf Ruby is a Ruby library for spatial analysis. ",
    "It includes traditional spatial operations, helper functions for creating",
    " GeoJSON data, and data classification and statistics tools.",
  ].join("")
  spec.homepage      = "http://github.com/formigarafa/turf-ruby"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      f.match(%r{^(test|spec|features)/})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
