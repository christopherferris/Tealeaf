class Hand
  include Comparable
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def rock?
    value == 'r'
  end

  def paper?
    value == 'p'
  end

  def scissors?
    value == 's'
  end

  def <=>(another_hand)
    if value == another_hand.value
      0
    elsif rock? && another_hand.scissors? || 
          paper? && another_hand.rock?    ||
          scissors? && another_hand.paper?
      1
    else
      -1
    end
  end

  def display_winning_message
    case value
    when 'r' then puts "Rock smashes Scissors"
    when 'p' then puts "Paper wraps Rock"
    when 's' then puts "Scissors cuts Paper"
    end
  end  
end

class Player
  attr_accessor :hand, :name

  def initialize(name)
    @name = name
  end
end

class Human < Player

  def pick_hand
    begin
      puts "Pick one: R, P, or S"
      pick = gets.chomp.downcase
    end until Game::CHOICES.keys.include?(pick)
    self.hand = Hand.new(pick)
  end
end

class Computer < Player

  def pick_hand
    self.hand = Hand.new(Game::CHOICES.keys.sample)
  end
end

class Game
  attr_accessor :player, :computer, :answer
  CHOICES = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
  
  def initialize
    @player = Human.new("Bob")
    @computer = Computer.new("R2D2")
  end

  def play
    ask_name
    loop do
      player.pick_hand
      computer.pick_hand
      compare_hands
      play_again
      break if answer == 'n'
    end
  end

  def ask_name
    puts "What is your name?"
    player.name = gets.chomp
  end

  def compare_hands
    if player.hand == computer.hand
      puts "It's a tie!"
    elsif player.hand > computer.hand
      player.hand.display_winning_message
      puts "#{player.name} won!"
    else
      computer.hand.display_winning_message
      puts "#{computer.name} won!"
    end
  end

  def play_again
    puts "Would you like to play again?"
    self.answer = gets.chomp
  end
end

game = Game.new.play