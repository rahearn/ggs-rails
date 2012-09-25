Gem::Specification.new do |s|
  s.name = 'ggs-rails'
  s.version = '0.0.1'

  s.platform = Gem::Platform::RUBY
  s.authors = ['Ryan Ahearn']
  s.email = ['ryan@coshx.com']
  s.homepage = 'https://github.com/rahearn/ggs-rails'
  s.summary = %q{SASS mixins for easy implementation of The Golden Grid System}
  s.description = %q{SASS mixins for easy implementation of The Golden Grid System}

  s.required_rubygems_version = '>= 1.3.6'

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map { |f| File.basename f }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'rails', '~> 3.2'

  s.add_development_dependency 'rake', '~> 0.9'
end
