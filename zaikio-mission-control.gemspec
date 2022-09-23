$LOAD_PATH.push File.expand_path("lib", __dir__)
# Maintain your gem's version:
require "zaikio/mission_control/version"

Gem::Specification.new do |spec|
  spec.name          = "zaikio-mission-control"
  spec.version       = Zaikio::MissionControl::VERSION
  spec.authors       = ["Zaikio GmbH"]
  spec.email         = ["dev@zaikio.com"]
  spec.homepage      = "https://www.zaikio.com/"
  spec.summary       = "Ruby API Client for Zaikio Mission Control"
  spec.description   = "Ruby API Client for Zaikio Mission Control"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["changelog_uri"] = "https://github.com/zaikio/zaikio-mission-control-ruby/blob/main/CHANGELOG.md"
    spec.metadata["source_code_uri"] = "https://github.com/zaikio/zaikio-mission-control-ruby"
  end

  spec.files = Dir[
    "{app,config,db,lib}/**/*", "MIT-LICENSE",
    "Rakefile", "README.md"
    ]

  spec.require_paths = ["lib"]
  spec.add_dependency "concurrent-ruby"
  spec.add_dependency "multi_json"
  spec.add_dependency "oj"
  spec.add_dependency "spyke"
  spec.add_dependency "zaikio-client-helpers", "~> 0.3"

  spec.required_ruby_version = ">= 2.7.1"
end
