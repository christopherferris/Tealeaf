#-------Question 1-----------
=begin
class Vehicle
  attr_accessor :year, :color, :model

  def self.gas_mileage(miles_traveled, gallons)
    gas_mileage = miles_traveled / gallons
    puts "Your gas mileage is: #{gas_mileage}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
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

class MyCar < Vehicle
  EMBLEM_COLOR = "brown"
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  EMBLEM_COLOR = "White"
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

car = MyCar.new('2015', 'red', 'Pontiac Fiero')
truck = MyTruck.new('1985', 'blue', 'Ford Ranger')
puts car
puts truck
=end

#----------Question 2-----------
=begin
class Vehicle
  @@number_of_vehicles = 0
  attr_accessor :year, :color, :model

  def self.gas_mileage(miles_traveled, gallons)
    gas_mileage = miles_traveled / gallons
    puts "Your gas mileage is: #{gas_mileage}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
    @@number_of_vehicles += 1
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

  def self.number_of_vehicles
    puts "The number of vehicles is: #{@@number_of_vehicles}"
  end
end

class MyCar < Vehicle
  EMBLEM_COLOR = "brown"
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  EMBLEM_COLOR = "White"
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

car = MyCar.new('2015', 'red', 'Pontiac Fiero')
truck = MyTruck.new('1985', 'blue', 'Ford Ranger')
Vehicle.number_of_vehicles
=end

#---------- Question 3 ------------------
=begin
module Turbo_charged
  def turbo
    @speed = @speed * 2
    puts "Your speed is #{@speed}"
  end
end

class Vehicle
  attr_accessor :year, :color, :model

  def self.gas_mileage(miles_traveled, gallons)
    gas_mileage = miles_traveled / gallons
    puts "Your gas mileage is: #{gas_mileage}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
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

class MyCar < Vehicle
  include Turbo_charged
  EMBLEM_COLOR = "brown"
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  EMBLEM_COLOR = "White"
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

car = MyCar.new('2015', 'red', 'Pontiac Fiero')
truck = MyTruck.new('1985', 'blue', 'Ford Ranger')
puts car
puts truck
car.accelerate(10)
car.turbo
=end

#--------- Question 4 ----------------------

# puts MyCar.ancestors
# puts MyTruck.ancestors
# puts Vehicle.ancestors

#---------- Question 5 ----------------------

=begin
module Turbo_charged
  def turbo
    @speed = @speed * 2
    puts "Your speed is #{@speed}"
  end
end

class Vehicle
  attr_accessor :year, :color, :model

  def self.gas_mileage(miles_traveled, gallons)
    gas_mileage = miles_traveled / gallons
    puts "Your gas mileage is: #{gas_mileage}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
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

class MyCar < Vehicle
  include Turbo_charged
  EMBLEM_COLOR = "brown"
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  EMBLEM_COLOR = "White"
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

car = MyCar.new('2015', 'red', 'Pontiac Fiero')
truck = MyTruck.new('1985', 'blue', 'Ford Ranger')
car.accelerate(10)
car.current_speed
car.brake(5)
car.current_speed
car.shut_off
car.current_speed
MyCar.gas_mileage(100, 20)
=end

# ----------- Question 6 ---------------

=begin
module Turbo_charged
  def turbo
    @speed = @speed * 2
    puts "Your speed is #{@speed}"
  end
end

class Vehicle
  attr_accessor :year, :color, :model

  private
  def age
    Time.now.year - self.year.to_i
  end

  public

  def call_age
    puts "Your #{self.model} is #{age} years old."
  end

  def self.gas_mileage(miles_traveled, gallons)
    gas_mileage = miles_traveled / gallons
    puts "Your gas mileage is: #{gas_mileage}"
  end

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
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

class MyCar < Vehicle
  include Turbo_charged
  EMBLEM_COLOR = "brown"
  def to_s
    "My car is a #{year} #{color} #{model}."
  end
end

class MyTruck < Vehicle
  EMBLEM_COLOR = "White"
  def to_s
    "My truck is a #{year} #{color} #{model}."
  end
end

car = MyCar.new('1990', 'red', 'Pontiac Fiero')
truck = MyTruck.new('1985', 'blue', 'Ford Ranger')
car.call_age
=end

#------------ Question 7 --------------------

=begin
class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 93)
steve = Student.new("Steve", 78)
puts joe.better_grade_than?(steve)
=end

#------------------ Question 8 -------------------

=begin
The problem is the method being called 'hi' is a private method
and is therefor only able to be called in another method. You
can fix it by either making the method 'hi' public or by calling 
'hi' in another method and calling that new method.
=end