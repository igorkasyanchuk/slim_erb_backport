$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "slim_erb_backport/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "slim_erb_backport"
  spec.version     = SlimErbBackport::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/slim_erb_backport"
  spec.summary     = "Backport support for Slim 4+ version for ERB support in Slim views."
  spec.description = "Backport support for Slim 4+ version for ERB support in Slim views."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"
  spec.add_dependency "slim"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
end
