$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_admin_reset_cache/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_admin_reset_cache"
  s.version     = RailsAdminResetCache::VERSION
  s.authors     = ["azaupa"]
  s.email       = ["azaupa@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of RailsAdminResetCache."
  s.description = "TODO: Description of RailsAdminResetCache."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.11"
end
