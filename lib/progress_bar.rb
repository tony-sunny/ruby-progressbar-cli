require_relative 'string_format'

class ProgressBar

  attr_reader :percentage

  def initialize(title: "Progress", count: 100)
    @start_time = Time.now
    @percentage = 0
    @initial_string = "\u2591" * 50
    @title = title
    @count = count
  end

  def percentage=(value)
    @percentage = value
    increment(0)
  end

  def increment(value = 1)
    unless value.zero?
      @percentage += value * 100.0 / @count
      error_check(@percentage)
    end
    rounded_percentage = @percentage.round(5)
    normalized_percentage = rounded_percentage.to_i / 2
    progress = "\u2588" * normalized_percentage
    remaining = @initial_string[normalized_percentage..49]
    print "\r#{@title}: #{progress.green}#{remaining} #{rounded_percentage.to_i}%"
    puts "\nCompleted in #{time_taken}" if rounded_percentage == 100
  end

  private

  def time_taken
    seconds = (Time.now - @start_time).round
    if seconds < 60
      "#{seconds}s"
    elsif seconds < 3600
      "#{seconds / 60}m #{seconds % 60}s"
    else
      "#{seconds / 3600}h #{(seconds / 60) % 60}m #{seconds % 60}s"
    end
  end

  def error_check(value)
    return if value.is_a?(Numeric) && value.between?(0, 100)
    raise ArgumentError, 'Value must be a number between 0 and 100'
  end

end
