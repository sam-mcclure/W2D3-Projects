class Hand
  def initialize
    @hand = []
    
  end
  
  def current_hand
    hand_hash = Hash.new {|h, k| h[k] = []}
    @hand.each do |card|
      hand_hash[card.suit] += [card.value]
    end
    hand_hash
  end
  
  
  def straight_flush?
    
  end
  
  def four_of_a_kind?
  end

  def full_house?
  end
  
  def flush?
  end
  
  def straight?
  end
  
  def three_of_a_kind?
  end
  
  def two_pair?
  end
  
  def one_pair?
  end
  
  
end