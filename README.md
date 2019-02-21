# Slackpost

This is the simplest gem you will find to send messages to slack from your application. Although there are some
similar gems, this one is focused on simplicity and usability. Also, it does not have any other gem dependencies!


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slackpost'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slackpost

## Usage

First, you need some lines in your app, in order to configure the slack incoming webhook. If you are not sure what 
token do you need, refer to this page: https://api.slack.com/incoming-webhooks

```ruby
require 'slackpost'

Slackpost.configure do |config|
  config.slack_token = "T00000000/B00000000/XXXXXXXXXXXXXXXXXXXXXXXX"
end
```

That's it! And now you can use the static methods `send_message` and `send_attachemnt`, like this:

```ruby
Slackpost.send_message("This is a test", 'test_channel')

Slackpost.send_attachment("This is a test attachment", 'test_channel',
                          "attachment title", "attachment message", "#0055bb")

```

This gem is active and will be under development, so new features are absolutely welcome. However keep in mind that
the purpose of this gem is to be simple. If you need more specific features, please take a look at other gems.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).


## Contributing

1. Fork it ( https://github.com/guillermijas/slackpost/fork )
2. Create your feature branch (`git checkout -b features/new_feature`)
3. Commit your changes (`git commit -am 'Descriptive comment about the feature'`)
4. Push to the branch (`git push origin features/new_feature`)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
