def calculate_total(cards)
  arr = cards.map{|e| e[1]}
  total = 0
  arr.each do |value|
    if value == "A"
    total += 11
    elsif value.to_i == 0 # J, Q, K
    total += 10
    else
    total += value.to_i
    end
  end

# correct for Aces
  arr.select{|e| e == "A"}.count.times do
    total -= 10 if total > 21
  end
  total
end

def display_hand(hand, owner)
  puts "#{owner} hand:"
  hand.each { |card| puts "=> #{card}" }
end

puts "What is your name?"
name = gets.chomp
puts "Hi #{name}, welcome to Major Blackjack!"

suit = ["H", "D", "S", "C"]
cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]
deck = suit.product(cards)
deck.shuffle!

# Deal cards
player_hand = []
dealer_hand = []

2.times do 
  player_hand << deck.pop
  dealer_hand << deck.pop
end

# Calculate total
dealer_total = calculate_total(dealer_hand)
player_total = calculate_total(player_hand)

# Show cards
puts "Dealer has #{dealer_hand[0]} showing"
puts "Player has #{player_hand[0]} and #{player_hand[1]} for a total of #{player_total}"
puts ""

# Check for Blackjack
if player_total == 21 && dealer_total != 21
	puts "Congratulations, Player has Blackjack!"
  exit
end

if player_total == 21 && dealer_total == 21
  puts "Player has Blackjack and Dealer has Blackjack. It's a push!"
  exit
end

if dealer_total == 21
  puts "Sorry, Dealer has Blackjack. Dealer wins!"
  exit
end

# Player turn
while player_total <= 21
  puts "What would you like to do? H) hit S) stand"
  choice = gets.chomp.downcase
  new_card = deck.pop
  unless ['h', 's'].include?(choice)
    puts "Error, you must choose H or S"
    next
  end

  if choice == "h" # Hit
    player_hand << new_card
    player_total = calculate_total(player_hand)
  end

  if choice == "s" # Stay
    puts "You chose to stay"
    break
  end
  puts "Player has: #{player_hand} for a total of #{player_total}"
  puts "Dealer has: #{dealer_hand[0]} showing"
end

if player_total > 21
  puts "Player busted. Dealer Wins!"
  exit
end

# Dealer turn
puts "Dealer has: #{dealer_hand} for a total of #{dealer_total}"
if dealer_total == 21
  puts "Sorry, Dealer has Blackjack."
end

while dealer_total < 17
  sleep(2)
  new_card = deck.pop
  dealer_hand << new_card
  dealer_total = calculate_total(dealer_hand)
  puts "Dealer has: #{dealer_hand} for a total of #{dealer_total}"
  sleep(2)
end

if dealer_total > 21
  puts "Dealer busted. You win!"
  exit
end

display_hand(dealer_hand, "Dealer")
display_hand(player_hand, "Player")

if player_total > dealer_total
  puts "Player wins!"
elsif player_total < dealer_total
  puts "Dealer wins!"
else
  puts "It's a push!"
end
