# Twofu: A Two-factor Authenticator Command-line App

Twofu is a compatible command-line alternative to Google Authenticator which allows you to get 2FA codes when you aren't near your phone, quickly. It will show you current, previous and next codes for each account you have, as well as telling you how many seconds until they expires.

## Installation

Simply install this gem:

    $ gem install twofu

## Usage

Before using this app, you should prepare a file in which you will store all your secrets:

    $ touch ~/.twofu.yml

Add your secret in the form of `Account Name: SOMEBASE32SECRET` (notice the space after colon, it's important) e.g.

    $ echo "The TARDIS: BZCZ3OUC5BUJEYYC" >> ~/.twofu.yml
    $ echo "Bank of Karabraxos: Z44QN4EZK76H5MVG" >> ~/.twofu.yml

Enjoy the tofu:

    $ twofu
    +--------------------+--------+--------+--------+
    | account            | prev   | now    | next   |
    +--------------------+--------+--------+--------+
    | The TARDIS         | 754027 | 907055 | 423897 |
    | Bank of Karabraxos | 062481 | 361305 | 534213 |
    +--------------------+--------+--------+--------+
    [===============               ] 15s

## Thanks

Twofu is made possible thanks to these awesome gems:

  - [rotp](https://github.com/mdp/rotp)
  - [terminal-table](https://github.com/tj/terminal-table)

Twofu is a clone of [gauth](https://github.com/pcarrier/gauth) (which is not too bad for the first gem that I made, I guess).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ukazap/twofu.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).