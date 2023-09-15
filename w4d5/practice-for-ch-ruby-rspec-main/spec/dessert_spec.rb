require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  let(:cookie) { Dessert.new("cookie", 50, chef) }

  describe "#initialize" do
    it "sets a type" do
      expect(cookie.type).to eq("cookie")
    end

    it "sets a quantity" do 
      expect(cookie.quantity).to eq(50)
    end

    it "starts ingredients as an empty array" do
      expect(cookie.ingredients).to eq([])
    end

    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("cookie", "a lot", chef) } .to raise_error (ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cookie.add_ingredient("eggs")
      expect(cookie.ingredients).to include("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(cookie.mix!)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cookie.eat(10)
      expect(cookie.quantity).to eq(40)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect(cookie.eat(60)).to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name"
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in"
  end
end