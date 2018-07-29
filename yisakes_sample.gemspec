
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "yisakes_sample/version"

Gem::Specification.new do |spec|
  spec.name          = "yisakes_sample"
  spec.version       = YisakesSample::VERSION
  spec.authors       = ["yisaketsegaye"]
  spec.email         = ["36218240+yisaketsegaye@users.noreply.github.com"]

  spec.summary       = %q{helps you do everything except all things}
  spec.description   = %q{i said its sample dont say a word after this }
  spec.homepage      = "https://github.com/yisaketsegaye/yisakes_sample"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
