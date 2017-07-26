# -*- encoding: utf-8 -*-
# stub: typedjs-rails 1.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "typedjs-rails".freeze
  s.version = "1.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["TheDartCode".freeze]
  s.date = "2016-07-24"
  s.description = "Gem that includes Typed.js, in the Rails Asset Pipeline introduced in Rails 3.1".freeze
  s.email = ["giorgos@thedartcode.com".freeze]
  s.homepage = "http://www.thedartcode.com/".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Gem for easily adding Typed.js to the Rails Asset Pipeline".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_development_dependency(%q<rails>.freeze, [">= 3.1"])
    else
      s.add_dependency(%q<railties>.freeze, [">= 3.1"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
      s.add_dependency(%q<rails>.freeze, [">= 3.1"])
    end
  else
    s.add_dependency(%q<railties>.freeze, [">= 3.1"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.0"])
    s.add_dependency(%q<rails>.freeze, [">= 3.1"])
  end
end
