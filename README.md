# Aphorism

Aphorism is a gem in the vein of `fortune` that returns random customizable aphorisms.

## Quick Install

Wanna run aphorism in your terminal right away?  Clone this repo and run `sh install.sh` from the project root.

## Installation in a Ruby application using bundler

Add this line to your application's Gemfile:

```ruby
gem 'aphorism'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install aphorism

## Usage

`> aphorism`

For extra joy:

```
> gem install lolcat aphorism
> aphorism | lolcat
```

![demo image of aphorisms being populated in rainbow colors](https://raw.githubusercontent.com/katelovescode/aphorism/master/lolcatdemo.png)

### Add more aphorisms

```
mkdir $HOME/.aphorism
touch $HOME/.aphorism/my_category.txt
```

Add new content to any number of `.txt` files in your `$HOME/.aphorism` directory, separating each aphorism from the prior entry with a `%` symbol on a newline.  Feel free to use spacing and newlines and tabs as you see fit for formatting; the gem will respect your spacing.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, commit the change, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/katelovescode/aphorism. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Aphorism project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/katelovescode/aphorism/blob/master/CODE_OF_CONDUCT.md).
