# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "robot_simulator/version"

Gem::Specification.new do |s|
  s.name        = "RobotSimulator"
  s.version     = RobotSimulator::VERSION
  s.authors     = ["Li Yanhui"]
  s.email       = ["whimet@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Robot Simulator}
  s.description = %q{A toy robot simulator}

  s.rubyforge_project = "RobotSimulator"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  s.add_development_dependency "rake"
  s.add_development_dependency "guard-rspec"
end
