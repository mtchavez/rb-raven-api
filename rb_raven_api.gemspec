Gem::Specification.new do |s|
  s.name             = 'rb_raven_api'
  s.version          = '0.0.5'
  s.date             = '2013-01-02'
  s.summary          = 'RavenTools API'
  s.description      = 'Wraps RavenTools API calls in a gem.'
  s.authors          = ['Chavez']
  s.email            = ''
  s.files            = Dir.glob("{bin,lib}/**/*") + %w[README.md]
  s.require_paths    = ['lib']
  s.homepage         = 'http://github.com/mtchavez/rb-raven-api'
  s.rdoc_options     = ['--charset=UTF-8 --main=README.md']
  s.extra_rdoc_files = ['README.md', 'CHANGELOG.rdoc']

  s.add_dependency(%q<rest-client>, ['>= 1.6.7'])
  s.add_dependency(%q<hashie>, ['>= 1.2.0'])
  s.add_development_dependency(%q<rspec>, ['>= 2.0'])
  s.add_development_dependency(%q<simplecov>, ['>= 0.7.1'])
  s.add_development_dependency(%q<vcr>, ['>= 2.2.5'])
  s.add_development_dependency(%q<webmock>, ['>= 1.8.11'])
end
