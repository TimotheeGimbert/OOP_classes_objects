require 'pry'
require 'time'

class Event

  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees

  def initialize(start_date, duration, title)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
  end

end

binding.pry