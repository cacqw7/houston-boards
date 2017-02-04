$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "houston/kanban/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = "houston-kanban"
  spec.version       = Houston::Kanban::VERSION
  spec.authors       = ["Chase Clettenberg"]
  spec.email         = ["clettenberg@gmail.com"]

  spec.summary       = "Houston Kanban"
  spec.description   = "Houston module for Kanban workflow"
  spec.homepage      = "http://www.cclettenberg.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["test/**/*"]

  spec.add_dependency "houston-core", ">= 0.8.0"

  spec.add_development_dependency "bundler", "~> 1.14.3"
  spec.add_development_dependency "rake", "~> 10.0"
end
