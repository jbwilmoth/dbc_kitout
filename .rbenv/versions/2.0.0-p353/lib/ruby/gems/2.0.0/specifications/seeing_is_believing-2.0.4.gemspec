# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "seeing_is_believing"
  s.version = "2.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Josh Cheek"]
  s.date = "2013-11-01"
  s.description = "Records the results of every line of code in your file (intended to be like xmpfilter), inspired by Bret Victor's JavaScript example in his talk \"Inventing on Principle\""
  s.email = ["josh.cheek@gmail.com"]
  s.executables = ["seeing_is_believing"]
  s.files = ["bin/seeing_is_believing"]
  s.homepage = "https://github.com/JoshCheek/seeing_is_believing"
  s.licenses = ["WTFPL"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "seeing_is_believing"
  s.rubygems_version = "2.0.14"
  s.summary = "Records results of every line of code in your file"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<parser>, ["~> 2.0.0"])
      s.add_development_dependency(%q<haiti>, ["~> 0.0.3"])
      s.add_development_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_development_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_development_dependency(%q<cucumber>, ["~> 1.2.1"])
      s.add_development_dependency(%q<ichannel>, ["~> 5.1.1"])
    else
      s.add_dependency(%q<parser>, ["~> 2.0.0"])
      s.add_dependency(%q<haiti>, ["~> 0.0.3"])
      s.add_dependency(%q<rake>, ["~> 10.0.3"])
      s.add_dependency(%q<rspec>, ["~> 2.12.0"])
      s.add_dependency(%q<cucumber>, ["~> 1.2.1"])
      s.add_dependency(%q<ichannel>, ["~> 5.1.1"])
    end
  else
    s.add_dependency(%q<parser>, ["~> 2.0.0"])
    s.add_dependency(%q<haiti>, ["~> 0.0.3"])
    s.add_dependency(%q<rake>, ["~> 10.0.3"])
    s.add_dependency(%q<rspec>, ["~> 2.12.0"])
    s.add_dependency(%q<cucumber>, ["~> 1.2.1"])
    s.add_dependency(%q<ichannel>, ["~> 5.1.1"])
  end
end
