lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "aphorism/version"

Gem::Specification.new do |spec|
  spec.name          = "aphorism"
  spec.version       = Aphorism::VERSION
  spec.authors       = ["Kate Donaldson"]
  spec.email         = ["kate@katelovescode.com"]

  spec.summary       = %q{Gem to generate a random aphorism or quote.}
  spec.homepage      = "https://github.com/katelovescode/aphorism"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/katelovescode/aphorism"
  spec.metadata["changelog_uri"] = "https://github.com/katelovescode/aphorism/releases"

  # inspired by the bundler gem's files list
  spec.files = Dir.glob("{lib,exe}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
  spec.files += %w[CODE_OF_CONDUCT.md LICENSE.txt README.md]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
