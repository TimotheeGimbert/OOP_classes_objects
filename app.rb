require './lib/user.rb'
require './lib/event.rb'
require 'pry'


event1 = Event.new(
  "2021-10-18 16:45",
  30,
  "The Great 9 Opening",
  ["julie@free.fr", "dudu@gmail.com"]
)

nolwenn = User.new("nolwenn@free.fr", 24)
tim = User.new("tim@gmail.com", 32)

binding.pry