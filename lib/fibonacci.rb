class Fibonacci

  def initialize(number)
    @number = number
  end

  def fib_numbers
    start = 0
    numbers = [0, 1]

    while numbers.length < @number
      next_number = numbers[-1] + numbers[-2]
      numbers << next_number
    end
    numbers
  end

end

p Fibonacci.new(100).fib_numbers
