# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mruby/rake/tasks/version'

Gem::Specification.new do |spec|
  spec.name          = "mruby-rake-tasks"
  spec.version       = MRuby::Rake::Tasks::VERSION
  spec.authors       = ["jbreeden"]
  spec.email         = ["jared.breeden@gmail.com"]

  spec.summary       = %q{Rake tasks for performing mruby builds.}
  # spec.description   = %q{TODO: Write a longer description or delete this line.}
  spec.homepage      = "https://github.com/jbreeden/mruby-rake-tasks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
