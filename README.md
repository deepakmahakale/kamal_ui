# KamalUi

KamalUi is a Rails engine for easily configuring deployment settings in Rails applications.
It provides a simple web interface to edit the `deploy.yml` file, streamlining the deployment process.

## Installation

Install the gem and add to the application's `Gemfile` by executing:

```ruby
bundle add kamal_ui
```

or simply add it to the `Gemfile`:

```ruby
gem 'kamal_ui'
```

Then execute:

```ruby
bundle install
```

Or install it yourself as:

```ruby
gem install kamal_ui
```

## Usage

Mount the KamalUi engine in your application's `config/routes.rb`:

```ruby
mount KamalUi::Engine, at: '/kamal_ui'
```

Access the deployment configuration interface at `/kamal_ui/deploy` (e.g. http://localhost:3000/kamal_ui/deploy).

## Configuration

Ensure your application has a `deploy.yml` file in a known location.
Configure the path in the KamalUi settings if it differs from the default.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deepakmahakale/kamal_ui.
This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/deepakmahakale/kamal_ui/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the KamalUi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/deepakmahakale/kamal_ui/blob/master/CODE_OF_CONDUCT.md).
