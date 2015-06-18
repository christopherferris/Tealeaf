#----------------- Question 1 -------------------------

=begin
class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

bofa = BankAccount.new(100_000)
bofa.positive_balance?
=end
# Ben is right, the @ is not needed. The code still runs fine
# without the @.

#----------------- Question 2 -------------------------

=begin
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    @quantity = updated_count if updated_count >= 0
    puts quantity
  end
end

entry = InvoiceEntry.new("keyboard", 5)
entry.update_quantity(3)
=end
# quantity is an instance variable, it must be changed to @quantity

#----------------- Question 3 -------------------------

=begin
class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end
end

entry = InvoiceEntry.new("keyboard", 5)
entry.update_quantity(3)
puts entry.quantity
=end
# you must prepend self to quantity for it to work. You are
# altering the public interfaces of the class allowing clients
# of the class to change the quantity directly.

#----------------- Question 4 -------------------------

=begin
class Greeting
  def greet(greeting)
    puts "#{greeting}"
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

hi = Hello.new
hi.hi
bye = Goodbye.new
bye.bye
=end

#----------------- Question 5 -------------------------

=begin
class KrispyKreme
  def initialize(filling_type, glazing)
    @filling_type = filling_type
    @glazing = glazing
  end

  def to_s
    filling_string = @filling_type ? @filling_type : "Plain"
    glazing_string = @glazing ? " with #{@glazing}" : ''
    filling_string + glazing_string
  end
end

donut1 = KrispyKreme.new(nil, nil)
donut2 = KrispyKreme.new("Vanilla", nil)
donut3 = KrispyKreme.new(nil, "sugar")
donut4 = KrispyKreme.new(nil, "chocolate sprinkles")
donut5 = KrispyKreme.new("Custard", "icing")

puts donut1
puts donut2
puts donut3
puts donut4
puts donut5
=end

#----------------- Question 6 -------------------------

=begin
class Computer
  attr_accessor :template

  def create_template
    @template = "template 14231"
  end

  def show_template
    template
  end
end

pc = Computer.new
pc.create_template
puts pc.show_template
=end

=begin
class Computer
  attr_accessor :template

  def create_template
    self.template = "template 14231"
  end

  def show_template
    self.template
  end
end

pc = Computer.new
pc.create_template
puts pc.show_template
=end
# There is no difference.

#----------------- Question 7 -------------------------

=begin
class Light
  attr_accessor :brightness, :color

  def initialize(brightness, color)
    @brightness = brightness
    @color = color
  end

  def self.information
    "I want to turn on the light with a brightness level of super high and a colour of green"
  end
end
=end