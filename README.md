# TBK::Webpay

Ruby Implementation of Transbank Webpay Integration Kit

## Installation

Add this line to your application's Gemfile:

    gem 'tbk-webpay', git: 'git@github.com:acidlabs/tbk-webpay.git'

And then execute:

    $ bundle install

## Requirements

* Install in your project the e-commerce Connection Kit (KCC) from Transbank
* Follow the Transbank Webpay Integration manual to configure and set permissions to the directory tree and files.
* Serve your CGI scripts in your Web server

## Usage

Set CGI URL and root path in config/tbk-webpay.yml

    production:
      cgi_base_url: "http://example.com/cgi"
      tbk_root_path: "/home/deploy/example.com/cgi"
    staging:
      cgi_base_url: "http://staging.example.com/cgi"
      tbk_root_path: "/home/deploy/staging.example.com/cgi"

Define private methods in Payment class, with your own application logic.

Finally, you need to create success and failure controllers and their views according to your application logic and frontend design.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
