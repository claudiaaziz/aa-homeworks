require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:dessert)

  describe "#initialize" do
    it "sets a type" do
      expect(@type).to eq(@type) 
    end
    it "sets a quantity" do
      expect(@quantity).to eq(@quantity)
    end
    it "starts ingredients as an empty array" do
      expect(@ingredients).to eq(nil)
    end
    it "raises an argument error when given a non-integer quantity" do
      expect{quantity.is_a?(Integer)}.to_not raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(add_ingredient("milk")).to eq('milk')
      expect(@ingredients.last).to eq('milk')
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(ingredients).to recieve(:shuffle)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity"

    it "raises an error if the amount is greater than the quantity"
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expect(serve).to eq(@chef.titleize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(@bake)
    end
  end
end