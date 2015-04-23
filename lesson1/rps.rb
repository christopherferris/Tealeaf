# 1. all players pick either Paper, Rock or Scissors
# 2. compare: paper > rock, rock > scissors, scissors > paper, or tie if the same
# 3. play again?

GAME = {'p' => 'Paper', 'r' => 'Rock', 's' => 'Scissors'}
player_score = 0
computer_score = 0

def winning_message(winning_choice)
    case winning_choice
    when 'r' then puts "Rock smashes Scissors"
    when 'p' then puts "Paper wraps Rock"
    when 's' then puts "Scissors cuts Paper"
    end
  end

  def tie_message(tie_choice)
    case tie_choice
    when 'r' then puts "Rock vs. Rock"
    when 'p' then puts "Paper vs. Paper"
    when 's' then puts "Scissors vs. Scissors"
    end
  end

loop do
  puts "Ready to play Rock Paper Scissors?"
  begin
    puts "Pick one: R, P, or S"
    player_choice = gets.chomp.downcase
  end until GAME.keys.include?(player_choice)

  computer_choice = GAME.keys.sample

  if player_choice == 'p' && computer_choice == 'r' || player_choice == 'r' && computer_choice == 's' || 
    player_choice == 's' && computer_choice == 'p'
    winning_message(player_choice)
    puts "You win!"
    player_score += 1
  elsif player_choice == computer_choice
    tie_message(player_choice)
    puts "A tie!"
  else
    winning_message(computer_choice)
    puts "Computer wins!"
    computer_score += 1
  end
  puts "Score:"
  puts "Player: #{player_score} Computer: #{computer_score}"
  puts "Do you want to play again? (Y / N)"
  play_again = gets.chomp.downcase
  break unless play_again == 'y'
end