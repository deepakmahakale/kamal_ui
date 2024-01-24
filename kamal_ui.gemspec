# frozen_string_literal: true

require_relative "lib/kamal_ui/version"

Gem::Specification.new do |spec|
  spec.name = "kamal_ui"
  spec.version = KamalUi::VERSION
  spec.authors = ["Deepak Mahakale"]
  spec.email = ["deepakmahakale@gmail.com"]

  spec.summary = "UI wrapper for kamal deploy configuration"
  spec.description = "The KamalUi gem is a Rails engine designed to streamline the process of configuring deployment settings for Rails applications. It provides a user-friendly interface for editing the deploy.yml file."
  spec.homepage = "https://github.com/deepakmahakale/kamal_ui"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/deepakmahakale/kamal_ui"
  spec.metadata["changelog_uri"] = "https://github.com/deepakmahakale/kamal_ui"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rails", ">= 6.0"
end
