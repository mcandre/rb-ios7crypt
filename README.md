# rb-ios7crypt - Cisco IOS7 router password encryptor/decryptor

# EXAMPLE

```
$ ios7crypt -e monkey
104306170e120b

$ ios7crypt -d 104306170e120b
monkey

$ ios7crypt -h
Usage:
  ios7crypt [options]

Options:
  -e --encrypt <password>  Encrypt a password
  -d --decrypt <hash>      Decrypt a hash
  -t --test                Run self-test
  -v --version             Print version info
  -h --help                Print usage info
```

# REQUIREMENTS

* [Ruby](https://www.ruby-lang.org/) 2.0+

# INSTALL

```
$ gem install ios7crypt
```
