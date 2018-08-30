require 'rspec'
require 'deck.rb'
require 'card.rb'

RSpec.describe Deck do
  let(:deck) { Deck.shuffled }
  describe "#initialize" do
    it "contains 52 cards" do
      expect(deck.cards.length).to eq(52)
    end
    
    it "contains instances of card" do 
      expect(deck.cards.all? do |card|
        card.is_a?(Card)
      end).to be(true)
    end
    
    it "shuffles deck" do
      expect(deck.cards[0].value).not_to eq(1)
      expect(deck.cards[0].suit).not_to eq("spade")
    end  
  end
  
  describe "#deal" do
    it "removes cards from deck" do
      expect{ deck.deal(5) }.to change{ deck.cards.length }.by(-5)
    end
    
    it "returns dealt cards" do
      expect(deck.deal(5).length).to eq(5)
    end
  end
  
  
  
end 