# -*- encoding: utf-8 -*-
# stub: solidus 1.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "solidus".freeze
  s.version = "1.2.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.8.23".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Solidus Team".freeze]
  s.date = "2016-03-07"
  s.description = "Solidus is an open source e-commerce framework for Ruby on Rails.".freeze
  s.email = "contact@solidus.io".freeze
  s.homepage = "http://solidus.io".freeze
  s.licenses = ["BSD-3".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Full-stack e-commerce framework for Ruby on Rails.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<solidus_core>.freeze, ["= 1.2.2"])
      s.add_runtime_dependency(%q<solidus_api>.freeze, ["= 1.2.2"])
      s.add_runtime_dependency(%q<solidus_backend>.freeze, ["= 1.2.2"])
      s.add_runtime_dependency(%q<solidus_frontend>.freeze, ["= 1.2.2"])
      s.add_runtime_dependency(%q<solidus_sample>.freeze, ["= 1.2.2"])
    else
      s.add_dependency(%q<solidus_core>.freeze, ["= 1.2.2"])
      s.add_dependency(%q<solidus_api>.freeze, ["= 1.2.2"])
      s.add_dependency(%q<solidus_backend>.freeze, ["= 1.2.2"])
      s.add_dependency(%q<solidus_frontend>.freeze, ["= 1.2.2"])
      s.add_dependency(%q<solidus_sample>.freeze, ["= 1.2.2"])
    end
  else
    s.add_dependency(%q<solidus_core>.freeze, ["= 1.2.2"])
    s.add_dependency(%q<solidus_api>.freeze, ["= 1.2.2"])
    s.add_dependency(%q<solidus_backend>.freeze, ["= 1.2.2"])
    s.add_dependency(%q<solidus_frontend>.freeze, ["= 1.2.2"])
    s.add_dependency(%q<solidus_sample>.freeze, ["= 1.2.2"])
  end
end
