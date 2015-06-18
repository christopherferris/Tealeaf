#-------------------Question 1------------------------

=begin
class MyCar
    attr_accessor :year, :color, :model

  def self.gas_mileage(miles_traveled, gallons)
    gas_mileage = miles_traveled / gallons
    puts "Your gas mileage is: #{gas_mileage}"
  end

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
  end

  def accelerate(number)
    @speed += number
    puts "You speed up #{number} mph"
  end

  def brake(number)
    @speed -= number
    puts "You slow down #{number} mph"
  end

  def current_speed
    puts "You are going #{@speed} mph"
  end

  def shut_off
    @speed = 0
    puts "You shut the car off."
  end
end

MyCar.gas_mileage(100, 5)
=end

#-----------------------Question 2-------------------------
=begin
class YourName

  attr_accessor :name

  def initialize(n)
    @name = n
  end

  def to_s
    "Your name is #{name}"
  end
end

chris = YourName.new("Chris")
puts chris
=end

#------------------------Question 3-----------------------
=begin
class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
=end

# We get an error because the code is trying to use the setter method in the 
# line bob.name = "Bob" but we used the attr_reader instead of the attr_accessor
# method. We can fix this by attaching the attr_accessor method instead of the 
# attr_reader method like so:
=begin
class Person
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"
=end