require './lib/version'

Gem::Specification.new { |s|
    s.name = 'ios7crypt'
    s.summary = 'IOS7 password encryptor/decryptor'
    s.description = 'See README.md for example usage'
    s.license = 'FreeBSD'

    s.version = IOS7Crypt::VERSION

    s.authors = ['Andrew Pennebaker']
    s.email = 'andrew.pennebaker@gmail.com'

    s.executables = ['ios7crypt']

    s.files = Dir['lib/*.rb'] + ['LICENSE.md']
    s.homepage = 'https://github.com/mcandre/rb-ios7crypt'

    s.required_ruby_version = '>= 2.0'

    s.add_dependency 'docopt', '~> 0.5'
    s.add_dependency 'contracts', '0.10.1'
    s.add_dependency 'rubycheck', '0.0.9'

    s.add_development_dependency 'rake', '~> 10.3'
    s.add_development_dependency 'reek', '~> 1.3'
    s.add_development_dependency 'flay', '~> 2.5'
    s.add_development_dependency 'flog', '~> 4.3'
    s.add_development_dependency 'roodi', '~> 4.0'
    s.add_development_dependency 'churn', '~> 1.0'
    s.add_development_dependency 'cane', '~> 2.6'
    s.add_development_dependency 'excellent', '~> 2.1'
    s.add_development_dependency 'rubocop', '~> 0.24'
    s.add_development_dependency 'tailor', '~> 1.4'
    s.add_development_dependency 'rspec', '~> 3.0'
    s.add_development_dependency 'cucumber', '~> 1.3'
    s.add_development_dependency 'aspelllint', '~> 0.10'
    s.add_development_dependency 'lili', '~> 0.2'
}
