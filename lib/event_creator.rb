require './lib/event.rb'

require 'pry'


class EventCreator

  def initialize
    puts "Salut, tu veux créer un évènement ? Cool ! Quel nom lui donne-t-on ?"
    title = gets.chomp
    puts "Impeccable. Il aura lieu quand ? (YYYY-MM-DD hh:mm)"
    date = gets.chomp
    puts "Et il dure combien de minutes cet évènement ?"
    duration = gets.chomp.to_i
    puts "Splendide, et pour finir qui va participer ? (email ; email ; ...)"
    emails_str = gets.chomp
    attendees = emails_str.split(' ; ')

    new_event = Event.new(title, date, duration, attendees)
    puts puts
    puts new_event.to_s
  end

end