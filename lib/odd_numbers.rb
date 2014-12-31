# (1..1337).select(&:odd?)

# (1..1337).select do |number|
#   number % 2 != 0
# end

class OddNumbers

  def initialize(max_number)
    @max_number = max_number
  end

  def print_odds

    range = (1..@max_number)
    range.select(&:odd?)

  end

end

results = OddNumbers.new(300)
odds = results.print_odds

p odds
