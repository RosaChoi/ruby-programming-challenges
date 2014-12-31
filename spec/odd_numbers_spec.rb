require 'spec_helper'
require 'odd_numbers'

describe OddNumbers do

  describe 'initialization' do
    it "takes max number as a parameter" do
      printer = OddNumbers.new(25)

      expect(printer.max_number).to be == 25
    end
  end

  describe 'print_odds' do
    it "prints odd numbers between 1 through max number" do
      printer = OddNumbers.new(77)
      printer.print_odds

      expect(printer.print_odds.length).to be == 39
    end
  end

end
