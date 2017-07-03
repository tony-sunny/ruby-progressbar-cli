[![Gem Version](https://badge.fury.io/rb/ruby-progressbar-cli.svg)](https://badge.fury.io/rb/ruby-progressbar-cli)

# Progress Bar
## Installation
Install from rubygems.org
```ruby
gem install ruby-progressbar-cli
```
## How To Use
```ruby
require 'progress_bar'
bar = ProgressBar.new

100.times do
  bar.increment
  sleep 0.1
end
```

