require './lib/version'

Gem::Specification.new { |s|
  s.name = 'ios7crypt'
  s.summary = 'IOS7 password encryptor/decryptor'
  s.description = 'See README.md for example usage'
  s.license = 'FreeBSD'

  s.version = IOS7Crypt::VERSION
  s.date = '2014-08-06'

  s.authors = ['Andrew Pennebaker']
  s.email = 'andrew.pennebaker@gmail.com'

  s.executables = ['ios7crypt']

  s.files = Dir['lib/*.rb'] + ['LICENSE.md']
  s.homepage = 'https://github.com/mcandre/rb-ios7crypt'

  s.add_dependency 'contracts'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'reek'
  s.add_development_dependency 'flay'
  s.add_development_dependency 'flog'
  s.add_development_dependency 'roodi'
  s.add_development_dependency 'churn'
  s.add_development_dependency 'cane'
  s.add_development_dependency 'excellent'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'tailor'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-shell', '>= 0.6'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'aspelllint'
}
