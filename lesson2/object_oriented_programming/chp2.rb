=begin
1. class MyCar
    attr_accessor :year, :color, :model

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

lamborghini = MyCar.new(2015, 'Lamborghini Diablo', 'green')
lamborghini.accelerate(50)
lamborghini.current_speed
lamborghini.accelerate(20)
lamborghini.current_speed
lamborghini.brake(10)
lamborghini.current_speed
lamborghini.accelerate(40)
lamborghini.current_speed
lamborghini.shut_off
lamborghini.current_speed

2. class MyCar
  attr_accessor :color, :model
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
  end
end

lamborghini = MyCar.new('2015', 'white', 'Lamborghini Diablo')
lamborghini.color = 'green'
puts lamborghini.color
puts lamborghini.year

3. class MyCar
  attr_accessor :color, :model
  attr_reader :year

  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
  end

  def spray_paint(c)
    self.color = c
  end

  def change_info(y, c, m)
    self.year = y
    self.color = c
    self.model = m
  end
end

lamborghini = MyCar.new('2015', 'white', 'Lamborghini Diablo')
lamborghini.color = 'green'
puts lamborghini.color
puts lamborghini.year
lamborghini.spray_paint('yellow')
puts lamborghini.color

=end