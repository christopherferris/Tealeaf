# --------------- Question 1 -------------------------

=begin
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

oracle = Oracle.new
oracle.predict_the_future
=end
# A string is returned which will be of the form "You will <something>"
# where the something is one of the three phrases defined in the 
# get_choices array.

# --------------- Question 2 -------------------------

=begin
class Oracle
  def predict_the_future
    "You will " + choices.sample
  end

  def choices
    ["eat a nice lunch", "take a nap soon", "stay at work late"]
  end
end

class RoadTrip < Oracle
  def choices
    ["visit Vegas", "fly to Fiji", "romp in Rome"]
  end
end

trip = RoadTrip.new
puts trip.predict_the_future
=end
# A string is returned which will be of the form "You will <something>"
# where the something is one of the three phrases defined in the
# choices array in the RoadTrip class.
# --------------- Question 3 -------------------------

=begin
module Taste
  def flavor(flavor)
    puts "#{flavor}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

puts Orange.ancestors
puts HotSauce.ancestors
=end
# --------------- Question 4 -------------------------

=begin
class BeesWax
  attr_accessor :type
  def initialize(type)
    @type = type
  end

  def describe_type
    puts "I am a #{type} of Bees Wax"
  end
end
=end

# --------------- Question 5 -------------------------
=begin
excited_dog = "excited dog" => local variable
@excited_dog = "excited dog" => instance variable
@@excited_dog = "excited dog" => class variable
=end
# local variables do not contain anything prefixed. Local variables
# are prefixed with the @ and class variables are prefixed with @@.

# --------------- Question 6 -------------------------

=begin
class Television
  def self.manufacturer
    # method logic
  end

  def model
    # method logic
  end
end

Television.manufacturer
=end
# self.manufacturer is a class method, it has self prefixed to 
# the method name. You call it like so Television.manufacturer
# --------------- Question 7 -------------------------

=begin
class Cat
  @@cats_count = 0

  def initialize(type)
    @type = type
    @age = 0
    @@cats_count += 1
    puts @@cats_count
  end

  def self.cats_count
    @@cats_count
  end
end

Thomas = Cat.new("Persian")
=end
# @@cats_count class variable holds the number for how many
# instances of the class Cat are created.

# --------------- Question 8 -------------------------

=begin
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

seventies_night = Bingo.new
seventies_night.play
=end

# --------------- Question 9 -------------------------

=begin
class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end
  def play
    "Start the Bingo game!"
  end
end

start = Bingo.new
start.play
=end
# The play method in the Bingo class overrides the play method
# in the Game class and runs the code in the play method (Bingo class)

# --------------- Question 10 -------------------------

# You can create cleaner, better organized code. It can shorten
# your code. Using inherit you can shorten your code instead of
# replicating the same code, it allows for reusability. 