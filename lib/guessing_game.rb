class GuessingGame

  def initialize
    @number_of_guesses = 1
  end

  def generate_random_number
    @random_number = rand(1..100)
  end

  def run
    generate_random_number
    puts "Guess a number between 1 and 100"
    guess = gets.chomp

    while @number_of_guesses != "you win"
      compare_to_random_number(guess.to_i)
      guess = gets.chomp
    end
  end

  def compare_to_random_number(guess)
    if guess > @random_number
      puts "The number is lower than #{guess}. Guess again"
      @number_of_guesses += 1
    elsif guess < @random_number
      puts "The number is higher than #{guess}. Guess again"
      @number_of_guesses += 1
    else
      puts "You got it in #{@number_of_guesses} tries"
      @number_of_guesses = "you win"
    end
  end

end

GuessingGame.new.run
