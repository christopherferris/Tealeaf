#----------------- Question 1 ------------------------

=begin
class Greeting
  def greet(message)
    puts message
  end
end

class Hello < Greeting
  def hi
    greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

hello = Hello.new
hello.hi # => "Hello"

#hello2 = Hello.new
#hello2.bye # => error undefined method 'bye'

#hello3 = Hello.new
#hello3.greet # => error wrong number of arguments (0 for 1)

hello4 = Hello.new
hello4.greet("Goodbye") # => "Goodbye"

hello5.hi # => undefined local variable or method 'hello5'
=end

#----------------- Question 2 ------------------------

=begin
class Greeting
  def greet(message)
    puts message
  end
end

class Hello
  def self.hi
    greeting = Greeting.new
    greeting.greet("Hello")
  end
end

class Goodbye < Greeting
  def bye
    greet("Goodbye")
  end
end

Hello.hi
=end

#----------------- Question 3 ------------------------

=begin
class AngryCat
  def initialize(age, name)
    @age = age
    @name = name
  end

  def age
    puts @age
  end

  def name
    puts @name
  end

  def hiss
    puts "Hisssss!!!"
  end
end

thomas = AngryCat.new(12, "Thomas")
rayburn = AngryCat.new(10, "Rayburn")

thomas.name
thomas.age
rayburn.name
rayburn.age
=end

#----------------- Question 4 ------------------------

=begin
class Cat
  attr_reader :type
  def initialize(type)
    @type = type
  end

  def to_s
    puts "I am a #{type} cat"
  end
end
thomas = Cat.new("Tabby")
thomas.to_s
=end
=begin
class Cat
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def display_type
    puts "I am a #{type} cat"
  end
end

thomas = Cat.new("Tabby")
thomas.display_type
=end

#----------------- Question 5 ------------------------

=begin
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

tv = Television.new
tv.manufacturer # => undefined method 'manufacturer'
tv.model # => nil

Television.manufacturer # => nil
Television.model # => undefined method 'model' for Television:Class
# (NoMethodError)
=end
# tv.manufacturer results in an error because manufacturer is a 
# class method, it can only be called on the class itself (Television)
# Television.model results in an error because this method only
# exists on an instance of the class Television in this case tv

#----------------- Question 6 ------------------------

=begin
class Cat
  attr_accessor :type, :age

  def initialize(type)
    @type = type
    @age = 0
  end

  def make_one_year_older
    @age += 1
  end
end

thomas = Cat.new("Tabby")
thomas.make_one_year_older
puts thomas.age
=end

#----------------- Question 7 ------------------------

=begin
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    return "I want to turn on the light with a brightness level
    of super high and a colour of green"
  end
end
=end
# The return is not needed here because if you leave it out and
# use a string it is automatically returned.