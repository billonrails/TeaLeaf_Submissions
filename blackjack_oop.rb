class Deck

  attr_accessor :suit, :cards

  def initialize(s, c)
    @suit = ['hearts', 'diamonds', 'spades', 'clubs'
    @cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  end
  # combines the suit and cards to make a full deck in one array
  def create_deck(:suit, :cards)
    @deck = suit.product(cards)
  end

  def shuffle(@deck)
    @deck.shuffle!
  end 
end

class Card

end 

class Player

end

class Dealer

end 

class Blackjack

end 



