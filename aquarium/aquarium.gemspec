# -*- encoding: utf-8 -*-
# This GemSpec adapted from http://rakeroutes.com/blog/lets-write-a-gem-part-one/

# -- this is magic line that ensures "../lib" is in the load path -------------
$:.push File.expand_path("../lib", __FILE__)
require 'aquarium/version'

Gem::Specification.new do |s|
  s.name = "aquarium"
  s.version = Aquarium::VERSION::STRING
  s.summary = Aquarium::VERSION::DESCRIPTION
  s.authors = ["Aquarium Development Team"]
  s.email = "aquarium-devel@rubyforge.org"
  s.homepage = "http://aquarium.rubyforge.org"
  s.rubyforge_project = "aquarium"
  s.description = <<-EOF
    Aquarium is a full-featured Aspect-Oriented Programming (AOP) framework for Ruby that is 
    designed to provide an intuitive syntax and support for large-scale, dynamic aspects.
  EOF

  # Use all files managed with Git.
  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  
  s.bindir = 'bin'

  # Where any executable files included with the gem live.
  # These go in bin by convention. In our case, we have none.
  # s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.executables = []
  s.default_executable = ''

  s.require_paths = ["lib"]

  # Specify dependencies:
  s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"

  # s.has_rdoc = true
  # s.rdoc_options = rd.options
  # s.extra_rdoc_files = rd.rdoc_files.reject { |fn| fn =~ /\.rb$|^EXAMPLES.rd$/ }.to_a
  
  s.autorequire = 'aquarium'
end
