require 'byebug'

class Clock
  def initialize(hour: 0, minute: 0)
    @hour = (24 + hour + ((minute / 60).to_i))%24
    @minute = (60 + minute)%60
  end

  def ==(other_clock)
    other_clock.to_s == to_s
  end

  def -(other_clock)
    minutes = (to_i - other_clock.to_i)
    @hour = (minutes / 60).to_i
    @minutes = minutes % 60
  end

  def to_i
    @hour * 60  +  @minute
  end

  def to_s
    format('%02d', @hour) + ":" + format('%02d', @minute)
  end
end
