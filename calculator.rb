class Calculator
  attr_reader :count, :old_count

	def initialize(num)
		@count = num
    @old_count = []
	end

  def add(num)
    # @add = add
    @count += num
    @old_count.push(@count)
    self
  end

  def subtract(num)
    # @substract = substract
    @count -= num
    @old_count.push(@count)
    self
  end

  def multiply(num)
    # @multiply = multiply
    @count *= num
    @old_count.push(@count)
    self
  end

  def divide(num)
    # @divide = divide
    @count /= num
    @old_count.push(@count)
    self
  end

  def operation(type, number_2)
    case type
    when "add"
      add(number_2)
    when "subtract"
      subtract(number_2)
    when "multiply"
      multiply(number_2)
    when "divide"
      divide(number_2)
    end
  end

  def undo(num)
    if num < @old_count.length
      @count = @old_count[@old_count.length-num-1]
    else
      puts "Please input a valid undo step"
    end
  end

  def redo
    @count = @old_count[@old_count.length-1]
  end

  def result
    @count
  end

  def reset(x)
    @count = x
    @old_count = []
  end

end

# my_calculator = Calculator.new(187)
