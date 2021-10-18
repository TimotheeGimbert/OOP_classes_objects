require './lib/user.rb'
require './lib/event.rb'
require './lib/event_creator.rb'
#require './lib/calendar_displayer.rb'

require 'pry'


nolwenn = User.new("nolwenn@free.fr", 24)
tim = User.new("tim@gmail.com", 32)

event = Event.new('RickAndMorty', '2021-10-18 20h30', 75, [nolwenn, tim])

puts event.to_s

event.age_analysis 

binding.pry