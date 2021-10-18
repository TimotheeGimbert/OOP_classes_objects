require 'time'


class Event

  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  @@attendees = Array.new

  def initialize(title, start_date, duration, attendees_array)
    @title = title
    @start_date = Time.parse(start_date)
    @duration = duration
    @@attendees = attendees_array
  end

  def postpone_24h
    @start_date += 86400
  end

  def end_date
    return @start_date + (@duration * 60)
  end

  def is_soon?
    puts @start_date - Time.now < 1800 ? "C'est bientot !" : "C'est bon vous avez plus de 30min avant le début de l'event"
  end

  def to_s
    puts "Title : #{@title}"
    puts "Date de début : #{@start_date.strftime('%d/%m/%Y à %H:%M:%S')}"
    puts "Durée : #{@duration} minutes"
    puts "Invités : #{@@attendees.join(', ')}"
  end

end