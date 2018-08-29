require 'rspec'
require 'tdd.rb'

RSpec.describe Array do
  describe '#my_uniq' do
    let(:array) {[4,7,7,5,4]}
    it "removes duplicate elements" do
      expect(my_uniq(array)).to eq([4,7,5])
    end
    
    it "doesn't modify an array if there are no duplicates" do
      expect(my_uniq([1,2,3])).to eq([1,2,3])
    end
  end 
  
  describe "#two_sum" do
    let(:array) {[-1,0,2,-2,1]}
    it "returns pairs of indices where the elements sum to zero" do
      expect(two_sum(array)).to eq([[0,4], [2,3]])
    end
    
    it "does not return duplicate pairs" do
      expect(two_sum(array)).to eq(two_sum(array).uniq)
    end
  end
  
  describe "#my_transpose" do 
    let(:array) {[[0,1,2], [3,4,5], [6,7,8]]}
    let(:mini_matrix) {[[1,2], [3,4]]}
    it "transposes 3x3 matrices" do
      expect(my_transpose(array)).to eq([[0,3,6], [1,4,7], [2,5,8]])
    end 
    
    it "transposes 2x2 matrices" do
      expect(my_transpose(mini_matrix)).to eq([[1,3],[2,4]])
    end
  end 
  
  describe "#stock_picker" do
    let(:stocks) {[25, 24, 20, 25, 26, 28, 19]}
    let(:stocks2) {[1,5,10,25,50,10,100]}
    it "outputs most profitable pair of days to buy/sell" do
      expect(stock_picker(stocks2)).to eq([0,6])
    end 
    
    it "doesn't try to sell before buying" do
      expect(stock_picker(stocks)).to eq([2,5])
    end 
  end
  

end