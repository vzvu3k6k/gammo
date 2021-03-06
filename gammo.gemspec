require_relative 'lib/gammo/version'

Gem::Specification.new do |spec|
  spec.name          = "gammo"
  spec.version       = Gammo::VERSION
  spec.authors       = ["namusyaka"]
  spec.email         = ["namusyaka@gmail.com"]

  spec.summary       = %q{An HTML parser which implements WHATWG parsing algorithm.}
  spec.description   = %q{Gammo is an implementation of the HTML5 parsing algorithm which conforms the WHATWG specification with pure Ruby.}
  spec.homepage      = "https://github.com/namusyaka/gammo"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/namusyaka/gammo"
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
