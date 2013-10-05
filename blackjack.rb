def calculate_total(cards)
  #['H', '3'], ['J', 'Q']
  arr = cards.map { |e| e[1] }
  total = 0
  arr.each do |value|
    if value == "A"
      total += 11
    elsif value.to_i == 0
      total = total + 10
    else 
      total += value.to_i
    end
  end

  #correct for Aces
  arr.select {|e| e == "A"}.count.times do
      total -= 10 if total > 21
  end

  total #last value implicitly returned in the method
end

puts "Welcome to Blackjack"

suit = ['hearts', 'diamonds', 'spades', 'clubs']
cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
#combines the suit and cards to make a full deck in one array
deck = suit.product(cards)
#shuffle deck of cards creating a new array
deck = deck.shuffle!

# Deal Cards
player_cards = []
dealer_cards = []

player_cards << deck.pop
dealer_cards << deck.pop
player_cards << deck.pop
dealer_cards << deck.pop

dealer_total = calculate_total(dealer_cards)
player_total = calculate_total(player_cards)

puts "Dealer has: #{dealer_cards[0]} and #{dealer_cards[1]} for a total of #{dealer_total} "
puts "Player has: #{player_cards[0]} and #{player_cards[1]} for a total of #{player_total}"
puts ""

# Player Turn
if  player_total == 21
  puts "Congratulations you Won!"
  exit
end
while player_total < 21
  puts "What would you like to do? 1)hit 2)stay"
  hit_or_stay = gets.chomp

  if !['1', '2'].include?(hit_or_stay)
    puts "Error: you must enter 1 or 2"
    next
  end

  if hit_or_stay == "2"
    puts "You chose to stay"
    break
  end

  new_card = deck.pop
  puts "Dealing card to player: #{new_card}"
  player_cards << new_card
  player_total = calculate_total(player_cards)
  puts "Your total is now #{player_total}"

  if  player_total == 21
  puts "Congratulations you Won!"
  exit
  elsif player_total > 21
    puts "Sorry looks like you busted :("
    exit 
  end
end

if dealer_total == 21
  puts " Sorry, dealer hit Blackjack, you lose"
  exit
end

while dealer_total < 17
  #hit
  new_card = deck.pop
  puts "Dealing new card to dealer: #{new_card}"
  dealer_cards << new_card
  dealer_total = calculate_total(dealer_cards)
  puts "The dealers total is now #{dealer_total}"

  if dealer_total == 21
    puts "Sorry Dealer hit Blackjack you lose"
    exit
  elsif dealer_total > 21
    puts "Congrats dealer busted and you win!"
    exit
  end
end

puts "Dealer cards: "
  dealer_cards.each {|card| puts "=> #{card}"}

puts "Your cards: "
  player_cards.each {|card| puts "=> #{card}"}
puts""
if dealer_total > player_total
  puts "Dealer Wins"
elsif player_total > dealer_total
  puts "You Win"
else
  puts You Tied
end






	


