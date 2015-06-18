#-------------------- Question 1 ------------------------ 

# true.class => TrueClass
# "hello".class => String
# [1, 2, 3, "happydays"].class => Array
# 142.class => Fixnum
# yes they are all objects

#------------------- Question 2 ------------------------- 

=begin
module Speed
  def go_fast
    puts "I am a #{self.class} and going super fast!"
  end
end

class Car
  include Speed
  def go_slow
    puts "I am safe and driving slow."
  end
end

class Truck
  include Speed
  def go_very_slow
    puts "I am a heavy truck and like going very slow."
  end
end

lumina = Car.new
ranger = Truck.new
lumina.go_fast
ranger.go_fast
=end

# ----------------- Question 3 -----------------------------

# the self.class calls upon the class name of the class that 
# the module is included in. self refers to the object itself,
# the Car or the Truck.

# ----------------- Question 4 -----------------------------

=begin
class AngryCat
  def hiss
    puts "Hisssss!!!"
  end
end

Thomas = AngryCat.new
=end

# ----------------- Question 5 -----------------------------

# @name is an instance variable because it has the @ sign before
# the variable name.
=begin
class Fruit
  def initialize(name)
    name = name
  end
end

class Pizza
  def initialize(name)
    @name = name
  end
end

orange = Fruit.new("Valencia")
hot_pizza = Pizza.new("pepperoni")
puts "------ Orange -----------"
puts
puts orange.instance_variables
puts "------ Pizza ------------"
puts hot_pizza.instance_variables
=end

# ----------------- Question 6 -----------------------------

=begin
class Cube
  def initialize(volume)
    @volume = volume
  end

  def get_volume
  @volume
  end
end

ice = Cube.new(5000)
puts ice.get_volume
=end

# ----------------- Question 7 -----------------------------

# object's class and the object id. refer to Object Oriented
# Programming book

# ----------------- Question 8 -----------------------------

=begin
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    self.age += 1
  end
end

thomas = Cat.new("Persian")
thomas.make_one_year_older
puts thomas.age

self refers to the instance object that called the method - the
calling object.
=end

# ----------------- Question 9 -----------------------------

# the self refers to the class method. It represents the class
# itself, in this case Cat.
=begin
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
  end

  def self.cats_count
    @@cats_count
  end
end

thomas = Cat.new("Persian")
puts Cat.cats_count
=end

# ----------------- Question 10 -----------------------------

=begin
class Bag
  def initialize(color, material)
    @color = color
    @material = material
  end
end

prada = Bag.new("beige", "leather")
puts prada
=end