# Hotloader

```Caution: Hotloader is for Rails 5 and below ```

You know that expressionless face when you're waiting for your views to load. _Every_ time you change a little bit of CSS. Well Hotloader auto refreshes your views. :open_mouth: 

Everytime you save a file in your rails app folder, your browser will automatically refresh. Save a view, a controller, a css component, your browser will refresh.

You could use Guard, Guardfiles, GuardLiveReload, bundle exec guard, another guard bug... but is that your best life?

Give ActionCable time to boot on launch of server and voilà.

[![Gem Version](https://badge.fury.io/rb/hotloader.svg)](https://badge.fury.io/rb/hotloader)

https://rubygems.org/gems/hotloader

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'hotloader', group: :development
```

Or install it yourself as:

    $ gem install hotloader


Don't forget the javascript in application.js

``` javascript
//= require hotloader
```

## Debugging

ActionCable requires redis. On OSX:
``` bash
brew install redis
```

If the gem is not in the :development group, it will break deployment e.g. Heroku without Redis

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/hotloader. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Hotloader project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/hotloader/blob/master/CODE_OF_CONDUCT.md).
