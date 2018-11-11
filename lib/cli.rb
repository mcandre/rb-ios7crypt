require_relative 'ios7crypt'

require 'docopt'

USAGE = <<DOCOPT
Usage:
    ios7crypt [options]

Options:
    -e --encrypt <password>  Encrypt a password
    -d --decrypt <hash>      Decrypt a hash
    -t --test                Run self-test
    -v --version             Print version info
    -h --help                Print usage info
DOCOPT

module IOS7Crypt
    def self.main
        begin
            options = Docopt::docopt(USAGE, version: IOS7Crypt::VERSION)

            if options['--encrypt']
                puts options['--encrypt'].encrypt
            elsif options['--decrypt']
                puts options['--decrypt'].decrypt
            elsif options['--test']
                IOS7Crypt::test
            else
                puts USAGE
            end
        rescue Docopt::Exit => e
            puts e.message
        end
    end
end
