
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hotloader/version"

Gem::Specification.new do |spec|
  spec.name          = "hotloader"
  spec.version       = Hotloader::VERSION
  spec.authors       = ["Voxoff"]
  spec.email         = ["guybennettjones@hotmail.co.uk"]

  spec.summary       = %q{Hate refreshing every time you edit your views? Start Hotloading.}
  spec.description   = %q{Hotloader uses ActionCable to serve your page every time you save a file in your app dir. That's your views, css, controllers etc.}
  spec.homepage      = "https://www.github.com/Voxoff"
  spec.license       = "MIT"

  spec.files         = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "listen",'~> 3.0', '>= 3.0.5' # check pls
  spec.add_dependency "rails",  '~> 5.2', '>= 5.1.0'
end
