require 'card.rb'
require 'poker.rb'
require 'rspec'

RSpec.describe Card do 
  subject(:card) {Card.new('spade', 1)}
  describe "#initialize" do
    it "initializes a card with a value" do
      expect(card.value).to eq(1)
    end
    
    it "initializes with a suit" do
      expect(card.suit).to eq('spade')
    end 
  end
end