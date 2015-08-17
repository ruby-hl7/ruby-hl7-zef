# HL7::ZEF

Adds support for the ZEF segment to [`ruby-hl7`](https://github.com/ruby-hl7/ruby-hl7)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ruby-hl7-zef'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ruby-hl7-zef

## Usage

```ruby
require 'base64'

msg = HL7::Message.parse(hl7_with_zef)
Array(msg[:ZEF]).each_with_index do |zef, i|
  File.write("zef-#{i}.pdf", Base64.decode64(zef.embedded_pdf))
end
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/ruby-hl7-zef/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
