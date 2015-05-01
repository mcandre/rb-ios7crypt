#!/usr/bin/env ruby
#
# Author:: Andrew Pennebaker
# Copyright:: Copyright 2007 - 2013 Andrew Pennebaker
#
# == Synopsis
#
# ios7crypt: encrypts and decrypts passwords with Cisco IOS7 algorithm

require_relative 'version'

require 'rubygems'
require 'rubycheck'
require 'getoptlong'

require 'contracts'
include Contracts

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

#
# IOS7Crypt
#
module IOS7Crypt
  XLAT = [
    0x64, 0x73, 0x66, 0x64, 0x3b, 0x6b, 0x66, 0x6f,
    0x41, 0x2c, 0x2e, 0x69, 0x79, 0x65, 0x77, 0x72,
    0x6b, 0x6c, 0x64, 0x4a, 0x4b, 0x44, 0x48, 0x53,
    0x55, 0x42, 0x73, 0x67, 0x76, 0x63, 0x61, 0x36,
    0x39, 0x38, 0x33, 0x34, 0x6e, 0x63, 0x78, 0x76,
    0x39, 0x38, 0x37, 0x33, 0x32, 0x35, 0x34, 0x6b,
    0x3b, 0x66, 0x67, 0x38, 0x37
  ].freeze
end

#
# Monkeypatch String to feature #encrypt, #decrypt methods.
#
class String
  Contract String => String
  def encrypt
    seed = rand(16)

    hash = (0 .. (length - 1)).map do |i|
      IOS7Crypt::XLAT[(seed + i) % IOS7Crypt::XLAT.length] ^ self[i].ord
    end

    format('%02d', seed) + hash.map do |e|
      format('%02x', e)
    end.join('')
  end

  Contract String => String
  def decrypt
    seed = self[0, 2].to_i

    hash = self[2, length - 1]

    pairs = (0 .. (hash.length / 2 - 1)).map do |i|
      hash[i * 2, 2].to_i(16)
    end

    decrypted = (0 .. (pairs.length - 1)).map do |i|
      IOS7Crypt::XLAT[(seed + i) % IOS7Crypt::XLAT.length] ^ pairs[i]
    end

    decrypted.map { |e| e.chr }.join('')
  end
end

def self.test
  prop_reversible = -> s { s == s.encrypt.decrypt }
  RubyCheck.for_all(prop_reversible, [:gen_str])
end

def main
  begin
    options = Docopt::docopt(USAGE, version: IOS7Crypt::VERSION)

    if options['--encrypt']
      puts options['--encrypt'].encrypt
    elsif options['--decrypt']
      puts options['--decrypt'].decrypt
    elsif options['--test']
      test
    else
      puts USAGE
    end
  rescue Docopt::Exit => e
    puts e.message
  end
end

if $PROGRAM_NAME == __FILE__
  begin
    main
  rescue Interrupt
    nil
  end
end
