# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "gritter"
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Robin Brouwer", "Dani\u{eb}l Zwijnenburg"]
  s.date = "2012-01-23"
  s.description = "This Ruby on Rails gem allows you to easily add Growl-like notifications to your application using a jQuery plugin called 'gritter'."
  s.email = ["robin@45north.nl"]
  s.homepage = "http://www.45north.nl"
  s.require_paths = ["lib"]
  s.rubyforge_project = "nowarning"
  s.rubygems_version = "1.8.10"
  s.summary = "Growl notifications for your Rails application."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
