# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require 'guard/s3/version'

Gem::Specification.new do |s|
  s.name        = "guard-s3"
  s.version     = Guard::S3::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["James Welsh", "Austin Mullins"]
  s.email       = ["james at supermatter dot com", "Austin dot Mullins at WalkeDesigns dot com"]
  s.homepage    = "http://github.com/guard/guard-s3"
  s.summary     = %q{A simple guard library for syncing files with s3}
  s.description = %q{A simple guard library for syncing files with s3}

  s.required_rubygems_version = '>= 1.3.6'
  s.rubyforge_project         = "guard-s3"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'aws-s3'
  s.add_dependency 'guard'
end
