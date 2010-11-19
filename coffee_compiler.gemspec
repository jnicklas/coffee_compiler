# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "coffee_compiler/version"

Gem::Specification.new do |s|
  s.name        = "coffee_compiler"
  s.version     = CoffeeCompiler::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jonas Nicklas", "Edithouse Elabs AB"]
  s.email       = ["jonas.nicklas@gmail.com"]
  s.homepage    = "http://github.com/jnicklas/coffee_compiler"
  s.summary     = %q{compile coffee script from ruby}
  s.description = %q{compile coffee script from ruby}

  s.rubyforge_project = "coffee_compiler"

  s.add_runtime_dependency "therubyracer", "~> 0.7.0"
  s.add_development_dependency "rspec", "~> 2.0"
  s.add_development_dependency "yard"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
