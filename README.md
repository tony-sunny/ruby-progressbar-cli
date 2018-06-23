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
  bar.increment(1)
  sleep 0.1
end

new_bar = ProgressBar.new(title: 'Installing', count: 50, show_time: false)

new_bar.increment(10) # Progress bar is at 20% (since count is 50)
new_bar.percentage = 60 # Progress bar is at 60%
new_bar.increment(15) # Progress bar is at 100%

```

## Options

`ProgressBar Class Initialize`

Default value is given in brackets.

- `title(Progress)` - title of progress bar
- `count(100)` - how many times increment method needs to be called to complete progress bar.
- `show_time(true)` - whether elapsed time is shown after probress bar is completed.


