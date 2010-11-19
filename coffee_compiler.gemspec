# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "coffee_compiler/version"

Gem::Specification.new do |s|
  s.name        = "coffee_compiler"
  s.version     = CoffeeCompiler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = "http://rubygems.org/gems/coffee_compiler"
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "coffee_compiler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
