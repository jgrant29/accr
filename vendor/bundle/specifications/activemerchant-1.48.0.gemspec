# -*- encoding: utf-8 -*-
# stub: activemerchant 1.48.0 ruby lib

Gem::Specification.new do |s|
  s.name = "activemerchant".freeze
  s.version = "1.48.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tobias Luetke".freeze]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDcDCCAligAwIBAgIBATANBgkqhkiG9w0BAQUFADA/MQ8wDQYDVQQDDAZhZG1p\nbnMxFzAVBgoJkiaJk/IsZAEZFgdzaG9waWZ5MRMwEQYKCZImiZPyLGQBGRYDY29t\nMB4XDTE0MDUxNTIwMzM0OFoXDTE1MDUxNTIwMzM0OFowPzEPMA0GA1UEAwwGYWRt\naW5zMRcwFQYKCZImiZPyLGQBGRYHc2hvcGlmeTETMBEGCgmSJomT8ixkARkWA2Nv\nbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAL0/81O3e1vh5smcwp2G\nMpLQ6q0kejQLa65bPYPxdzWA1SYOKyGfw+yR9LdFzsuKpwWzKq6zX35lj1IckWS4\nbNBEQzxmufUxU0XPM02haFB8fOfDJzdXsWte9Ge4IFwahwn68gpMqN+BvxL+KMYz\nIut9YmN44d4LZdsENEIO5vmybuG2vYDz7R56qB0PA+Q2P2CdhymsBad2DQs69FBo\nuico9V6VMYYctL9lCYdzu9IXrOYNTt88suKIVzzAlHOKeN0Ng5qdztFoTR8sfxDr\nYdg3KHl5n47wlpgd8R0f/4b5gGxW+v9pyJCgQnLlRu7DedVSvv7+GMtj3g9r3nhJ\nKqECAwEAAaN3MHUwCQYDVR0TBAIwADALBgNVHQ8EBAMCBLAwHQYDVR0OBBYEFI/o\nmaf34HXbUOQsdoLHacEKQgunMB0GA1UdEQQWMBSBEmFkbWluc0BzaG9waWZ5LmNv\nbTAdBgNVHRIEFjAUgRJhZG1pbnNAc2hvcGlmeS5jb20wDQYJKoZIhvcNAQEFBQAD\nggEBADkK9aj5T0HPExsov4EoMWFnO+G7RQ28C30VAfKxnL2UxG6i4XMHVs6Xi94h\nqXFw1ec9Y2eDUqaolT3bviOk9BB197+A8Vz/k7MC6ci2NE+yDDB7HAC8zU6LAx8Y\nIqvw7B/PSZ/pz4bUVFlTATif4mi1vO3lidRkdHRtM7UePSn2rUpOi0gtXBP3bLu5\nYjHJN7wx5cugMEyroKITG5gL0Nxtu21qtOlHX4Hc4KdE2JqzCPOsS4zsZGhgwhPs\nfl3hbtVFTqbOlwL9vy1fudXcolIE/ZTcxQ+er07ZFZdKCXayR9PPs64heamfn0fp\nTConQSX2BnZdhIEYW+cKzEC/bLc=\n-----END CERTIFICATE-----\n".freeze]
  s.date = "2015-04-08"
  s.description = "Active Merchant is a simple payment abstraction library used in and sponsored by Shopify. It is written by Tobias Luetke, Cody Fauser, and contributors. The aim of the project is to feel natural to Ruby users and to abstract as many parts as possible away from the user to offer a consistent interface across all supported gateways.".freeze
  s.email = "tobi@leetsoft.com".freeze
  s.homepage = "http://activemerchant.org/".freeze
  s.licenses = ["MIT".freeze]
  s.rubyforge_project = "activemerchant".freeze
  s.rubygems_version = "2.6.12".freeze
  s.summary = "Framework and tools for dealing with credit card transactions.".freeze

  s.installed_by_version = "2.6.12" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>.freeze, ["< 5.0.0", ">= 3.2.14"])
      s.add_runtime_dependency(%q<i18n>.freeze, [">= 0.6.9"])
      s.add_runtime_dependency(%q<builder>.freeze, ["< 4.0.0", ">= 2.1.2"])
      s.add_runtime_dependency(%q<nokogiri>.freeze, ["~> 1.4"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3"])
      s.add_development_dependency(%q<mocha>.freeze, ["~> 1"])
      s.add_development_dependency(%q<thor>.freeze, [">= 0"])
    else
      s.add_dependency(%q<activesupport>.freeze, ["< 5.0.0", ">= 3.2.14"])
      s.add_dependency(%q<i18n>.freeze, [">= 0.6.9"])
      s.add_dependency(%q<builder>.freeze, ["< 4.0.0", ">= 2.1.2"])
      s.add_dependency(%q<nokogiri>.freeze, ["~> 1.4"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3"])
      s.add_dependency(%q<mocha>.freeze, ["~> 1"])
      s.add_dependency(%q<thor>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<activesupport>.freeze, ["< 5.0.0", ">= 3.2.14"])
    s.add_dependency(%q<i18n>.freeze, [">= 0.6.9"])
    s.add_dependency(%q<builder>.freeze, ["< 4.0.0", ">= 2.1.2"])
    s.add_dependency(%q<nokogiri>.freeze, ["~> 1.4"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3"])
    s.add_dependency(%q<mocha>.freeze, ["~> 1"])
    s.add_dependency(%q<thor>.freeze, [">= 0"])
  end
end
