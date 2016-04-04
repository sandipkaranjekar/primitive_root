# Primitive Root

This gem will help you get **Primitive Root** and **Euler totient function**.These function will help us in areas like cryptography, number theory etc.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'primitive_root'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install primitive_root

## Usage
```ruby
require 'primitive_root'

obj = PrimeComponent.new
# to get primitive root
obj.primitive_root(761) # => 6

# to get Euler totient
obj.euler_totient(10) # => 4
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

