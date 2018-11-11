# rb-ios7crypt - Cisco IOS7 router password encryptor/decryptor

# EXAMPLE

```console
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

## Optional

* [make](https://www.gnu.org/software/make/)
* [GNU findutils](https://www.gnu.org/software/findutils/)
* [stank](https://github.com/mcandre/stank) (e.g. `go get github.com/mcandre/stank/...`)
* [Python](https://www.python.org) 3+ (for yamllint)
* [Node.js](https://nodejs.org/en/) (for eclint)

# INSTALL

```console
$ gem install ios7crypt
```
