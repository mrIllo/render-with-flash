$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require 'render_with_flash/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "render_with_flash"
  s.version     = RenderWithFlash::VERSION
  s.authors     = ["Christoph Illnar"]
  s.email       = ["illnar@communitor.com"]
  s.homepage    = "https://communitor.com"
  s.summary     = "Summary of RenderWithFlash."
  s.description = "Description of RenderWithFlash."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.0"

  s.add_development_dependency "sqlite3"
end
