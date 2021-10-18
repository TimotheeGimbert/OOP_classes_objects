class User

  attr_accessor :age
  attr_accessor :email
  @@users = Array.new

  def initialize(email, age)
    @email = email
    @age = age
    @@users.push(self)
  end

  def self.all
    return @@users
  end

  def self.find_by_email(email)
    @@users.select {|user| email == user.email}
  end

  def to_s
    return "#{@email} (#{@age} ans)"
  end

end