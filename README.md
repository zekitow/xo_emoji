# Xô Emoji!

Xo Emoji is a Ruby Gem specifically written for strip invalid unicodes by cleaning up any string.

## Install

Just add the following to your Gemfile.

```ruby
gem 'xo_emoji', '~> 0.0.2'
```

And follow that up with a ``bundle install``.

## Usage

Let's supose that we have a string that already has emojis and you want to remove that:

```ruby
str = "Yesterday I got a beer, again! 😬 "
puts str.strip_emojis
> Yesterday I got a beer, again! 
```

## License

Acts as votable is released under the [MIT
License](http://www.opensource.org/licenses/MIT).
