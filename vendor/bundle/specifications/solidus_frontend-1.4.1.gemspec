# -*- encoding: utf-8 -*-
# stub: solidus_frontend 1.4.1 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_frontend".freeze
  s.version = "1.4.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "2017-06-08"
  s.description = "Cart and storefront for the Solidus e-commerce project.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io/".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.requirements = ["none".freeze]
  s.rubyforge_project = "solidus_frontend".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Cart and storefront for the Solidus e-commerce project.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<solidus_api>.freeze, ["= 1.4.1"])
      s.add_runtime_dependency(%q<solidus_core>.freeze, ["= 1.4.1"])
      s.add_runtime_dependency(%q<canonical-rails>.freeze, ["~> 0.1.1"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<coffee-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<font-awesome-rails>.freeze, ["~> 4.0"])
      s.add_development_dependency(%q<capybara-accessible>.freeze, [">= 0"])
    else
      s.add_dependency(%q<solidus_api>.freeze, ["= 1.4.1"])
      s.add_dependency(%q<solidus_core>.freeze, ["= 1.4.1"])
      s.add_dependency(%q<canonical-rails>.freeze, ["~> 0.1.1"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
      s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
      s.add_dependency(%q<font-awesome-rails>.freeze, ["~> 4.0"])
      s.add_dependency(%q<capybara-accessible>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<solidus_api>.freeze, ["= 1.4.1"])
    s.add_dependency(%q<solidus_core>.freeze, ["= 1.4.1"])
    s.add_dependency(%q<canonical-rails>.freeze, ["~> 0.1.1"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<coffee-rails>.freeze, [">= 0"])
    s.add_dependency(%q<font-awesome-rails>.freeze, ["~> 4.0"])
    s.add_dependency(%q<capybara-accessible>.freeze, [">= 0"])
  end
end
