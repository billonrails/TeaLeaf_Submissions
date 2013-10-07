class Deck

  #attr_accessor :suit, :cards
  def initialize 
    @suit = ['hearts', 'diamonds', 'spades', 'clubs']
    @cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    @deck = @suit.product(@cards)
    #@deck.each { |x| puts x}
  end

  def shuffle
   @deck = @deck.shuffle!
  end 
end


class Cards
  def initialize
    @player_cards = []
    @dealer_cards = []
  end

  def first_hand
    @player_cards << @deck.pop
    @dealer_cards << @deck.pop
    @player_cards << @deck.pop
    @dealer_cards << @deck.pop
  end 

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

class Player
  def initialize 
    @name = name
  end
end

class Dealer

end 

class Blackjack

end 


