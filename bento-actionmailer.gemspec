# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/bento_actionmailer/version"

Gem::Specification.new do |spec|
  spec.name = "bento-actionmailer"
  spec.version = BentoActionMailer::VERSION
  spec.authors = ["Sebastian Szturo"]
  spec.email = ["sebastian.szturo@gmail.com"]

  spec.summary = "Send your emails with ActionMailer through Bento."
  spec.description = "Bento is a powerful messaging automation platform created for online businesses."
  spec.homepage = "https://github.com/bentonow/bento-actionmailer"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bentonow/bento-actionmailer"

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

  spec.add_dependency "rails", ">= 4.2.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
