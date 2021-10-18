require 'pry'

class User

  attr_accessor :age
  attr_accessor :email
  @@users = Array.new

  def initialize(age, email)
    @age = age
    @email = email
    @@users.push(self)
  end

  def self.all
    return @@users
  end

end