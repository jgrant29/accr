# -*- encoding: utf-8 -*-
# stub: solidus_backend 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus_backend".freeze
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "2016-03-07"
  s.description = "Admin interface for the Solidus e-commerce framework.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.requirements = ["none".freeze]
  s.rubyforge_project = "solidus_backend".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Admin interface for the Solidus e-commerce framework.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<solidus_api>.freeze, ["= 1.2.2"])
      s.add_runtime_dependency(%q<solidus_core>.freeze, ["= 1.2.2"])
      s.add_runtime_dependency(%q<bourbon>.freeze, ["< 6", ">= 4"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<jquery-ui-rails>.freeze, ["~> 5.0.0"])
      s.add_runtime_dependency(%q<select2-rails>.freeze, ["= 3.5.9.1"])
      s.add_runtime_dependency(%q<handlebars_assets>.freeze, ["~> 0.23"])
    else
      s.add_dependency(%q<solidus_api>.freeze, ["= 1.2.2"])
      s.add_dependency(%q<solidus_core>.freeze, ["= 1.2.2"])
      s.add_dependency(%q<bourbon>.freeze, ["< 6", ">= 4"])
      s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
      s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 5.0.0"])
      s.add_dependency(%q<select2-rails>.freeze, ["= 3.5.9.1"])
      s.add_dependency(%q<handlebars_assets>.freeze, ["~> 0.23"])
    end
  else
    s.add_dependency(%q<solidus_api>.freeze, ["= 1.2.2"])
    s.add_dependency(%q<solidus_core>.freeze, ["= 1.2.2"])
    s.add_dependency(%q<bourbon>.freeze, ["< 6", ">= 4"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 5.0.0"])
    s.add_dependency(%q<select2-rails>.freeze, ["= 3.5.9.1"])
    s.add_dependency(%q<handlebars_assets>.freeze, ["~> 0.23"])
  end
end
