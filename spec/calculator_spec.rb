require_relative 'spec_helper'
require_relative '../calculator'


describe Calculator do
  let(:calculator) {Calculator.new(3)}
  describe ".new" do
    it "Task 1" do
      expect(calculator.result).to equal(3)
    end
  end

  describe ".result" do
    it "Task 2" do
      calculator.reset(2)
      expect(calculator.result).to equal(2)
    end
  end

    describe ".add" do
      it "Task 3" do
        calculator.reset(0)
        calculator.add(2)
        expect(calculator.result).to equal(2)
      end
    end

    describe ".subtract" do
      it "Task 4" do
        calculator.reset(0)
        calculator.subtract(2)
        expect(calculator.result).to equal(-2)
      end
    end

    describe ".multiply" do
      it "Task 5" do
        calculator.multiply(2)
        expect(calculator.result).to equal(6)
      end
    end

    describe ".divide" do
      it "Task 6" do
        calculator.divide(3)
        expect(calculator.result).to equal(1)
      end
    end

    describe "chain" do
      it "Task 7" do
        calculator.reset(0)
        calculator.add(2).subtract(4).multiply(-1)
        expect(calculator.result).to equal(2)
      end
    end

    describe "operation" do
      it "Task 8" do
        calculator.reset(2)
        calculator.operation('multiply', 2)
        expect(calculator.result).to equal(4)
      end
    end

    describe "undo" do
      it "Task 9" do
        calculator.reset(0)
        calculator.add(2).subtract(4).multiply(-1).result
        calculator2 = Calculator.new(0)
        old_result = calculator2.add(2).subtract(4).result
        expect(calculator.undo(1)).to equal(old_result)
      end
    end


end


# describe Calculator do
# end
