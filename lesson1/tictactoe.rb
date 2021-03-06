# 1. Come up with requirements/specifications, which will determine the scope.
# 2. Application logic; sequence of steps
# 3. Translation of those steps into code
# 4. Run code to verify logic.
#
# draw a board
#
# assign player to "X"
# assign computer to "O"
#
# loop until a winner or all squares are taken
#   player picks an empty square
#   check for a winner
#   computer picks an empty square
#   check for a winner
# if there's a winner,
#   show the winner
# or else
#   it's a tie

def initialize_board
  b = {}
  (1..9).each {|position| b[position] = ' '}
  b
end

def draw_board(b)
  system 'clear'
  puts " #{b[1]} | #{b[2]} | #{b[3]}"
  puts "-----------"
  puts " #{b[4]} | #{b[5]} | #{b[6]}"
  puts "-----------"
  puts " #{b[7]} | #{b[8]} | #{b[9]}"
end

def empty_positions(b)
  b.select {|_,v| v == ' '}.keys
end

def player_picks_square(b)
  begin
    puts "Pick a square (1-9)"
    puts "Pick: #{empty_positions(b)}"
    position = gets.chomp.to_i
  if b[position] == ' '
    b[position] = 'X'
    authenticate = true
  end
  end until authenticate
end

def computer_picks_square(b)
  position = empty_positions(b).sample
  b[position] = 'O'
end

def check_winner(b)
  if b[1] == 'X' && b[2] == 'X' && b[3] == 'X' || b[4] == 'X' && b[5] == 'X' && b[6] == 'X' ||
     b[7] == 'X' && b[8] == 'X' && b[9] == 'X' || b[1] == 'X' && b[4] == 'X' && b[7] == 'X' ||
     b[2] == 'X' && b[5] == 'X' && b[8] == 'X' || b[3] == 'X' && b[6] == 'X' && b[9] == 'X' ||
     b[1] == 'X' && b[5] == 'X' && b[9] == 'X' || b[3] == 'X' && b[5] == 'X' && b[7] == 'X'
    return 'Player'
  elsif b[1] == 'O' && b[2] == 'O' && b[3] == 'O' || b[4] == 'O' && b[5] == 'O' && b[6] == 'O' ||
        b[7] == 'O' && b[8] == 'O' && b[9] == 'O' || b[1] == 'O' && b[4] == 'O' && b[7] == 'O' ||
        b[2] == 'O' && b[5] == 'O' && b[8] == 'O' || b[3] == 'O' && b[6] == 'O' && b[9] == 'O' ||
        b[1] == 'O' && b[5] == 'O' && b[9] == 'O' || b[3] == 'O' && b[5] == 'O' && b[7] == 'O'
    return 'Computer'
  else return nil
  end
end

board = initialize_board
draw_board(board)

begin
  player_picks_square(board)
  if check_winner(board) != 'Player'
  computer_picks_square(board)
  end
  draw_board(board)
  winner = check_winner(board)
end until winner || empty_positions(board).empty?

if winner
  puts "#{winner} won!"
else
  puts "It's a tie!"
end
