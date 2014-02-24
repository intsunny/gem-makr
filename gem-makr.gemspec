$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'gem_makr/version'

Gem::Specification.new do |s|
  s.name        = 'gem-makr'
  s.version     = Gem_Makr::VERSION
  s.authors     = 'Sunny Dubey'
  s.email       = 'sunny@audiowiki.org'
  s.license     = 'MIT'
  s.description = 'Make template for gems'
  s.homepage    = 'https://github.com/intsunny/ruby-tid-bits'

  s.files              = Dir['bin/*',
                             'lib/*',
                             'lib/**/*']
  s.executables        = 'gem-makr'

  s.add_dependency 'rake'

  s.summary = <<-EOH
Make a template for a gem with an executable file.
Good for quick-n-dirty ops-y gems.
EOH
end
