# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "thesilverspoon"
  s.version = "1.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ptotem"]
  s.date = "2012-05-24"
  s.description = "This gem preps a new Rails app with some of the best Rails gems and Jquery sweetness available( Twitter-Bootstrap, Devise, CanCan, Rails Admin, Spreadsheet, ) Not only does it takes care of the installation of these gems, it also extends your scaffolds to give aesthetically improved views. Further, apart from the standard scaffold views, it also creates an AJAX driven integrated view for your scaffold. It dries up your controllers and makes your models friendlier by adding schema stubs and standard validation options. Expect Cucumber integration in our next version"
  s.email = ["info@ptotem.com"]
  s.homepage = "https://github.com/ptotemy/thesilverspoon"
  s.require_paths = ["lib"]
  s.rubyforge_project = "thesilverspoon"
  s.rubygems_version = "1.8.10"
  s.summary = "Let your Rails App be born with a silver spoon in its mouth"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<gritter>, [">= 0"])
      s.add_runtime_dependency(%q<spreadsheet>, [">= 0"])
      s.add_runtime_dependency(%q<carrierwave>, [">= 0"])
      s.add_runtime_dependency(%q<devise>, [">= 0"])
      s.add_runtime_dependency(%q<cancan>, [">= 0"])
      s.add_runtime_dependency(%q<nifty-generators>, [">= 0"])
      s.add_runtime_dependency(%q<cells>, [">= 0"])
    else
      s.add_dependency(%q<gritter>, [">= 0"])
      s.add_dependency(%q<spreadsheet>, [">= 0"])
      s.add_dependency(%q<carrierwave>, [">= 0"])
      s.add_dependency(%q<devise>, [">= 0"])
      s.add_dependency(%q<cancan>, [">= 0"])
      s.add_dependency(%q<nifty-generators>, [">= 0"])
      s.add_dependency(%q<cells>, [">= 0"])
    end
  else
    s.add_dependency(%q<gritter>, [">= 0"])
    s.add_dependency(%q<spreadsheet>, [">= 0"])
    s.add_dependency(%q<carrierwave>, [">= 0"])
    s.add_dependency(%q<devise>, [">= 0"])
    s.add_dependency(%q<cancan>, [">= 0"])
    s.add_dependency(%q<nifty-generators>, [">= 0"])
    s.add_dependency(%q<cells>, [">= 0"])
  end
end
