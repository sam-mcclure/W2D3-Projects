require 'card.rb'
require 'byebug'

class Deck
  attr_reader :cards
  
  def initialize
    @cards = make_deck
  end
  
  def self.shuffled
    Deck.new.shuffle
  end
  
  def shuffle 
    @cards = @cards.shuffle 
    self
  end
  
  def deal(num)
    dealt_cards = @cards.take(num)
    @cards = @cards.drop(num)
    dealt_cards
  end 
  
  private
  
  SUITS = %i(spade club heart diamond)
  VALUES = (1..13).to_a
  
  def make_deck
    result = []
    
    SUITS.each do |suit|
      VALUES.each do |value|
        result << Card.new(suit, value)
      end
    end
    
    result
  end  
  


  
end