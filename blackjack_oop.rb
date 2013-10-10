require 'rubygems'
require 'pry' 

class Deck
  attr_accessor :cards

  def initialize 
    @cards = []
    ['H', 'D', 'S', 'C'].each do |suit|
      ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A'].each do |face_value|
        @cards << Card.new(suit, face_value)
      end
    end 
    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def deal_two
    2.times do
      cards.pop
    end
  end

  def size
    cards.size
  end 

end


class Card
  attr_accessor :suit, :face_value

  def initialize(s, fv)
    @suit = s
    @face_value = fv
  end

  def pretty_output
    puts "The #{face_value} of #{find_suit}"
  end

  def to_s
    pretty_output
  end

  def find_suit
    case suit
      when 'H' then 'Hearts'
      when 'D' then 'Diamonds'
      when 'S' then 'Spades'
      when 'C' then 'Clubs'
    end
  end
end

# hold players cards  
class Player
  attr_accessor :name, :cards
  include Calculate
  def initialize(n)
    @name = n
    puts "Welcome to the game #{name}"
    @player_cards = Hand.new
  end

end
# hold dealers cards
class Dealer 
  attr_accessor :cards
  include Calculate
  def initialize
    @dealer_cards = []
    @dealer_cards << Hand.new
  end

end 
# calculate the hand
class Hand 
  attr_accessor :cards

  def initialize
    @cards = []
    @cards << Deck.deal_two
  end 

  def hit
    Deck.deal_one
  end

  def stay
    puts "You chose to stay"
  end
end

module Calculate
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
end



deck = Deck.new
player1 = Player.new("Bill")

#puts deck.cards



