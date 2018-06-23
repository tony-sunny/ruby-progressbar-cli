require_relative '../lib/progress_bar'

bar = ProgressBar.new

100.times do
  bar.increment
  sleep 0.1
end
