# Draper::CanCanCan

In CanCanCan version 13.0 and above, a breaking change was introduced to speed up CanCanCan applications with lots
of rules. Unfortunately, it breaks DraperDecorator. DraperDecorator suggests that you should use decorates_assigned instead, but this is not feasable or worthwhile for most people since it requires changing every reference in the views from '@object' to simply 'object'. Additionally, if you need to reference can? in a view, it still breaks. So something like this code in your view doesn't work for a decorated object: 

This gem provides a simple one line change to restore sanity - simply include the gem and add a line to your ability class.

Here are some references:
* [CanCanCan speedup](https://github.com/CanCanCommunity/cancancan/pull/178)
* [breaking change discussion](https://github.com/CanCanCommunity/cancancan/pull/257)
* [more change discussion](https://github.com/CanCanCommunity/cancancan/issues/255)
* [Official DraperDecorator recommendation][https://github.com/drapergem/draper#when-to-decorate-objects]

Typical error caused by this breaking change is something along the lines of "Not authorized to :read Foo decorator", where Foo was the class that got decorated. Here's the exact error I stumbled across:

    (#<Foo:0x007fcdc917a950>).authorization_error(#<CanCan::AccessDenied: You are not authorized to show foo decorator.>


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'draper-cancancan'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install draper-cancancan



and that's it.

## Usage

In your CanCan ability class, prepend Draper::CanCanCan like this:

```
class Ability 
  include CanCan::Ability
  prepend Draper::CanCanCan
...
```

That's it.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GoodMeasuresLLC/draper-cancan. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

