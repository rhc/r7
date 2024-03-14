# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','r7','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'r7'
  s.version = R7::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.extra_rdoc_files = ['README.rdoc','r7.rdoc']
  s.rdoc_options << '--title' << 'r7' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'r7'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('minitest')
  s.add_runtime_dependency('gli','~> 2.21.1')
end
